object frmVirtualHost1: TfrmVirtualHost1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Virtual Host'
  ClientHeight = 194
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblVirtualHost: TLabel
    Left = 8
    Top = 8
    Width = 90
    Height = 13
    Caption = 'Virtual Host para : '
  end
  object Label2: TLabel
    Left = 8
    Top = 27
    Width = 175
    Height = 13
    Caption = 'Dominio: ejem. miaplicacion.com.php'
  end
  object Label3: TLabel
    Left = 8
    Top = 73
    Width = 260
    Height = 13
    Caption = 'IP (opcional) desde 127.0.0.1 hasta 127.255.255.255'
  end
  object Label4: TLabel
    Left = 8
    Top = 113
    Width = 256
    Height = 13
    Caption = 'Path: (ejem. /web/) puede apuntar a una subcarpeta'
  end
  object lblProject: TLabel
    Left = 104
    Top = 8
    Width = 54
    Height = 13
    Caption = 'lblProject'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSave: TButton
    Left = 112
    Top = 159
    Width = 75
    Height = 25
    Caption = 'Guardar'
    ElevationRequired = True
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 193
    Top = 159
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object editDominio: TEdit
    Left = 8
    Top = 46
    Width = 260
    Height = 21
    TabOrder = 2
    Text = 'localhost'
  end
  object editIP: TEdit
    Left = 8
    Top = 92
    Width = 260
    Height = 21
    TabOrder = 3
    Text = '127.0.0.1'
  end
  object editPath: TEdit
    Left = 8
    Top = 132
    Width = 233
    Height = 21
    TabOrder = 4
    Text = '/'
    OnChange = editPathChange
  end
  object btnPath: TButton
    Left = 247
    Top = 132
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 6
    OnClick = btnPathClick
  end
  object rkSmartPath1: TrkSmartPath
    Left = 8
    Top = 132
    Width = 233
    Height = 21
    AllowEdit = False
    BtnGreyGrad1 = 15921906
    BtnGreyGrad2 = 14935011
    BtnNormGrad1 = 16643818
    BtnNormGrad2 = 16046502
    BtnHotGrad1 = 16643818
    BtnHotGrad2 = 16441260
    BtnPenGray = 9408399
    BtnPenNorm = 11632444
    BtnPenShade1 = 9598820
    BtnPenShade2 = 15388572
    BtnPenArrow = clBlack
    ComputerAsDefault = True
    DirMustExist = True
    EmptyPathIcon = -1
    EmptyPathText = 'Este equipo'
    HideFirstLevel = True
    NewFolderName = 'New Folder'
    ParentColor = False
    ParentBackground = False
    Path = 'C:\Users\vhanla\Documents\'
    SpecialFolders = []
    TabOrder = 5
  end
end
