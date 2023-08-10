unit frmphpsettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.ValEdit, SynEditHighlighter, SynHighlighterIni, SynEdit,
  VirtualTrees, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tbsVisual: TTabSheet;
    tbsSourceCode: TTabSheet;
    Panel1: TPanel;
    SynMemo1: TSynEdit;
    SynIniSyn1: TSynIniSyn;
    vstPHP: TVirtualStringTree;
    btnSave: TButton;
    btnCancel: TButton;
    btnEditMode: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vstPHPFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vstPHPGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure btnCancelClick(Sender: TObject);
    procedure vstPHPNodeDblClick(Sender: TBaseVirtualTree;
      const HitInfo: THitInfo);
    procedure vstPHPInitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure vstPHPBeforeCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
    procedure vstPHPInitChildren(Sender: TBaseVirtualTree; Node: PVirtualNode;
      var ChildCount: Cardinal);
    procedure vstPHPChecked(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vstPHPEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure vstPHPNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; NewText: string);
    procedure btnEditModeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SynMemo1Change(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    PHPIniText: TStrings;
    PHPIniBuf : String;
    procedure ParsePHPIni(text: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses main, locales;

  type
    Pinidata = ^Tinidata;
    Tinidata = record
      key: string;
      value: string;
      savedvalue: string;
      enabled: Boolean;
      sectionchanges: String; //used to count changes inside
      line: Integer;
      OtherNode: PVirtualNode;
    end;



{$R *.dfm}

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btnEditModeClick(Sender: TObject);
begin
  if btnEditMode.Caption = R_phpini_text then
  begin
    SynMemo1.ReadOnly := False;
    vstPHP.Enabled := False;
    btnEditMode.Caption := R_phpini_visual;
    PageControl1.ActivePage := tbsSourceCode;
    PHPIniBuf := SynMemo1.Text;
  end
  else
  begin
    SynMemo1.ReadOnly := True;
    vstPHP.Enabled := True;
    btnEditMode.Caption := R_phpini_text;
    PageControl1.ActivePage := tbsVisual;
    PHPIniBuf := SynMemo1.Text;
    ParsePHPIni('');
  end;
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
  PHPIniBuf := SynMemo1.Text;
  SynMemo1Change(SynMemo1);
  ParsePHPIni('');
  //TODO: if visual mode, just update all nodes statuses so refreshing won't be needed
  //pHPINIBUF might be wrong working, just a test was its purpose
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  NotModal := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PHPIniText := TStringList.Create;
  vstPHP.NodeDataSize := SizeOf(Tinidata);
  btnEditMode.Caption := R_phpini_text;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  PHPIniText.Free;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if main.frmAMP.cbPHPversion.Text = 'PHP 7' then
    PHPIniText.LoadFromFile(ExtractFilePath(ParamStr(0))+'content\php7\php.ini')
  else
    PHPIniText.LoadFromFile(ExtractFilePath(ParamStr(0))+'content\php5\php.ini');
  SynMemo1.Text := PHPIniText.Text;
  ParsePHPIni('');
end;

// This will populate php settings in the virtual string tree
procedure TForm1.ParsePHPIni(text: String);
var
  lines: TStrings;
  i : Integer;
  node,subnode,extnode, _node: PVirtualNode;
  data: Pinidata;
  parser: TStringList;
begin
  lines := TStringList.Create;
  try
    lines.Text := SynMemo1.Text;

    vstPHP.DeleteChildren(vstPHP.RootNode);

    // First section will be the extensions'
    extnode := vstPHP.AddChild(nil);
    data := vstPHP.GetNodeData(extnode);
    data^.key := 'Extensions';
    data^.line := 0;
    data^.sectionchanges := '';

    for i := 0 to lines.Count - 1 do
      begin
        if Pos('[',Trim(lines[i])) = 1 then
        begin
          node := vstPHP.AddChild(nil);
          data := vstPHP.GetNodeData(node);
          data^.key := Trim(lines[i]);
          data^.line := i;
          data^.sectionchanges := ''; //defaults to no changes
        end
        // comments out
        else
        if Pos(';',Trim(lines[i])) = 1 then
        begin
          // find out if is a valid commented/disabled value
          parser := TStringList.Create;
          try
            parser.Text := StringReplace(lines[i], '=',#13#10'#'#13#10,[]);
            if Pos(' ', Trim(parser[0]))> 0 then
            begin
              // is not a valid key value
            end
            else if parser.Count > 1 then
            begin
              if Assigned(node) then
              begin
                _node := nil;
                if (LowerCase(Trim(Copy(parser[0],2))) = 'extension')
                or (LowerCase(Trim(Copy(parser[0],2))) = 'extension_dir')
                then
                begin
                  _node := node;
                  node := extnode;
                end;

                subnode := vstPHP.AddChild(node);
                data := vstPHP.GetNodeData(subnode);
                data^.key := Copy(parser[0],2);
                if parser.Count > 2 then
                begin
                  data^.value := parser[2];
                  data^.savedvalue := parser[2];
                end;
                data^.line := i;
                data^.enabled := False;
                subnode.CheckState := csUncheckedNormal;

                if _node <> nil then node := _node;
              end;
            end;

          finally
            parser.Free;
          end;
        end
        else if Trim(lines[i]) = '' then
        begin
          //empty line
        end
        else
        begin
          parser := TStringList.Create;
          try
            parser.Text := StringReplace(lines[i], '=',#13#10'#'#13#10,[]);
            if Pos(' ', Trim(parser[0]))> 0 then
            begin
              // is not a valid key value
            end
            else if parser.Count > 1 then
            begin
              if Assigned(node) then
              begin
                _node := nil;
                if (LowerCase(Trim(parser[0])) = 'extension')
                or (LowerCase(Trim(parser[0])) = 'extension_dir')
                then
                begin
                  _node := node;
                  node := extnode;
                end;

                subnode := vstPHP.AddChild(node);
                data := vstPHP.GetNodeData(subnode);
                data^.key := parser[0];
                if parser.Count > 2 then
                begin
                  data^.value := parser[2];
                  data^.savedvalue := parser[2];
                end;
                data^.line := i;
                data^.enabled := True;
                subnode.CheckState := csCheckedNormal;

                if _node <> nil then node := _node;
                
              end;
            end;

          finally
            parser.Free;
          end;
        end;
      end;
  finally
    lines.Free;
  end;
end;

procedure TForm1.SynMemo1Change(Sender: TObject);
begin
  if PHPIniBuf <> SynMemo1.Text then
    btnSave.Enabled := True
  else
    btnSave.Enabled := False;
end;

procedure TForm1.vstPHPBeforeCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
var
  Level: Integer;
  Data: Pinidata;
begin

  Level := Sender.GetNodeLevel(Node);
  case Level of
    0:
    begin
      TargetCanvas.Brush.Color := $efefef;
      TargetCanvas.FillRect(CellRect);

      Data := Sender.GetNodeData(Node);
      if Trim(Data^.sectionchanges) <> '' then
      begin
        TargetCanvas.Brush.Color := $76BFFB;
        TargetCanvas.FillRect(CellRect);
      end;
    end;
    1:
    begin
      Data := Sender.GetNodeData(Node);

      if (Node.Index and 1) = 1 then
      begin
        TargetCanvas.Brush.Color := $f1f1f1;
        TargetCanvas.FillRect(CellRect);
      end;

      if Node.CheckState = csCheckedNormal then
      begin
        if not Data^.enabled then // to highlight if changed from original state
        begin
          TargetCanvas.Brush.Color := $76BFFB;
          TargetCanvas.FillRect(CellRect);
        end
        else
          TargetCanvas.Brush.Color := $A3D491;

        TargetCanvas.FillRect(CellRect);
      end
      else if Node.CheckState = csUncheckedNormal then
      begin
        if Data^.enabled then // to highlight if changed from original state
        begin
          TargetCanvas.Brush.Color := $76BFFB;
          TargetCanvas.FillRect(CellRect);
        end;
      end;

      if Data^.savedvalue <> Data^.value then
      begin
        TargetCanvas.Brush.Color := $12ddea;
        TargetCanvas.FillRect(CellRect);
      end;

    end;
  end;

end;

procedure TForm1.vstPHPChecked(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  Level: Integer;
  Data: Pinidata;
  ParentData: Pinidata;
  Nodo: PVirtualNode;
  I: Integer;
begin
//  Node := Sender.FocusedNode;
  Level := Sender.GetNodeLevel(Node);
  if Level > 0 then // just to act if subnode is clicked specially for changes on checkbox
  begin
    ParentData := Sender.GetNodeData(Node.Parent);
    Nodo := Sender.GetFirstChild(Node.Parent);

    ParentData^.sectionchanges := '';

    I := 0;

    while Assigned(Nodo) do
    begin

      Data := Sender.GetNodeData(Nodo);

      if Nodo.CheckState = csCheckedNormal then
      begin
        if not Data^.enabled then Inc(I);
      end
      else if Nodo.CheckState = csUncheckedNormal then
      begin
        if Data^.enabled then Inc(I);
      end;

      if Data^.savedvalue <> Data^.value then
        Inc(I);

      if I > 0 then
      ParentData^.sectionchanges:= I.ToString;

      Nodo := Sender.GetNextSibling(Nodo);
    end;

    vstPHP.RepaintNode(Node.Parent);

    // Let's update the line in its source code
    Data := Sender.GetNodeData(Node);
    if Node.CheckState = csCheckedNormal then
      SynMemo1.Lines[Data^.line] := Data^.key + ' = ' + Data^.value
    else if Node.CheckState = csUnCheckedNormal then
      SynMemo1.Lines[Data^.line] := ';'+Data^.key + ' = ' + Data^.value;

    SynMemo1Change(SynMemo1);

  end;
end;

procedure TForm1.vstPHPEditing(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; var Allowed: Boolean);
begin
//  Allowed := True;
end;

procedure TForm1.vstPHPFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  data: Pinidata;
begin
  data := vstPHP.GetNodeData(Node);

  if Assigned(data) then
    begin
      data^.key := '';
      data^.value := '';
      data^.savedvalue := '';
      data^.sectionchanges := '';
    end;
end;

procedure TForm1.vstPHPGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Level: Integer;
  Data: Pinidata;
begin
  Data := Sender.GetNodeData(Node);
  Level := Sender.GetNodeLevel(Node);
  case Column of
    0: CellText := Data.key;
    1:
    begin
      if Level = 0 then
      begin
        if Trim(Data.sectionchanges) <> '' then
          CellText := 'Changes : '+Data.sectionchanges
        else
          CellText := '';
      end
      else
        CellText := Data.value;
    end;
    2: CellText := Data.value;
  end;
end;

procedure TForm1.vstPHPInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
begin
  ChildCount := Sender.GetNodeLevel(Node) + 2;
end;

procedure TForm1.vstPHPInitNode(Sender: TBaseVirtualTree; ParentNode,
  Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
var
  Level: Integer;
begin
  Level := Sender.GetNodeLevel(Node);
//  Include(InitialStates, ivsHasChildren);
  if Level = 0 then
    Node.CheckType := ctNone;
  if Level = 1 then
    Node.CheckType := ctCheckBox;
end;

procedure TForm1.vstPHPNewText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; NewText: string);
var
  Level: Integer;
  Data: Pinidata;
begin
  Level := Sender.GetNodeLevel(Node);
  if Level = 0 then Exit; 

  if Column = 1 then
  begin
    Data := Sender.GetNodeData(Node);
    Data^.value := NewText;

    vstPHPChecked(Sender, Node);
  end;
end;

procedure TForm1.vstPHPNodeDblClick(Sender: TBaseVirtualTree;
  const HitInfo: THitInfo);
var
  Data: Pinidata;
  Node: PVirtualNode;
begin
  Node := Sender.FocusedNode;
  Data := Sender.GetNodeData(Node);
  if Assigned(Node) then
  begin
    if (Data^.line+1 >=1) and (Data^.line+1 < SynMemo1.Lines.Count) then
    begin
      SynMemo1.GotoLineAndCenter(Data^.line+1);
      PageControl1.SelectNextPage(True);
    end;
  end;
end;

end.
