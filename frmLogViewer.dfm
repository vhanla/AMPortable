object formLogViewer: TformLogViewer
  Left = 0
  Top = 0
  Caption = 'Log Viewer'
  ClientHeight = 442
  ClientWidth = 1294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 1294
    Height = 19
    Panels = <>
    ExplicitLeft = 320
    ExplicitTop = 232
    ExplicitWidth = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 30
    Width = 1294
    Height = 393
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    ExplicitTop = 36
    object TabSheet1: TTabSheet
      Caption = 'Apache HTTP Server Log'
      object LogViewer: TSynEdit
        Left = 0
        Top = 0
        Width = 1286
        Height = 365
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        TabOrder = 0
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
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
        Highlighter = SynUNIXShellScriptSyn1
        SelectedColor.Alpha = 0.400000005960464500
        ExplicitTop = -3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Httpd output'
      ImageIndex = 1
      object httpdoutput: TSynEdit
        Left = 0
        Top = 0
        Width = 1286
        Height = 365
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Consolas'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        TabOrder = 0
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -13
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
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
        Highlighter = SynUNIXShellScriptSyn1
        SelectedColor.Alpha = 0.400000005960464500
        ExplicitTop = -3
      end
    end
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 1294
    Height = 30
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 10461087
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object SynUNIXShellScriptSyn1: TSynUNIXShellScriptSyn
    Left = 640
    Top = 224
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = Action1
            Caption = '&Clear Log'
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 416
    Top = 176
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Clear Log'
      OnExecute = Action1Execute
    end
  end
end
