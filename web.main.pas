unit web.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, WebView2, Winapi.ActiveX, Vcl.Edge,
  ChromeTabs;

type
  TForm2 = class(TForm)
    EdgeBrowser1: TEdgeBrowser;
    ChromeTabs1: TChromeTabs;
    procedure FormCreate(Sender: TObject);
    procedure EdgeBrowser1CreateWebViewCompleted(Sender: TCustomEdgeBrowser;
      AResult: HRESULT);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.EdgeBrowser1CreateWebViewCompleted(Sender: TCustomEdgeBrowser;
  AResult: HRESULT);
var
  a: Integer;
begin
//  EdgeBrowser1.SettingsInterface.Get_AreRemoteObjectsAllowed(a);
//  if a > 0 then
//    ShowMessage('remote objects are allowed');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

  EdgeBrowser1.Navigate('http://localhost/dev/')
end;

end.
