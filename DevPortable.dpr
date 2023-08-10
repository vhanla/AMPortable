program DevPortable;



{$R *.dres}
{$IFDEF DEBUG}
{$INCLUDE FastMM4Options.inc}
{$ENDIF}

uses
  {$IFDEF DEBUG}
  FastMM4,
  {$ENDIF }
  Forms,
  Windows,
  main in 'main.pas' {frmAMP},
  Splash in 'Splash.pas' {FormSplash},
  inifiles,
  sysutils,
  frmVirtualHost in 'frmVirtualHost.pas' {frmVirtualHost1},
  DirectoryMonitor in 'DirectoryMonitor.pas',
  Vcl.Themes,
  Vcl.Styles,
  projects in 'projects.pas',
  functions in 'functions.pas',
  Settings in 'Settings.pas',
  frmEditors in 'frmEditors.pas' {wndEditors},
  UTransition in 'UTransition.pas',
  phpini in 'phpini.pas',
  frmphpsettings in 'frmphpsettings.pas' {Form1},
  httpd in 'httpd.pas',
  frmLogViewer in 'frmLogViewer.pas' {formLogViewer};

{$R *.res}

var
  RvHandle: HWND;
  ini: tinifile;
begin
  RvHandle:=FindWindow('AMPortable',nil);
  if RvHandle > 0 then exit;
  Application.Initialize;
  //FreeLocalizer.AutoTranslate:=True;
  //FreeLocalizer.LanguageFile:='AMPortable.english.lng';

  ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    if ini.ReadBool('Settings','Splash',True) then
      with TFormSplash.Create(Application) do
        Execute;
  finally
    ini.Free;
  end;
  Application.Title := 'AMPortable';
  Application.MainFormOnTaskBar:=False;
  Application.ShowMainForm:=False;
  Application.CreateForm(TfrmAMP, frmAMP);
  Application.CreateForm(TfrmVirtualHost1, frmVirtualHost1);
  Application.CreateForm(TwndEditors, wndEditors);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TformLogViewer, formLogViewer);
  //  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
