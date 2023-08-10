unit frmBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  SynEdit, Vcl.OleCtrls, SHDocVw_EWB, EwbCore, EmbeddedWB;

type
  TframeBrowser = class(TForm)
    EmbeddedWB1: TEmbeddedWB;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameBrowser: TframeBrowser;

implementation

{$R *.dfm}

end.
