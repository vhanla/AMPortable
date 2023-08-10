{
  Unit that will keep details about the projects

  TODO: Features:
  - Project root path
  - External projects list (non portable)
  - Details about projects
    - Local domain name
    - Framework ID
    - Favicon
    - Editor (IDE) to open with

}
unit projects;

interface

uses
  functions, SysUtils, Classes;

type

  PProject = ^TProject;
  TProject = record
    dirname: String[255];
    domain: String[100];
    bootstrap: String[255];
    last: TDateTime;
    favicon: String[255];
    language: String[50];
    editor: String[255];
    browser: String[255];
  end;

  TProjects = class(TList)
  private
    //count: Integer;
    //fprojects: TList<PProject>;
    fpath: String;
    function Get(Index: Integer): PProject;
  public
    constructor Create;
    destructor Destroy; override;
    function Add(Value: PProject): Integer;
    procedure Clear;
    procedure RefreshList;
    property Path: String read fpath write fpath;
    property Items[Index: Integer]: PProject read Get; default;
  end;

implementation

{ TProjects }

function TProjects.Add(Value: PProject): Integer;
begin
  Result := inherited Add(Value);
end;

procedure TProjects.Clear;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    FreeMem(Items[I]);

  inherited Clear;
end;

constructor TProjects.Create;
begin
  //fprojects := TList<PProject>.Create();
end;

destructor TProjects.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    FreeMem(Items[I]);

  inherited;
end;

function TProjects.Get(Index: Integer): PProject;
begin
  Result := PProject(inherited Get(Index));
end;

procedure TProjects.RefreshList;
var
  lSearchRec: TSearchRec;
  lFind: integer;
  dirName : string;
  lProject: PProject;
begin
  if DirectoryExists(fPath) then
  begin
    lFind := FindFirst(fPath+'*.*',faDirectory, lSearchRec);

    //fprojects.Clear;
    Self.Clear;

    while lFind = 0 do
    begin
      dirName:=lSearchRec.Name;
      if (dirName <> '.')
      and (dirName <> '..')
      and (DirectoryExists(fPath+dirName)) then
      begin
        GetMem(lProject, SizeOf(TProject));
        lProject^.dirname := dirName;
        lProject^.domain := GetDomain(fpath+'\'+dirname);
        lProject.bootstrap := GetBootPath(fpath+'\'+dirName);
        lProject^.last := lSearchRec.TimeStamp;

        Self.Add(lProject);
      end;
      lFind := FindNext(lSearchRec);
    end;
  end;
end;

end.
