{
  Common functions
}
unit functions;

interface

uses Windows, Classes, SysUtils, ShellApi, IniFiles, Forms, Controls, DwmApi;

type
  TExeInfo = record
    CompanyName,
    FileDescription,
    FileVersion,
    InternalName,
    LegalCopyright,
    LegalTrademarks,
    OriginalFileName,
    ProductName,
    ProductVersion,
    Comments,
    PrivateBuild,
    SpecialBuild: String;
  end;
  PLocalePage = ^TLocalePage;
  TLocalePage = record
    fLanguage,
    fCodePage: Word;
  end;

function GetOSLanguage: string;
function SubStr(str: string; index: integer; delimiter:char='|'):string;
function GetSystemDirectoryDir: string;
function SearchDuplicatedDomainInHosts(dominio:string):boolean;
function RunAsAdmin(hWnd: HWND; filename: string; Parameters: string): Boolean;
function GetWindowsDir: string;
function GetComputerNetName: string;
function GetUserFromWindows: string;
function GetDomain(projectRoot:string):string;
function GetBootPath(projectRoot: String): String;
function AFileSize(const aFilename: String): Int64;
function ShowModalDimmed(Form, ParentForm: TForm): TModalResult;
function GetExeInfo(const fName: String):TExeInfo;
function Is64BitOS: Boolean;
function isWindows11:Boolean;
procedure EnableNCShadow(Wnd: HWND);

implementation

function RtlGetVersion(var RTL_OSVERSIONINFOEXW): LONG; stdcall;
  external 'ntdll.dll' Name 'RtlGetVersion';

resourcestring
R_Unknown = 'Desconocido';

function GetOSLanguage: string;
var
  Buffer : PChar;
  Size : integer;
begin
  Size := GetLocaleInfo (LOCALE_USER_DEFAULT, LOCALE_SENGLANGUAGE, nil, 0);
  GetMem(Buffer, Size);
  try
    GetLocaleInfo (LOCALE_USER_DEFAULT, LOCALE_SENGLANGUAGE, Buffer, Size);
    Result:= Buffer;
  finally
    FreeMem(Buffer);
  end;
end;

//function by vhanla
function SubStr(str: string; index: integer; delimiter:char='|'):string;
var
  I: integer;
  strings: TStringList;
  buf:string;
begin
  strings:=TStringList.Create;
  try
    buf:='';
    for I := 1 to length(str) do
    begin
      if (str[I] = delimiter) then
      begin
        if (buf<>'') then
          strings.Add(buf);
        buf:='';
      end
      else
        buf:=buf+str[I];
    end;
    if (buf<>'') then
      strings.Add(buf);
    //finally we return the indexed string
    if (index>0) and (strings.Count >= index) then
    result:=strings[index-1]
    else if index=-1 then //the last one
    result:=strings[strings.Count-1]
    else result:='';

  finally
    strings.Free;
  end;


end;


function GetSystemDirectoryDir: string;
const
  (* The length of the directory buffer. Usually 64 or even 16 is enough
  **
  ** Must be DWORD type.
  *)
  dwLength: DWORD = 255;
  var
  pcWinDir: PChar;
  begin
  GetMem(pcWinDir, dwLength);
  GetSystemDirectory(pcWinDir, dwLength);
  Result := string(pcWinDir);
  FreeMem(pcWinDir, dwLength);
end;


//**
//* Searchs for duplicated servernames inside
function SearchDuplicatedDomainInHosts(dominio:string):boolean;
var
  //i,z : integer;
  f: TextFile;
  t: string;
  hostPath: string;
  //Data: array of string;
begin
  Result:= false;
//let's find hosts file
  hostPath:=GetSystemDirectoryDir+'\Drivers\etc\hosts';
  if FileExists(hostPath) then
  begin
    AssignFile(f,hostPath);
    Reset(f);
   // z:=0;
//    SetLength(Data,0);
    repeat
//      Inc(z);
      Readln(f,t);
      //convert tabs to spaces
      t:=StringReplace(t,#9,' ',[rfReplaceAll]);
      t:=StringReplace(t,#13,' ',[rfReplaceAll]); //get rid of enter
      t:=StringReplace(t,#10,' ',[rfReplaceAll]); //get rid of return carriage
      t:=Trim(t); //let's drop unneeded spaces
      //let's drop comments
      if Pos('#',t)>0 then
        t:=Copy(t,0,Pos('#',t)-1);

      //get rid of ips
      if Pos(' ',t)>0 then
        t:=Copy(t,Pos(' ',t),StrLen(pchar(t))-Pos(' ',t)+1);

      if(Trim(t)<>'')then //avoid empty lines
      begin
        //ShowMessage(inttostr(strlen(pchar(LowerCase(t))))+' = '+inttostr(strlen(pchar(LowerCase(Trim(dominio))))));
        if LowerCase(trim(dominio)) = LowerCase(trim(t)) then
        begin
          Result:=True; //dominio encontrado
        end;
      end;
    until EOF(f);
    CloseFile(f);
  end;
end;

function RunAsAdmin(hWnd: HWND; filename: string; Parameters: string): Boolean;
{
    See Step 3: Redesign for UAC Compatibility (UAC)
    http://msdn.microsoft.com/en-us/library/bb756922.aspx
}
var
    sei: TShellExecuteInfo;
begin
    ZeroMemory(@sei, SizeOf(sei));
    sei.cbSize := SizeOf(TShellExecuteInfo);
    sei.Wnd := hwnd;
    sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
    sei.lpVerb := PChar('runas');
    sei.lpFile := PChar(Filename); // PAnsiChar;
    if parameters <> '' then
        sei.lpParameters := PChar(parameters); // PAnsiChar;
    sei.nShow := SW_SHOW;//SW_SHOWNORMAL; //Integer;

    Result := ShellExecuteEx(@sei);
end;

function GetWindowsDir: string;
const
  (* The length of the directory buffer. Usually 64 or even 16 is enough
  **
  ** Must be DWORD type.
  *)
  dwLength: DWORD = 255;
  var
  pcWinDir: PChar;
  begin
  GetMem(pcWinDir, dwLength);
  GetWindowsDirectory(pcWinDir, dwLength);
  Result := string(pcWinDir);
  FreeMem(pcWinDir, dwLength);
end;

function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

Function GetUserFromWindows: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := R_Unknown;
End;

function GetDomain(projectRoot:string):string;
var
  ini:tinifile;
begin
  if FileExists(projectRoot+'\vhost.ini') then
  begin
    ini:=TIniFile.Create(projectRoot+'\vhost.ini');
    try
      result:=ini.ReadString('Virtual Host','domain','localhost');
    finally
      ini.Free;
    end;
  end
  else result:='localhost';
end;

function GetBootPath(projectRoot: String): String;
var
  ini : TIniFile;
begin
  if FileExists(projectRoot + '\vhost.ini') then
  begin
    ini := TIniFile.Create(projectRoot + '\vhost.ini');
    try
      Result := StringReplace(ini.ReadString('Virtual Host','path',''), '/','\',[rfReplaceAll]);
    finally
      ini.Free;
    end;
  end
  else Result := '';
end;

function AFileSize(const aFilename: String): Int64;
  var
    info: TWin32FileAttributeData;
  begin
    result := -1;

    if NOT GetFileAttributesEx(PWideChar(aFileName), GetFileExInfoStandard, @info) then
      EXIT;

    result := Int64(info.nFileSizeLow) or Int64(info.nFileSizeHigh shl 32);
  end;

function ShowModalDimmed(Form, ParentForm: TForm): TModalResult;
var
  Back: TForm;
  i: Byte;
begin
  Back := TForm.Create(nil);
  try
    Back.Position := ParentForm.Position;
    Back.BorderStyle := bsnone;//ParentForm.BorderStyle;
    Back.BorderIcons := [];
    Back.AlphaBlend := true;
    Back.AlphaBlendValue := 0;
    Back.Color := $000000; //clBlack;
    //with ParentForm do Back.SetBounds(Left, Top, Width, Height);
    Back.Width := ParentForm.ClientRect.Width;
    //Back.Height := ParentForm.ClientRect.Height;
    Back.Height := ParentForm.Height-(ParentForm.Height - ParentForm.ClientRect.Height)div 2;
    //Back.Top := ParentForm.Top + (ParentForm.Height - ParentForm.ClientRect.Height)div 2;
    Back.Top := ParentForm.Top;
    Back.Left := ParentForm.Left + (ParentForm.Width - ParentForm.ClientRect.Width)div 2;
    Back.Show;
    Back.Canvas.Brush.Color:= $000000; //clBlack;
    Back.Canvas.FillRect(rect(0,0,ParentForm.Width,ParentForm.Height));
    for i := 1 to 10 do
    begin
      Back.AlphaBlendValue := i*10;
      Sleep(2)
    end;
    Form.Left := ParentForm.left + ((ParentForm.Width - Form.Width) div 2);
    Form.Top := ParentForm.Top + ((ParentForm.Height - Form.height) div 2);
    Result := Form.ShowModal
  finally
    Back.Free;
    ParentForm.BringToFront
  end
end;

function GetExeInfo(const fName: String): TExeInfo;
var
  fHandle, fSize: Cardinal;
  infoBuf, pathPointer: Pointer;
  LocalePath: String;
begin
  fSize := GetFileVersionInfoSize(PChar(fName),fHandle);
  if fSize > 0 then
  begin
    GetMem(infoBuf, fSize);
    try
      if not GetFileVersionInfo(PChar(fName), 0, fSize, infoBuf) then
        RaiseLastOSError;

      if not VerQueryValue(infoBuf, '\VarFileInfo\Translation\', pathPointer, fSize) then
        RaiseLastOSError;

      LocalePath := Format('\StringFileInfo\%.4x%.4x\', [PLocalePage(pathPointer)^.fLanguage, PLocalePage(pathPointer)^.fCodePage]);

      if VerQueryValue(infoBuf, PChar(LocalePath + 'CompanyName'), pathPointer, fSize) then
        Result.CompanyName := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'FileDescription'), pathPointer, fSize) then
        Result.FileDescription := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'FileVersion'), pathPointer, fSize) then
        Result.FileVersion := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'InternalName'), pathPointer, fSize) then
        Result.InternalName := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'LegalCopyright'), pathPointer, fSize) then
        Result.LegalCopyright := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'LegalTrademarks'), pathPointer, fSize) then
        Result.LegalTrademarks := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'OriginalFileName'), pathPointer, fSize) then
        Result.OriginalFileName := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'ProductName'), pathPointer, fSize) then
        Result.ProductName := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'ProductVersion'), pathPointer, fSize) then
        Result.ProductVersion := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'Comments'), pathPointer, fSize) then
        Result.Comments := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'PrivateBuild'), pathPointer, fSize) then
        Result.PrivateBuild := PChar(pathPointer);
      if VerQueryValue(infoBuf, PChar(LocalePath + 'SpecialBuild'), pathPointer, fSize) then
        Result.SpecialBuild := PChar(pathPointer);

    finally
      FreeMem(infoBuf);
    end;
  end;

end;

function Is64BitOS: Boolean;
type
  TIsWow64Process = function(Handle:THandle; var IsWow64 : BOOL) : BOOL; stdcall;
var
  hKernel32 : Integer;
  IsWow64Process : TIsWow64Process;
  IsWow64 : BOOL;
begin
  // we can check if the operating system is 64-bit by checking whether
  // we are running under Wow64 (we are 32-bit code). We must check if this
  // function is implemented before we call it, because some older versions
  // of kernel32.dll (eg. Windows 2000) don't know about it.
  // see http://msdn.microsoft.com/en-us/library/ms684139%28VS.85%29.aspx
  Result := False;
  hKernel32 := LoadLibrary('kernel32.dll');
  if (hKernel32 = 0) then RaiseLastOSError;
  @IsWow64Process := GetProcAddress(hkernel32, 'IsWow64Process');
  if Assigned(IsWow64Process) then begin
    IsWow64 := False;
    if (IsWow64Process(GetCurrentProcess, IsWow64)) then begin
      Result := IsWow64;
    end
    else RaiseLastOSError;
  end;
  FreeLibrary(hKernel32);
end;

function isWindows11:Boolean;
var
  winver: RTL_OSVERSIONINFOEXW;
begin
  Result := False;
  if ((RtlGetVersion(winver) = 0) and (winver.dwMajorVersion>=10) and (winver.dwBuildNumber > 22000))  then
    Result := True;
end;

procedure EnableNCShadow(Wnd: HWND);
const
  DWMWCP_DEFAULT    = 0; // Let the system decide whether or not to round window corners
  DWMWCP_DONOTROUND = 1; // Never round window corners
  DWMWCP_ROUND      = 2; // Round the corners if appropriate
  DWMWCP_ROUNDSMALL = 3; // Round the corners if appropriate, with a small radius
  DWMWA_WINDOW_CORNER_PREFERENCE = 33; // [set] WINDOW_CORNER_PREFERENCE, Controls the policy that rounds top-level window corners
begin

  if isWindows11  then
  begin
    var DWM_WINDOW_CORNER_PREFERENCE: Cardinal;
    DWM_WINDOW_CORNER_PREFERENCE := DWMWCP_ROUNDSMALL;
     DwmSetWindowAttribute(Wnd, DWMWA_WINDOW_CORNER_PREFERENCE, @DWM_WINDOW_CORNER_PREFERENCE, sizeof(DWM_WINDOW_CORNER_PREFERENCE));
  end;
end;

end.
