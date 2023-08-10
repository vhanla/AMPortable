{
  Changelog:
  24 Julio 2012
  - validate domain
  - save to hosts with runasadmin

}
unit frmVirtualHost;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, shellapi, inifiles,
  rkSmartPath;

type
  TfrmVirtualHost1 = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    lblVirtualHost: TLabel;
    editDominio: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    editIP: TEdit;
    editPath: TEdit;
    lblProject: TLabel;
    rkSmartPath1: TrkSmartPath;
    btnPath: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure editPathChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPathClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function isValidDomain(dominio:string):boolean;
    function isValidLocalHost(IP:string):boolean;
  end;

var
  frmVirtualHost1: TfrmVirtualHost1;
    //load commonpaths not trailing for the general purpose so adding \ is more convenient
  ProjectsPath:string;
  DevToolsPath:string;
  PHPPath:string;
  MySQLPath:string;
  ApachePath:string;

resourcestring
R_DomainExists = 'Ya existe ese dominio en el archivo HOSTS';
R_DomainInUse ='El dominio actual está en uso global';
R_DomainNotValid = '¡Nombre de dominio no válido!';
R_IPNotValid = 'IP Local no válida';
R_NotFolderForVirtualHost = 'No existe la carpeta para el virtual host';
R_HosteNotFound = 'El archivo hoste.exe no está en la carpeta devtools';

implementation
uses main, locales;
{$R *.dfm}

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

//**
//* parseDomain
//*
//* Description: verifies if a domain name is valid
//* @param: string that passes the domain to be evaluated
//* @return: true or false // valid or invalid
function TfrmVirtualHost1.isValidDomain(dominio:string):boolean;
var
  I: Integer;

begin
  Result:=True; //valid by default
  dominio:=LowerCase(Trim(dominio)); //get rid of unneeded spaces

  for I := 1 to Length(dominio) do
  begin
    if dominio[I] in ['a'..'z','0'..'9','-','.'] then //  is valid
      //result:=True
    else result:=False;

    if (I > 1) then
    begin
      if ((dominio[I]='.') or (dominio[I]='-'))
      and (dominio[I-1]='.') //puntos repetidos o .-
      then
      Result:=False;

      if ((dominio[I]='.') or (dominio[I]='-'))
      and (dominio[I-1]='-') //-. o --
      then
      Result:=False;

    end;

  end;
  //no puede empezar ni terminar con -
  if dominio[1]='-' then result:=False;
  if dominio[length(dominio)]='-' then result:=False;
  // no puede empezar ni terminar en .
  if dominio[1]='.' then result:=False;
  if dominio[length(dominio)]='.' then result:=False;

  if length(dominio)>63 then
    Result:=False;
  if length(dominio)<3 then
    Result:=False;
end;


//**
//* parseDomain
//*
//* Description: verifies if a domain name is valid
//* @param: string that passes the domain to be evaluated
//* @return: true or false // valid or invalid
function TFrmVirtualHost1.isValidLocalHost(IP:string):boolean;
var
  I: Integer;
  dots: Integer;
  a,b,c,d: string;
begin
  Result:=True; //valid by default
  IP:=LowerCase(Trim(IP)); //get rid of unneeded spaces

  //a game changer, si es IPv6 únicamente debe ser ::1
  if IP='::1' then Result:=True
  else
  begin
    dots:=0; //debe haber sólo ... tres puntos 127.0.0.1
    a:='';
    b:=a;
    c:=b;
    d:=c;
    for I := 1 to Length(IP) do
    begin
      //copy values to a, b,c
      if IP[I]<>'.' then
      begin
        if dots=0 then
          a:=a+IP[I]
        else if dots=1 then
          b:=b+IP[I]
        else if dots=2 then
          c:=c+IP[I]
        else if dots=3 then
          d:=d+IP[I];
      end
      else Inc(dots); //incrementamos los puntos

      if IP[I] in ['0'..'9','.'] then //  is valid
        //result:=True
      else result:=False;

      if (I > 1) then
      begin
        if (IP[I]='.')
        and (IP[I-1]='.') //puntos repetidos o .-
        then
        Result:=False;
      end;

    end;
    // no pueden haber más puntos que tres
    if dots<>3 then Result:=False;

    // no puede empezar ni terminar en .
    if IP[1]='.' then result:=False;
    if IP[length(IP)]='.' then result:=False;

    //validamos a, b, y c
    try
      if StrToInt(a)<>127 then
        Result:=False;
      if (StrToInt(b)<0) OR (StrToInt(b)>255) then
        Result:=False;
      if (StrToInt(c)<0) OR (StrToInt(c)>255) then
        Result:=False;
      if (StrToInt(d)<0) OR (StrToInt(d)>255) then
        Result:=False;
    except
  ///  ShowMessage(a+'.'+b+'.'+c+'.'+d);
    end;
  end;
end;

procedure SaveToIni(project,dominio,ip,path:string);
var
  ini: TIniFile;
begin
  ini:=TIniFile.Create(ProjectsPath+'\'+project+'\vhost.ini');
  try
    ini.WriteString('Virtual Host','domain',dominio);
    ini.WriteString('Virtual Host','ip',ip);
    if trim(path)='' then
    path:='/';
    ini.WriteString('Virtual Host','path',path);
  finally
    ini.Free;
  end;
end;

procedure TfrmVirtualHost1.btnCancelClick(Sender: TObject);
begin
close
end;

procedure TfrmVirtualHost1.btnPathClick(Sender: TObject);
var
  vhpath: String;
begin
  vhpath:=ProjectsPath+'\'+lblProject.Caption;

  if btnPath.Caption = '...' then
  begin
    btnPath.Caption := '✓';
    rkSmartPath1.Visible := True;
    rkSmartPath1.Path := vhpath;
    btnSave.Enabled := False;
  end
  else
  begin
    btnPath.Caption := '...';
    rkSmartPath1.Visible := False;
    if Pos(vhpath, rkSmartPath1.Path) = 1 then
    begin
      editPath.Text := Copy(rkSmartPath1.Path,Length(vhpath)+1);
      editPath.Text := StringReplace(editPath.Text, '\', '/', [rfReplaceAll]);
      editPath.Text := StringReplace(editPath.Text, '//', '/', [rfReplaceAll]);
    end
    else
    begin
      MessageDlg('Select current project dir or subdirs only.',mtWarning, [mbOK], 0);
    end;
    btnSave.Enabled := True;
  end;
end;

procedure TfrmVirtualHost1.btnSaveClick(Sender: TObject);
var
hostsfile: string;
domainfile: string;
cmdfile: string;
vhpath: string;
begin

  if SearchDuplicatedDomainInHosts(editDominio.Text) then
  begin //ya existe el dominio
    MessageDlg(R_DomainExists,mtError,[mbok],0);
  end
  else
  begin
    //aun no existe, entonces creamos el archivo de configuración

    if trim(lowercase(editDominio.Text))='localhost' then
    begin
      MessageDlg(R_DomainInUse+#13'http://'+LowerCase(Trim(editDominio.Text)),
        mtError,[mbok],0);
      exit;
    end;
    //validamos el dominio
    if not isValidDomain(editDominio.Text) then
    begin
      MessageDlg(R_DomainNotValid+#13'http://'+LowerCase(Trim(editDominio.Text)),
        mtError,[mbok],0);
      exit;
    end;
    //validamos la IP
    if not isValidLocalHost(editIP.Text) then
    begin
      MessageDlg(R_IPNotValid+#13'http://'+LowerCase(Trim(editIP.Text)),
        mtError,[mbok],0);
      exit;
    end;
    //validamos la carpeta tb en evento onchange de editPath
    editPath.Text:=trim(editPath.Text);

    vhpath:=ProjectsPath+'\'+lblProject.Caption+StringReplace(editPath.Text,'/','\',[rfReplaceAll]);
    if not DirectoryExists(vhpath) then
    begin
      MessageDlg(R_NotFolderForVirtualHost+#13'Carpeta: '+vhpath,
        mtError,[mbok],0);
      exit;
    end;
    //creamos el documento INI
    if FileExists(DevToolsPath+'\hoste.exe') then
    begin
      SaveToIni(lblProject.Caption,editDominio.Text,editIP.Text,editPath.Text);
      //ejecutamos el guardado en HOSTS
      //cmd /k echo 127.0.0.1 vhanla.com > dominio
      //cmd /k copy hosts+dominio {hosts} /B /Y  hosts ultimo es opcional, si no existe, sobre escribe el primer archivo
      //cmd /k del dominio
      //cmd /k echo Hosts modificado
      domainfile:=GetSystemDirectoryDir+'\Drivers\etc\dominio';
      hostsfile:=GetSystemDirectoryDir+'\Drivers\etc\hosts';
      cmdfile:=GetSystemDirectoryDir+'\cmd.exe';
      if FileExists(hostsfile)
      and (FileExists(cmdfile))
      then
      begin
        close;

        //RunAsAdmin(HInstance,cmdfile, //anterior usando trucos de cmd
        //  '/c cd drivers\etc&&(echo.&&echo '+editIP.Text+' '+editDominio.Text+') >> "'+hostsfile+'"&&echo Agregado a Hosts');

        //actual con hoste.exe
        RunAsAdmin(handle,DevToolsPath+'\hoste.exe','/a '+editDominio.Text+' '+editIP.Text);

        //restart server
        frmAMP.RestartServer;
      end;
    end
    else ShowMessage(R_HosteNotFound);
  end;
end;

procedure TfrmVirtualHost1.editPathChange(Sender: TObject);
var
  texto:string;
begin
  if length(editPath.Text)>0 then
  begin
    if editPath.Text[2]='/' then
    begin
        editPath.Text:=Copy(editPath.Text,2,length(editPath.Text)-1);
        editPath.SelStart:=1;
    end;
    if editPath.Text[1]<>'/' then
    begin
      editPath.Text:='/'+editPath.Text;
      editPath.SelStart:=length(editPath.Text);
    end;
  end;
end;

procedure TfrmVirtualHost1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NotModal := True;
end;

procedure TfrmVirtualHost1.FormCreate(Sender: TObject);
begin
    //load commonpaths not trailing for the general purpose so adding \ is more convenient
  ProjectsPath:=ExtractFilePath(ParamStr(0))+'content\www';
  DevToolsPath:=ExtractFilePath(ParamStr(0))+'content\devtools';
  PHPPath:=ExtractFilePath(ParamStr(0))+'content\php5';
  MySQLPath:=ExtractFilePath(ParamStr(0))+'content\mysql';
  ApachePath:=ExtractFilePath(ParamStr(0))+'content\apache2';
end;

procedure TfrmVirtualHost1.FormShow(Sender: TObject);
begin
  rkSmartPath1.Visible := False;
  btnPath.Caption := '...';
  btnSave.Enabled := True;
  rkSmartPath1.NewFolderName := R_NewFolder;
end;

end.



