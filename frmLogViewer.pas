unit frmLogViewer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SynEdit, SynEditHighlighter,
  SynHighlighterIni, Vcl.ComCtrls, SynHighlighterMsg,
  SynHighlighterUNIXShellScript, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls;

type
  TformLogViewer = class(TForm)
    LogViewer: TSynEdit;
    StatusBar1: TStatusBar;
    SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    TabSheet2: TTabSheet;
    httpdoutput: TSynEdit;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogViewer: TformLogViewer;

implementation

{$R *.dfm}

procedure TformLogViewer.Action1Execute(Sender: TObject);
begin
  if FileExists(ExtractFilePath(ParamStr(0))+'content\apache2\logs\error.log') then
  begin
    LogViewer.Lines.Clear;
    LogViewer.Lines.SaveToFile(ExtractFilePath(ParamStr(0))+'content\apache2\logs\error.log');
  end;
end;

end.
