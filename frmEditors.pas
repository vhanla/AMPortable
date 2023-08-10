unit frmEditors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ShellApi,
  Vcl.Mask;

type
  TwndEditors = class(TForm)
    edName: TLabeledEdit;
    edPath: TLabeledEdit;
    edParam: TLabeledEdit;
    btnFindExecutable: TButton;
    odEditor: TOpenDialog;
    btnAdd: TButton;
    btnCancel: TButton;
    edImage: TImage;
    egParams: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnFindExecutableClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPathChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wndEditors: TwndEditors;

implementation

uses main, settings, functions;

{$R *.dfm}

procedure TwndEditors.btnAddClick(Sender: TObject);
//var
  //ed: PSTextEditor;
begin
  main.Settings.CodeEditors.Append(TCodeEditor.Create(edName.Text, edPath.Text, edParam.Text));
  {GetMem(ed, SizeOf(TSTextEditor));
  ed^.Name := edName.Text;
  ed^.Path := edPath.Text;
  ed^.Param := edParam.Text;
  ed^.Enabled := True;
  main.Settings.TextEditors.Add(ed);}
  Close;
end;

procedure TwndEditors.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TwndEditors.btnFindExecutableClick(Sender: TObject);
var
  exeInfo: TExeInfo;
  Icon: TIcon;
begin
  with odEditor do
  begin
    Filter := 'Executables|*.exe|All files|*.*';
    Title := 'Select your text editor executable';
    if Execute then
    begin
      edPath.Text := FileName;
      exeInfo := GetExeInfo(FileName);
      if exeInfo.ProductName <> '' then
        edName.Text := exeInfo.ProductName
      else
      begin
        edName.Text := ExtractFileName(FileName);
        edName.Text := ChangeFileExt(edName.Text, '');
      end;
      Icon := TIcon.Create;
      try
        Icon.Transparent := True;
        Icon.Handle := ExtractIcon(HInstance, PChar(FileName), Word(0));
        edImage.Picture.Assign(Icon);
      finally
        Icon.Free;
      end;

      egParams.Text := '...\'+ExtractFileName(FileName) + ' ' + edParam.Text;
    end;
  end;
end;

procedure TwndEditors.edPathChange(Sender: TObject);
begin
  egParams.Text := '...\'+ExtractFileName(odEditor.FileName) + ' ' + edParam.Text;
end;

procedure TwndEditors.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NotModal := True;
end;

end.
