object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PHP Settings'
  ClientHeight = 440
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 457
    Height = 382
    ActivePage = tbsVisual
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 373
    object tbsVisual: TTabSheet
      Caption = 'Visual'
      object vstPHP: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 449
        Height = 354
        Align = alClient
        Colors.BorderColor = 15987699
        Colors.DisabledColor = clGray
        Colors.DropMarkColor = 15385233
        Colors.DropTargetColor = 15385233
        Colors.DropTargetBorderColor = 15385233
        Colors.FocusedSelectionColor = 15385233
        Colors.FocusedSelectionBorderColor = 15385233
        Colors.GridLineColor = 15987699
        Colors.HeaderHotColor = clWhite
        Colors.HotColor = clBlack
        Colors.SelectionRectangleBlendColor = 15385233
        Colors.SelectionRectangleBorderColor = 15385233
        Colors.SelectionTextColor = clWhite
        Colors.TreeLineColor = 9471874
        Colors.UnfocusedColor = clGray
        Colors.UnfocusedSelectionColor = clWhite
        Colors.UnfocusedSelectionBorderColor = clWhite
        Header.AutoSizeIndex = 0
        Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
        TabOrder = 0
        TreeOptions.AutoOptions = [toAutoDropExpand, toAutoScroll, toAutoTristateTracking]
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toEditable, toInitOnSave, toWheelPanning, toEditOnDblClick]
        TreeOptions.PaintOptions = [toHideFocusRect, toShowBackground, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toUseBlendedSelection]
        TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect, toRightClickSelect]
        OnBeforeCellPaint = vstPHPBeforeCellPaint
        OnChecked = vstPHPChecked
        OnEditing = vstPHPEditing
        OnFreeNode = vstPHPFreeNode
        OnGetText = vstPHPGetText
        OnInitChildren = vstPHPInitChildren
        OnInitNode = vstPHPInitNode
        OnNewText = vstPHPNewText
        OnNodeDblClick = vstPHPNodeDblClick
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
        Columns = <
          item
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
            Position = 0
            Text = 'Key'
            Width = 197
          end
          item
            Position = 1
            Text = 'Value'
            Width = 231
          end
          item
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus, coEditable]
            Position = 2
            Text = 'Description'
            Width = 244
          end>
      end
    end
    object tbsSourceCode: TTabSheet
      Caption = 'SourceCode'
      ImageIndex = 1
      object SynMemo1: TSynEdit
        Left = 0
        Top = 0
        Width = 449
        Height = 354
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        TabOrder = 0
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.Font.Quality = fqClearTypeNatural
        Gutter.Bands = <
          item
            Kind = gbkMarks
            Width = 13
          end
          item
            Kind = gbkLineNumbers
          end
          item
            Kind = gbkFold
          end
          item
            Kind = gbkTrackChanges
          end
          item
            Kind = gbkMargin
            Width = 3
          end>
        Highlighter = SynIniSyn1
        Lines.Strings = (
          'SynMemo1')
        ReadOnly = True
        SelectedColor.Alpha = 0.400000005960464500
        OnChange = SynMemo1Change
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 457
    Height = 58
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 373
    ExplicitWidth = 451
    object btnSave: TButton
      Left = 287
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Save'
      Enabled = False
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 368
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnEditMode: TButton
      Left = 4
      Top = 16
      Width = 93
      Height = 25
      Caption = 'Enable editing'
      TabOrder = 2
      OnClick = btnEditModeClick
    end
  end
  object SynIniSyn1: TSynIniSyn
    Left = 316
    Top = 232
  end
end
