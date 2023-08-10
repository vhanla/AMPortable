unit DirectoryMonitor;

interface
Uses
  SysUtils, Windows, Messages, Classes;
Const
  MAX_BUFFER          =  4096;
  FILE_LIST_DIRECTORY = $0001; // directory
  CM_DIRECTORY_EVENT = WM_USER + 1024;

Type

 // The FILE_NOTIFY_INFORMATION Structure as described at :
 //http://msdn.microsoft.com/library/default.asp?url=/library/en-us/fileio/base/file_notify_information_str.asp
 TFileNotifyInformation = Record
                            NextEntryOffset : DWORD;
                            Action : DWORD;
                            FileNameLength : DWORD;
                            FileName : Array[0..MAX_PATH] Of WCHAR;
                          End;

 PFileNotifyInformation = ^TFileNotifyInformation;

Type

  TActionToWatch = (awChangeFileName,awChangeDirName,awChangeAttributes,awChangeSize,
                    awChangeLastWrite,awChangeLastAccess,awChangeCreation,awChangeSecurity);

  TActionsToWatch = Set Of TActionToWatch;

  TDirectoryAction = (daFileAdded, daFileRemoved,daFileModified,daFileRenamedOldName,daFileRenamedNewName);

  TDirectoryChange = Procedure(Sender : TObject;
                               Action : TDirectoryAction;
                               FileName : String) Of Object;

  TWorkerThread = Class(TThread)
  private
    { Private declarations }
    FPathToWatch: String;
    FCompletionPort : THandle;
    FDirHandle : THandle;
    FBuffer : Pointer;
    FBufferLength : DWORD;
    FOverlapped : OVERLAPPED;
    FActionsToWatch : TActionsToWatch;
    FNotifyMask : DWORD;
    FParentWindow : THandle;
    FWatchSubFolders : Boolean;
    Procedure MakeOutput(FileInfo : PFileNotifyInformation);
    Function GetNotifyMask : DWORD;
  protected
    procedure Execute; override;
  Public
    constructor Create(const PathToWatch: String; ActionsToWatch : TActionsToWatch; ParentWindow : THandle; WatchSubFolders : Boolean);
    destructor Destroy; override;
    Property CompletionPort : THandle Read FCompletionPort;
  end;

  TDirectoryMonitor = Class(TObject)
  Private
    FDirectoryToWatch : String;
    FWorkerThread : TWorkerThread;
    FOnDirectoryChange : TDirectoryChange;
    FWindowHandle : THandle;
    FActionsToMonitor : TActionsToWatch;
    FWatchSubFolders : Boolean;
    Procedure InternalWinProc(var Msg : TMessage);
    Procedure SetDirToWatch(Value : String);
  Public
     Procedure Start;
     Procedure Stop;
     Constructor Create;
     Destructor Destroy; override;
     Property WorkerThread : TWorkerThread read FWorkerThread;
     Property DirectoryToWatch : String Read FDirectoryToWatch Write SetDirToWatch;
  Published
     Property OnDirectoryChange : TDirectoryChange Read FOnDirectoryChange Write FOnDirectoryChange;
     Property Options : TActionsToWatch Read FActionsToMonitor Write FActionsToMonitor;
     Property WatchSubFolders : Boolean Read FWatchSubFolders Write FWatchSubFolders Default True;
  End;

{$IFNDEF VER140}
function ReadDirectoryChangesW(hDirectory: THandle; lpBuffer: Pointer;
  nBufferLength: DWORD; bWatchSubtree: Bool; dwNotifyFilter: DWORD;
  lpBytesReturned: LPDWORD; lpOverlapped: POverlapped;
  lpCompletionRoutine: FARPROC): BOOL; stdcall;
{$ENDIF}

implementation
{$IFNDEF VER140}
function ReadDirectoryChangesW; external 'kernel32.dll' name 'ReadDirectoryChangesW';
{$ENDIF}

{ TWorkerThread }

constructor TWorkerThread.Create(const PathToWatch: String; ActionsToWatch: TActionsToWatch; ParentWindow: THandle; WatchSubFolders : Boolean);
begin
  Inherited Create(True);
  FWatchSubFolders := WatchSubFolders;
  FPathToWatch := PathToWatch;
  FActionsToWatch := ActionsToWatch;
  FParentWindow := ParentWindow;
  FNotifyMask := GetNotifyMask;
  FDirHandle := CreateFile(PChar(FPathToWatch),
                           FILE_LIST_DIRECTORY,  //Directory must be opened with this flag.
                           FILE_SHARE_READ Or FILE_SHARE_WRITE Or FILE_SHARE_DELETE,
                           Nil, OPEN_EXISTING,
                           FILE_FLAG_BACKUP_SEMANTICS Or FILE_FLAG_OVERLAPPED,
                           0);
  GetMem(FBuffer,MAX_BUFFER);
  FBufferLength := MAX_BUFFER;
  Resume;
end;

destructor TWorkerThread.Destroy;
begin
  CloseHandle(FDirHandle);
  FreeMem(FBuffer);
  inherited Destroy;
end;

procedure TWorkerThread.Execute;
Var
  numBytes : DWORD;
  lpOverlapped : POverlapped;
begin
  // Create a completion port.
  FCompletionPort := CreateIoCompletionPort(FDirHandle, FCompletionPort, DWORD(FBuffer), 0);
  ZeroMemory(FBuffer, MAX_BUFFER);
  lpOverlapped := @FOverlapped;
  If Not ReadDirectoryChangesW(FDirHandle,
                               FBuffer,
                               MAX_BUFFER,
                               FWatchSubFolders,
                               FNotifyMask,
                               @FBufferLength,
                               @FOverlapped,
                               Nil) Then
     Raise Exception.Createfmt('Error in ReadDirectoryChangesW. Message = %s',[SysErrorMessage(GetLastError)]);
  Repeat
   // Retrieve the directory info for this directory through the completion key
     GetQueuedCompletionStatus(THandle(FCompletionPort), numBytes, NativeUINT(FBuffer), lpOverlapped, INFINITE);
     If Assigned(FBuffer) Then
     Begin
       MakeOutput(PFileNotifyInformation(FBuffer));
       ZeroMemory(FBuffer, MAX_BUFFER);
       ReadDirectoryChangesW(FDirHandle,
                             FBuffer,
                             MAX_BUFFER,
                             FWatchSubFolders,
                             FNotifyMask,
                             @FBufferLength,
                             @FOverlapped,
                             Nil);
     End;
  Until (Terminated) Or (Not Assigned(FBuffer));
  PostQueuedCompletionStatus(FCompletionPort, 0, 0, Nil);
end;

function TWorkerThread.GetNotifyMask: DWORD;
const
   NotifyFilter : Array[TActionToWatch] Of DWORD = (FILE_NOTIFY_CHANGE_FILE_NAME,
                                                    FILE_NOTIFY_CHANGE_DIR_NAME,
                                                    FILE_NOTIFY_CHANGE_ATTRIBUTES,
                                                    FILE_NOTIFY_CHANGE_SIZE,
                                                    FILE_NOTIFY_CHANGE_LAST_WRITE,
                                                    FILE_NOTIFY_CHANGE_LAST_ACCESS,
                                                    FILE_NOTIFY_CHANGE_CREATION,
                                                    FILE_NOTIFY_CHANGE_SECURITY);

Var
  i : TActionToWatch;
begin
  Result := 0;
  For i := Low(TActionToWatch) To High(TActionToWatch) Do
   If i In FActionsToWatch Then
     Result := Result OR NotifyFilter[i];
end;

procedure TWorkerThread.MakeOutput(FileInfo: PFileNotifyInformation);
Var
  cbOffset : DWORD;
  P : String;
  i : DWORD;
  pc : PChar;
begin
  //Sleep(1000);
  Repeat
    cbOffset := FileInfo^.NextEntryOffset;
    P := '';
    i := 0;                                    //Unicode work around.  I know none of the chars is GT 255.
    While (i <= (FileInfo^.FileNameLength -1)) And ((Integer(FileInfo^.FileName[i]) < 255)) Do
    Begin
     P := P + FileInfo^.FileName[i];
     Inc(i);
    End;
    P := Trim(FPathToWatch) + Trim(P);
    pc := StrAlloc(Length(P));
    StrPCopy(pc,P);
    PostMessage(FParentWindow,CM_DIRECTORY_EVENT,FileInfo^.Action,Integer(pc));
    FileInfo := PFileNotifyInformation((DWORD(FileInfo) + cbOffset));
  Until (cbOffset = 0);
end;

{ TDirectoryMonitor }

constructor TDirectoryMonitor.Create;
begin
  Inherited Create;
  FWindowHandle := AllocateHWnd(InternalWinProc);
  FWatchSubFolders := True;
end;

destructor TDirectoryMonitor.Destroy;
begin
  Stop;
  DeallocateHWnd(FWindowHandle);
  inherited Destroy;
end;

procedure TDirectoryMonitor.InternalWinProc(var Msg: TMessage);
Const
  TranslateActions : Array[FILE_ACTION_ADDED..FILE_ACTION_RENAMED_NEW_NAME] Of TDirectoryAction =
               (daFileAdded, daFileRemoved,daFileModified,daFileRenamedOldName,daFileRenamedNewName);

begin
  If Msg.Msg = CM_DIRECTORY_EVENT Then
  Begin
    If Assigned(FOnDirectoryChange) then
      FOnDirectoryChange(Self,TranslateActions[Msg.wParam], String(Pchar(Msg.LParam)));
    StrDispose(PChar(Msg.LParam));
  End;
end;

procedure TDirectoryMonitor.SetDirToWatch(Value: String);
begin
  If (Length(Value) > 0) And (Value[Length(Value)] <> '\') Then
    FDirectoryToWatch := Value + '\'
  Else
    FDirectoryToWatch := Value;
end;

procedure TDirectoryMonitor.Start;
begin
  If FWorkerThread <> Nil Then
    Raise Exception.Create('There is already a directory being monitored.');
  If FDirectoryToWatch = '' Then
    Raise Exception.Create('You must set a directory to monitor.');
  FWorkerThread := TWorkerThread.Create(FDirectoryToWatch,FActionsToMonitor,FWindowHandle, FWatchSubFolders);
end;

procedure TDirectoryMonitor.Stop;
begin
  If FWorkerThread = Nil Then Exit;
  PostQueuedCompletionStatus(FWorkerThread.CompletionPort,0,0,Nil);
  FWorkerThread.Free;
  FWorkerThread := Nil;
end;

end.
