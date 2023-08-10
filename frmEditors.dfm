object wndEditors: TwndEditors
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Editor'
  ClientHeight = 150
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 13
  object edImage: TImage
    Left = 270
    Top = 3
    Width = 32
    Height = 32
    Stretch = True
  end
  object edName: TLabeledEdit
    Left = 64
    Top = 10
    Width = 200
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 21
    EditLabel.Caption = 'Name:'
    LabelPosition = lpLeft
    TabOrder = 0
    Text = ''
  end
  object edPath: TLabeledEdit
    Left = 64
    Top = 39
    Width = 200
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 21
    EditLabel.Caption = 'Path:'
    LabelPosition = lpLeft
    TabOrder = 1
    Text = ''
    OnChange = edPathChange
  end
  object edParam: TLabeledEdit
    Left = 64
    Top = 66
    Width = 200
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 21
    EditLabel.Caption = 'Params:'
    LabelPosition = lpLeft
    TabOrder = 2
    Text = '{folder}'
    OnChange = edPathChange
  end
  object btnFindExecutable: TButton
    Left = 270
    Top = 37
    Width = 34
    Height = 25
    Caption = '...'
    TabOrder = 3
    OnClick = btnFindExecutableClick
  end
  object btnAdd: TButton
    Left = 148
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Add'
    TabOrder = 4
    OnClick = btnAddClick
  end
  object btnCancel: TButton
    Left = 229
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Cancel'
    TabOrder = 5
    OnClick = btnCancelClick
  end
  object egParams: TEdit
    Left = 8
    Top = 93
    Width = 313
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 6
  end
  object odEditor: TOpenDialog
    Left = 272
    Top = 64
  end
end
