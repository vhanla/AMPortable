object frmAMP: TfrmAMP
  Left = 471
  Top = 177
  BorderStyle = bsNone
  Caption = 'Software'
  ClientHeight = 574
  ClientWidth = 798
  Color = clWhite
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Font.Quality = fqClearTypeNatural
  Position = poDefault
  StyleElements = [seFont]
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 14
  object SplitView1: TSplitView
    Left = 0
    Top = 39
    Width = 105
    Height = 493
    AnimationStep = 50
    CloseStyle = svcCompact
    CompactWidth = 30
    OpenedWidth = 105
    Placement = svpLeft
    TabOrder = 0
    object StackPanel1: TStackPanel
      Left = 0
      Top = 0
      Width = 105
      Height = 493
      Align = alClient
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = XBtnProjects
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = XBtnSettings
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = XBtnServers
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = XBtnMonitor
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = btnDevTools
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = XBtnMail
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end
        item
          Control = XBtnExit
          HorizontalPositioning = sphpFill
          VerticalPositioning = spvpFill
        end>
      Spacing = 1
      TabOrder = 0
      object XBtnProjects: TXButton
        Left = 0
        Top = 0
        Width = 105
        Height = 35
        Caption = 'Projects'
        Color = clNavy
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnProjectsClick
        TabStop = False
        TabOrder = 1
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 1
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object XBtnSettings: TXButton
        Left = 0
        Top = 36
        Width = 105
        Height = 35
        Caption = 'Settings'
        Color = clSkyBlue
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnSettingsClick
        TabStop = False
        TabOrder = 0
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 3
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object XBtnServers: TXButton
        Left = 0
        Top = 72
        Width = 105
        Height = 35
        Caption = 'Servers'
        Color = clOlive
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnServersClick
        TabStop = False
        TabOrder = 2
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 7
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object XBtnMonitor: TXButton
        Left = 0
        Top = 108
        Width = 105
        Height = 35
        Caption = 'Monitor'
        Color = clOlive
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnMonitorClick
        TabStop = False
        TabOrder = 5
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 4
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object btnDevTools: TXButton
        Left = 0
        Top = 144
        Width = 105
        Height = 35
        Caption = 'DevCenter'
        Color = clOlive
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = btnDevToolsClick
        TabStop = False
        TabOrder = 4
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 5
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object XBtnMail: TXButton
        Left = 0
        Top = 180
        Width = 105
        Height = 35
        Caption = 'LocalMail'
        Color = clOlive
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnMailClick
        TabStop = False
        TabOrder = 6
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 6
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
      object XBtnExit: TXButton
        Left = 0
        Top = 216
        Width = 105
        Height = 35
        Caption = 'Exit'
        Color = clOlive
        DisabledColor = clBlack
        PressedColor = 6710886
        Checked = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Enabled = True
        OnClick = XBtnExitClick
        TabStop = False
        TabOrder = 3
        Align = alClient
        Images = imglstSidebar
        DisabledImageIndex = 0
        HotImageIndex = 0
        ImageIndex = 8
        PressedImageIndex = 0
        SelectedImageIndex = 0
        StylusHotImageIndex = 0
      end
    end
  end
  object CardPanel1: TCardPanel
    Left = 105
    Top = 39
    Width = 693
    Height = 493
    Align = alClient
    ActiveCard = CardSettings
    Caption = 'CardPanel1'
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object CardSettings: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardSettings'
      CardIndex = 0
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 0
      object pcSettings: TPageControl
        Left = 4
        Top = 4
        Width = 683
        Height = 483
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object tsGeneralSettings: TTabSheet
          Caption = 'Settings'
          object pnlSettings: TPanel
            Left = 0
            Top = 0
            Width = 675
            Height = 454
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 0
              Top = 0
              Width = 675
              Height = 156
              Align = alTop
              Caption = 'Configuraci'#243'n'
              TabOrder = 0
              object GridPanel1: TGridPanel
                Left = 2
                Top = 16
                Width = 671
                Height = 138
                Align = alClient
                BevelOuter = bvNone
                ColumnCollection = <
                  item
                    Value = 17.989062649908850000
                  end
                  item
                    Value = 18.921828861385610000
                  end
                  item
                    Value = 20.041148315157720000
                  end
                  item
                    Value = 21.384331659684250000
                  end
                  item
                    Value = 21.663628513863570000
                  end>
                ControlCollection = <
                  item
                    Column = 0
                    ColumnSpan = 3
                    Control = chkStartwWin
                    Row = 0
                  end
                  item
                    Column = 3
                    ColumnSpan = 2
                    Control = chkSplashScreen
                    Row = 0
                  end
                  item
                    Column = 4
                    Control = btnApply
                    Row = 4
                  end
                  item
                    Column = 3
                    Control = btnPHPini
                    Row = 4
                  end
                  item
                    Column = 4
                    Control = btnSearchPath
                    Row = 2
                  end
                  item
                    Column = 4
                    Control = btnSublime
                    Row = 3
                  end
                  item
                    Column = 0
                    Control = btnHosts
                    Row = 4
                  end
                  item
                    Column = 1
                    Control = btnVHosts
                    Row = 4
                  end
                  item
                    Column = 2
                    Control = cbPHPversion
                    Row = 4
                  end
                  item
                    Column = 4
                    Control = chkSSL
                    Row = 1
                  end
                  item
                    Column = 2
                    ColumnSpan = 2
                    Control = editPort
                    Row = 1
                  end
                  item
                    Column = 2
                    ColumnSpan = 2
                    Control = editScriptsPath
                    Row = 2
                  end
                  item
                    Column = 2
                    ColumnSpan = 2
                    Control = editSublimePath
                    Row = 3
                  end
                  item
                    Column = 0
                    ColumnSpan = 2
                    Control = lblPort
                    Row = 1
                  end
                  item
                    Column = 0
                    ColumnSpan = 2
                    Control = lblSublime
                    Row = 3
                  end
                  item
                    Column = 0
                    ColumnSpan = 2
                    Control = lblWebScripts
                    Row = 2
                  end>
                RowCollection = <
                  item
                    Value = 19.483895127845060000
                  end
                  item
                    Value = 19.875704052223480000
                  end
                  item
                    Value = 20.164135571045490000
                  end
                  item
                    Value = 20.292166365113370000
                  end
                  item
                    Value = 20.184098883772600000
                  end>
                TabOrder = 0
                DesignSize = (
                  671
                  138)
                object chkStartwWin: TCheckBox
                  Left = 0
                  Top = 0
                  Width = 382
                  Height = 17
                  Align = alTop
                  Caption = '&Iniciar junto con Windows'
                  TabOrder = 0
                  OnClick = chkStartwWinClick
                end
                object chkSplashScreen: TCheckBox
                  Left = 382
                  Top = 0
                  Width = 289
                  Height = 17
                  Align = alTop
                  Caption = 'Splash'
                  TabOrder = 1
                end
                object btnApply: TButton
                  Left = 574
                  Top = 114
                  Width = 49
                  Height = 19
                  Anchors = []
                  Caption = '&Aplicar'
                  TabOrder = 2
                  OnClick = btnApplyClick
                end
                object btnPHPini: TButton
                  Left = 433
                  Top = 114
                  Width = 42
                  Height = 19
                  Anchors = []
                  Caption = 'PHP.ini'
                  TabOrder = 3
                  OnClick = btnPHPiniClick
                end
                object btnSearchPath: TButton
                  Left = 574
                  Top = 59
                  Width = 49
                  Height = 18
                  Anchors = []
                  Caption = '...'
                  TabOrder = 4
                  OnClick = btnSearchPathClick
                end
                object btnSublime: TButton
                  Left = 574
                  Top = 87
                  Width = 49
                  Height = 18
                  Anchors = []
                  Caption = '...'
                  TabOrder = 5
                  OnClick = btnSublimeClick
                end
                object btnHosts: TButton
                  Left = 32
                  Top = 114
                  Width = 57
                  Height = 19
                  Anchors = []
                  Caption = 'Hosts'
                  ElevationRequired = True
                  TabOrder = 6
                  OnClick = btnHostsClick
                end
                object btnVHosts: TButton
                  Left = 163
                  Top = 114
                  Width = 42
                  Height = 19
                  Anchors = []
                  Caption = 'VHosts'
                  TabOrder = 7
                  OnClick = btnVHostsClick
                end
                object cbPHPversion: TComboBox
                  Left = 285
                  Top = 113
                  Width = 60
                  Height = 22
                  Anchors = []
                  TabOrder = 8
                  Items.Strings = (
                    'PHP 5'
                    'PHP 7'
                    'PHP 8')
                end
                object chkSSL: TCheckBox
                  Left = 579
                  Top = 32
                  Width = 39
                  Height = 17
                  Anchors = []
                  Caption = 'SSL'
                  TabOrder = 9
                end
                object editPort: TSpinEdit
                  Left = 325
                  Top = 29
                  Width = 123
                  Height = 23
                  Anchors = []
                  AutoSize = False
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 10
                  Value = 0
                end
                object editScriptsPath: TEdit
                  Left = 325
                  Top = 59
                  Width = 123
                  Height = 18
                  Anchors = []
                  AutoSize = False
                  TabOrder = 11
                end
                object editSublimePath: TEdit
                  Left = 325
                  Top = 87
                  Width = 123
                  Height = 18
                  Anchors = []
                  AutoSize = False
                  TabOrder = 12
                end
                object lblPort: TLabel
                  Left = 0
                  Top = 27
                  Width = 248
                  Height = 27
                  Align = alClient
                  Alignment = taRightJustify
                  Caption = 'Puerto a Usar:'
                  Layout = tlCenter
                  ExplicitLeft = 178
                  ExplicitWidth = 70
                  ExplicitHeight = 14
                end
                object lblSublime: TLabel
                  Left = 0
                  Top = 82
                  Width = 248
                  Height = 28
                  Hint = 'Para abrir tus proyectos con SublimeText2'
                  Align = alClient
                  Alignment = taRightJustify
                  Caption = 'SublimeText2'
                  ParentShowHint = False
                  ShowHint = True
                  Layout = tlCenter
                  ExplicitLeft = 182
                  ExplicitWidth = 66
                  ExplicitHeight = 14
                end
                object lblWebScripts: TLabel
                  Left = 0
                  Top = 54
                  Width = 248
                  Height = 28
                  Align = alClient
                  Alignment = taRightJustify
                  Caption = 'Alias (www)'
                  Layout = tlCenter
                  ExplicitLeft = 187
                  ExplicitWidth = 61
                  ExplicitHeight = 14
                end
              end
            end
            object GroupBox2: TGroupBox
              Left = 0
              Top = 156
              Width = 675
              Height = 298
              Align = alClient
              Caption = 'Estado del servidor'
              TabOrder = 1
              object lblApache: TLabel
                Left = 16
                Top = 44
                Width = 26
                Height = 14
                Caption = 'Http :'
              end
              object lblSQL: TLabel
                Left = 16
                Top = 64
                Width = 41
                Height = 14
                Caption = 'MySQL :'
              end
              object lblApacheState: TLabel
                Left = 73
                Top = 44
                Width = 9
                Height = 14
                Caption = '...'
              end
              object lblMySQLState: TLabel
                Left = 73
                Top = 64
                Width = 9
                Height = 14
                Caption = '...'
              end
              object Label2: TLabel
                Left = 17
                Top = 84
                Width = 25
                Height = 14
                Caption = 'PHP :'
              end
              object Label4: TLabel
                Left = 16
                Top = 24
                Width = 72
                Height = 14
                Caption = 'Servidor Web:'
              end
              object btnPHPInfo: TButton
                Left = 16
                Top = 149
                Width = 91
                Height = 18
                Caption = 'phpInfo'
                TabOrder = 0
                OnClick = btnPHPInfoClick
              end
              object cbServer: TComboBox
                Left = 114
                Top = 16
                Width = 168
                Height = 22
                TabOrder = 1
                Items.Strings = (
                  'Apache'
                  'CaddyServer')
              end
              object btnApacheLog: TButton
                Left = 288
                Top = 50
                Width = 59
                Height = 18
                Caption = 'Log'
                TabOrder = 2
                OnClick = btnApacheLogClick
              end
            end
            object btnMonitorPanel: TButton
              Left = 233
              Top = 254
              Width = 49
              Height = 19
              Caption = 'Monitor'
              TabOrder = 4
              OnClick = btnMonitorPanelClick
            end
            object btnStartAll: TButton
              Left = 233
              Top = 206
              Width = 49
              Height = 18
              Caption = 'Iniciar'
              TabOrder = 2
              OnClick = btnStartAllClick
            end
            object btnStopAll: TButton
              Left = 233
              Top = 230
              Width = 49
              Height = 18
              Caption = 'Detener'
              TabOrder = 3
              OnClick = btnStopAllClick
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Editors'
          ImageIndex = 1
          object vstEditors: TVirtualStringTree
            Left = 41
            Top = 0
            Width = 634
            Height = 454
            Align = alClient
            Colors.BorderColor = 15790320
            Colors.DisabledColor = clGray
            Colors.DropMarkColor = 14120960
            Colors.DropTargetColor = 14120960
            Colors.DropTargetBorderColor = 14120960
            Colors.FocusedSelectionColor = 14120960
            Colors.FocusedSelectionBorderColor = 14120960
            Colors.GridLineColor = 15790320
            Colors.HeaderHotColor = clWhite
            Colors.HotColor = clBlack
            Colors.SelectionRectangleBlendColor = 14120960
            Colors.SelectionRectangleBorderColor = 14120960
            Colors.SelectionTextColor = clWhite
            Colors.TreeLineColor = 9471874
            Colors.UnfocusedColor = clBlack
            Colors.UnfocusedSelectionColor = 14405055
            Colors.UnfocusedSelectionBorderColor = 14405055
            Header.AutoSizeIndex = 2
            Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoShowSortGlyphs, hoVisible]
            Header.SortColumn = 1
            Header.SortDirection = sdDescending
            TabOrder = 0
            TreeOptions.PaintOptions = [toHideFocusRect, toShowButtons, toShowDropmark, toShowRoot, toThemeAware, toUseBlendedImages]
            TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
            OnFreeNode = vstEditorsFreeNode
            OnGetText = vstEditorsGetText
            Touch.InteractiveGestures = [igPan, igPressAndTap]
            Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
            Columns = <
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
                Position = 0
                Text = 'Name'
                Width = 69
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
                Position = 1
                Text = 'Path'
                Width = 125
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
                Position = 2
                Text = 'Params'
                Width = 436
              end>
          end
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 41
            Height = 454
            Align = alLeft
            ButtonHeight = 38
            ButtonWidth = 39
            Caption = 'ToolBar1'
            Images = imglstToolbar
            TabOrder = 1
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Caption = '+'
              ImageIndex = 0
              Wrap = True
              OnClick = ToolButton1Click
            end
            object ToolButton3: TToolButton
              Left = 0
              Top = 38
              Caption = 'ToolButton3'
              ImageIndex = 1
              Wrap = True
            end
            object ToolButton5: TToolButton
              Left = 0
              Top = 76
              Caption = 'ToolButton5'
              ImageIndex = 3
            end
          end
        end
        object tsShell: TTabSheet
          Caption = 'Shell'
          ImageIndex = 2
        end
        object tsDatabaseEditors: TTabSheet
          Caption = 'DBM'
          ImageIndex = 3
        end
        object TabSheet2: TTabSheet
          Caption = 'WebCompiler'
          ImageIndex = 4
          object Label5: TLabel
            Left = 16
            Top = 16
            Width = 113
            Height = 14
            Caption = 'WebCompiler Settings'
          end
          object LabeledEdit1: TLabeledEdit
            Left = 120
            Top = 55
            Width = 121
            Height = 22
            EditLabel.Width = 67
            EditLabel.Height = 22
            EditLabel.Caption = 'NodeJS Path:'
            LabelPosition = lpLeft
            TabOrder = 0
            Text = ''
          end
        end
        object tbsEnvPaths: TTabSheet
          Caption = 'Environmen Path'
          ImageIndex = 5
          object Label6: TLabel
            Left = 8
            Top = 16
            Width = 539
            Height = 14
            Caption = 
              'System'#39's Environment Variables (PATH) can be overrided in order ' +
              'to  allow launched processes use them.'
          end
        end
      end
    end
    object CardProjects: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardProjects'
      CardIndex = 1
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      object pnlLauncher: TPanel
        Left = 4
        Top = 4
        Width = 683
        Height = 483
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object gbxVPaths: TGroupBox
          Left = 1
          Top = 1
          Width = 681
          Height = 45
          Align = alTop
          Caption = 'Carpeta externa alternativa (alias /www)'
          TabOrder = 0
          Visible = False
          object lstVPaths: TListBox
            Left = 2
            Top = 16
            Width = 677
            Height = 27
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            ItemHeight = 14
            PopupMenu = PopupMenuLauncher
            TabOrder = 0
            OnDblClick = lstVPathsDblClick
            OnMouseDown = lstVPathsMouseDown
          end
        end
        object gbxProjects: TGroupBox
          Left = 1
          Top = 46
          Width = 681
          Height = 436
          Align = alClient
          Caption = 'Proyectos encontrados  (doble click, clic der.)'
          TabOrder = 1
          object lstProjects: TListBox
            Left = 2
            Top = 16
            Width = 677
            Height = 33
            Style = lbOwnerDrawVariable
            Align = alTop
            BorderStyle = bsNone
            ItemHeight = 18
            PopupMenu = PopupMenuLauncher
            TabOrder = 0
            Visible = False
            OnDblClick = lstProjectsDblClick
            OnDrawItem = lstProjectsDrawItem
            OnMouseDown = lstProjectsMouseDown
          end
          object vstProjects: TVirtualStringTree
            Left = 2
            Top = 49
            Width = 677
            Height = 385
            Align = alClient
            BorderStyle = bsNone
            Colors.BorderColor = 15790320
            Colors.DisabledColor = clGray
            Colors.DropMarkColor = 14120960
            Colors.DropTargetColor = 14120960
            Colors.DropTargetBorderColor = 14120960
            Colors.FocusedSelectionColor = 14120960
            Colors.FocusedSelectionBorderColor = 14120960
            Colors.GridLineColor = 15790320
            Colors.HeaderHotColor = clWhite
            Colors.HotColor = clBlack
            Colors.SelectionRectangleBlendColor = 14120960
            Colors.SelectionRectangleBorderColor = 14120960
            Colors.SelectionTextColor = clWhite
            Colors.TreeLineColor = 9471874
            Colors.UnfocusedColor = clBlack
            Colors.UnfocusedSelectionColor = 14405055
            Colors.UnfocusedSelectionBorderColor = 14405055
            Header.AutoSizeIndex = 5
            Header.Height = 20
            Header.Options = [hoAutoResize, hoColumnResize, hoDblClickResize, hoDrag, hoShowSortGlyphs, hoVisible]
            Header.SortColumn = 4
            Header.SortDirection = sdDescending
            Images = imglstProjects
            TabOrder = 1
            TreeOptions.PaintOptions = [toHideFocusRect, toShowButtons, toShowDropmark, toShowRoot, toThemeAware, toUseBlendedImages]
            TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
            OnCompareNodes = vstProjectsCompareNodes
            OnFreeNode = vstProjectsFreeNode
            OnGetText = vstProjectsGetText
            OnGetImageIndex = vstProjectsGetImageIndex
            OnGetNodeDataSize = vstProjectsGetNodeDataSize
            OnGetPopupMenu = vstProjectsGetPopupMenu
            OnHeaderClick = vstProjectsHeaderClick
            OnInitNode = vstProjectsInitNode
            OnNodeDblClick = vstProjectsNodeDblClick
            Touch.InteractiveGestures = [igPan, igPressAndTap]
            Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
            Columns = <
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment]
                Position = 0
                Text = 'Project / Directory '
                Width = 100
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus]
                Position = 1
                Text = 'Domain / host'
                Width = 120
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus, coWrapCaption]
                Position = 2
                Text = 'Framework'
                Width = 100
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus, coWrapCaption]
                Position = 3
                Text = 'Path'
                Width = 100
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coWrapCaption]
                Position = 4
                Text = 'Last Edit'
                Width = 100
              end
              item
                Options = [coAllowClick, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coAllowFocus, coWrapCaption]
                Position = 5
                Width = 357
              end>
          end
        end
      end
    end
    object CardMonitor: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardMonitor'
      CardIndex = 2
      TabOrder = 2
      object pnlMonitor: TPanel
        Left = 0
        Top = 0
        Width = 691
        Height = 491
        Align = alClient
        Color = 15527148
        ParentBackground = False
        TabOrder = 0
        object lblMonitorTitle: TLabel
          Left = 8
          Top = 13
          Width = 110
          Height = 14
          Caption = 'Monitor de cambios'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object lblDescription: TLabel
          Left = 8
          Top = 33
          Width = 273
          Height = 44
          AutoSize = False
          Caption = 
            'S'#243'lo para Chrome (pero puede portar la extensi'#243'n a otros navegad' +
            'ores).'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          WordWrap = True
        end
        object lblWebsocketsStatus: TLabel
          Left = 57
          Top = 94
          Width = 123
          Height = 14
          Alignment = taRightJustify
          Caption = 'Websockets server: OFF'
        end
        object lblMonitorLog: TLabel
          Left = 8
          Top = 141
          Width = 43
          Height = 14
          Caption = 'Detalles:'
        end
        object lblGetExtension: TLabel
          Left = 176
          Top = 14
          Width = 99
          Height = 13
          Cursor = crHandPoint
          Alignment = taRightJustify
          Caption = 'Obtener la extensi'#243'n'
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = 16750899
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object lblWebSocketsPort: TLabel
          Left = 67
          Top = 67
          Width = 113
          Height = 14
          Alignment = taRightJustify
          Caption = 'Puerto (default 35792):'
        end
        object btnWebSocketServer: TButton
          Left = 192
          Top = 93
          Width = 89
          Height = 18
          Caption = 'Iniciar'
          TabOrder = 1
          OnClick = btnWebSocketServerClick
        end
        object btnMonitor: TButton
          Left = 8
          Top = 117
          Width = 273
          Height = 18
          Caption = 'Start Monitoring'
          TabOrder = 2
          OnClick = btnMonitorClick
        end
        object memoMonitorLog: TMemo
          Left = 8
          Top = 161
          Width = 273
          Height = 152
          Lines.Strings = (
            'AMPortable Monitor de cambios - Registro:')
          ScrollBars = ssBoth
          TabOrder = 3
          OnChange = memoMonitorLogChange
        end
        object spEditWebSocketsPort: TSpinEdit
          Left = 192
          Top = 64
          Width = 89
          Height = 23
          MaxValue = 65535
          MinValue = 81
          TabOrder = 0
          Value = 35792
          OnChange = spEditWebSocketsPortChange
        end
      end
    end
    object CardServers: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardServers'
      CardIndex = 3
      TabOrder = 3
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 691
        Height = 491
        ActivePage = WebServer
        Align = alClient
        TabOrder = 0
        object WebServer: TTabSheet
          Caption = 'WebServer'
          object Label3: TLabel
            Left = 35
            Top = 62
            Width = 50
            Height = 14
            Caption = 'Available:'
          end
          object Label1: TLabel
            Left = 24
            Top = 24
            Width = 61
            Height = 14
            Caption = 'Web Server:'
          end
          object ComboBox2: TComboBox
            Left = 91
            Top = 58
            Width = 145
            Height = 22
            TabOrder = 0
          end
          object ComboBox1: TComboBox
            Left = 91
            Top = 21
            Width = 145
            Height = 22
            TabOrder = 1
            Items.Strings = (
              'Apache'
              'Nginx'
              'Caddy')
          end
          object LinkLabel1: TLinkLabel
            Left = 26
            Top = 135
            Width = 375
            Height = 18
            Caption = 
              'Download new versions from <a href="https://www.apachelounge.com' +
              '/download/">https://www.apachelounge.com/download/</a>'
            TabOrder = 2
            OnLinkClick = LinkLabel1LinkClick
          end
        end
        object Databases: TTabSheet
          Caption = 'Databases'
          ImageIndex = 3
        end
        object PHP: TTabSheet
          Caption = 'PHP'
          ImageIndex = 6
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 49
            Height = 462
            Align = alLeft
            ButtonHeight = 38
            ButtonWidth = 39
            Caption = 'ToolBar2'
            Images = imglstToolbar
            TabOrder = 0
            object ToolButton2: TToolButton
              Left = 0
              Top = 0
              Caption = 'ToolButton2'
              ImageIndex = 0
              OnClick = ToolButton2Click
            end
          end
        end
      end
    end
    object CardMail: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardMail'
      CardIndex = 4
      TabOrder = 4
      object pgLocalMail: TPageControl
        Left = 0
        Top = 0
        Width = 691
        Height = 491
        ActivePage = tbsMail
        Align = alClient
        TabOrder = 0
        object tbsMail: TTabSheet
          Caption = 'Mail'
          object Panel1: TPanel
            Left = 0
            Top = 400
            Width = 683
            Height = 62
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object lblTheary: TLabel
              Left = 24
              Top = 8
              Width = 3
              Height = 14
            end
            object btnTheary: TButton
              Left = 16
              Top = 24
              Width = 75
              Height = 25
              Caption = 'Start'
              TabOrder = 0
              OnClick = btnThearyClick
            end
          end
          object EmbeddedWB1: TEmbeddedWB
            Left = 0
            Top = 0
            Width = 683
            Height = 400
            Align = alClient
            TabOrder = 1
            Silent = False
            DisableCtrlShortcuts = 'N'
            UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
            About = ' EmbeddedWB http://bsalsa.com/'
            PrintOptions.HTMLHeader.Strings = (
              '<HTML></HTML>')
            PrintOptions.Orientation = poPortrait
            ControlData = {
              4C000000E64600001D1C00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object tbsMailSettings: TTabSheet
          Caption = 'Settings'
          ImageIndex = 1
        end
      end
    end
    object CardDevtools: TCard
      Left = 1
      Top = 1
      Width = 691
      Height = 491
      Caption = 'CardDevtools'
      CardIndex = 5
      TabOrder = 5
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 691
        Height = 491
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheet1: TTabSheet
          Caption = 'Web'
          object EmbeddedWB2: TEmbeddedWB
            Left = 0
            Top = 0
            Width = 683
            Height = 462
            Align = alClient
            TabOrder = 0
            Silent = False
            DisableCtrlShortcuts = 'N'
            UserInterfaceOptions = [EnablesFormsAutoComplete, EnableThemes]
            About = ' EmbeddedWB http://bsalsa.com/'
            PrintOptions.HTMLHeader.Strings = (
              '<HTML></HTML>')
            PrintOptions.Orientation = poPortrait
            ControlData = {
              4C000000BA470000842500000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object Sass: TTabSheet
          Caption = 'Sass'
          ImageIndex = 1
          object Splitter1: TSplitter
            Left = 302
            Top = 0
            Height = 437
            ExplicitLeft = 304
            ExplicitTop = 128
            ExplicitHeight = 100
          end
          object BCEditor1: TSynEdit
            Left = 0
            Top = 0
            Width = 302
            Height = 437
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Font.Quality = fqClearTypeNatural
            TabOrder = 0
            UseCodeFolding = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -11
            Gutter.Font.Name = 'Consolas'
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
            Highlighter = SynCssSyn1
            Lines.Strings = (
              '.input {'
              '  border-radius: 3px;'
              '  border: 4px solid #ddd;'
              '  color: #555;'
              '  font-size: 17px;'
              '  padding: 10px 20px;'
              '  display: inline-block;'
              '  outline: 0;'
              '}'
              ''
              '.error-input {'
              '  @extend .input;'
              '  border:4px solid #e74c3c;'
              '}')
            SelectedColor.Alpha = 0.400000005960464500
          end
          object BCEditor2: TSynEdit
            Left = 305
            Top = 0
            Width = 378
            Height = 437
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            Font.Quality = fqClearTypeNatural
            TabOrder = 1
            UseCodeFolding = False
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -11
            Gutter.Font.Name = 'Consolas'
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
            SelectedColor.Alpha = 0.400000005960464500
          end
          object Button2: TButton
            Left = 0
            Top = 437
            Width = 683
            Height = 25
            Align = alBottom
            Caption = 'Convert to CSS'
            TabOrder = 2
            OnClick = Button2Click
          end
        end
        object tbsWebCompiler: TTabSheet
          Caption = 'WebCompiler'
          ImageIndex = 2
          object Label7: TLabel
            Left = 16
            Top = 16
            Width = 421
            Height = 14
            Caption = 
              'Compiles LESS, Sass, JSX, ES6 and CoffeeScript files. It alos mi' +
              'nifies, ulgligy them.'
          end
        end
      end
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Bottom = 4
    ParentBackground = False
    TabOrder = 2
    object lblTitle: TLabel
      Left = 0
      Top = 0
      Width = 798
      Height = 26
      Align = alTop
      Alignment = taCenter
      Caption = 'DevPortable 1.8'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      ParentColor = False
      ParentFont = False
      Transparent = True
      OnMouseDown = lblTitleMouseDown
      ExplicitWidth = 141
    end
    object lblBuild: TLabel
      Left = 0
      Top = 26
      Width = 798
      Height = 9
      Align = alClient
      Alignment = taCenter
      Caption = 'build 120630'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      Transparent = True
      ExplicitWidth = 52
      ExplicitHeight = 11
    end
    object mnuSidebar: TImage
      Left = 0
      Top = 5
      Width = 48
      Height = 24
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
        00180806000000BCFD7EDC000000097048597300000B1200000B1201D2DD7EFC
        0000004E4944415478DAEDD2310A00300804C1DCFF1F6D422090D64A0F773B41
        8B011511CB3901000000407F80A4BB7476F5CFD9DE3D802CA0733300F62F640F
        E8DC0C80FD0BD9033A07A03A00D501A86E03A6A577D17831F79D000000004945
        4E44AE426082}
      OnClick = mnuSidebarClick
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 532
    Width = 798
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 3
    object lblLink: TLabel
      Left = 0
      Top = 0
      Width = 798
      Height = 13
      Cursor = crHandPoint
      Align = alTop
      Alignment = taCenter
      Caption = 'http://apps.codigobit.info'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentColor = False
      ParentFont = False
      OnClick = lblLinkClick
      ExplicitWidth = 121
    end
    object lblDonate: TLabel
      Left = 0
      Top = 13
      Width = 798
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Alignment = taCenter
      Caption = 'Donate'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ParentColor = False
      ParentFont = False
      OnClick = lblDonateClick
      ExplicitWidth = 35
      ExplicitHeight = 13
    end
  end
  object SystrayPopupMenu: TPopupMenu
    Left = 632
    Top = 192
    object Acercade1: TMenuItem
      Caption = '&Acerca de...'
      OnClick = Acercade1Click
    end
    object Configuracin1: TMenuItem
      Caption = '&Configuraci'#243'n'
      OnClick = Configuracin1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Salir1: TMenuItem
      Caption = '&Salir'
      OnClick = Salir1Click
    end
  end
  object timerStatus: TTimer
    OnTimer = timerStatusTimer
    Left = 632
    Top = 240
  end
  object imglstAppIcons: TImageList
    Left = 536
    Top = 256
    Bitmap = {
      494C010102003C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF08FEFEFE3FFEFEFE93FEFEFEC8FEFEFEDCFDFDFDDCFEFEFEC7FEFEFE92FEFE
      FE3FFFFFFF08000000000000000000000000FFFFFF01B1B1B1FFB1B1B1FFAFAD
      ADFFAEA7A5FFBAB1A9FFBAB1A8FFBBB6B1FFBBB7B2FFBBB4ACFFBAB2AAFFBAB2
      ACFFBBB4ACFFB3ADA9FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE1AFEFE
      FE90FEFEFEECFEFEFEFDFBFBFBF4F6F6F6EAF6F6F6EAFCFCFCF3FEFEFEFDFEFE
      FEEBFDFDFD90FEFEFE190000000000000000FFFFFF01B1B1B1FFFFFFFFFFF2EF
      EFFFEFE2DAFFF9E9DBFFF7E7D9FFF9EADDFFFCEFE4FFFDF2E7FFFDF0E4FFFFF4
      ECFFFDEFE3FFB9B0A9FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE1AFEFEFEAEFEFE
      FEFBF5F5F5EEBABABAD17E7E7ED1707070DA6E6E6EDA7F7F7FCFBDBDBDCEF6F6
      F6EDFEFEFEFBFEFEFEADFDFDFD1A00000000FFFFFF01B1B1B1FFF8F8F8FFE9E3
      E0FFEEDCCCFFEBD9CBFFEDDBCEFFF0DDCDFFF2DFCFFFF1E0D1FFF4E8DDFFF7F4
      F0FFFAEBE0FFB7ACA4FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF08FEFEFE91FEFEFEFBE7E7
      E7E67D7D7DD4838383F3C6C6C6FFE5E5E5FFDFDFDFFFC1C1C1FE767676F17E7E
      7ECEEBEBEBE3FEFEFEFBFDFDFD90FFFFFF08FFFFFF01B1B1B1FFF9F9F8FFEFE1
      D4FFE2C8B8FFCDA48FFFDAAC8CFFFBD9B4FFFAD3B0FFD8AB8EFFD7B4A0FFF0DE
      D1FFF8E7D9FFB5AAA2FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF40FEFEFEECF3F3F3EF6868
      68D6494949FBF2F2F2FFFFFFFFFFF2F2F2FF727272FF9E9E9EFFD7D7D7FF8E8E
      8EFA7D7D7DCFF6F6F6EDFEFEFEEBFEFEFE3FFFFFFF01B1B1B1FFFAF7F3FFE8D5
      C7FFC79E90FFC98457FFFFC68FFFFFE3B1FFFFD69CFFFEC28DFFC98962FFD8B6
      A4FFFAEADDFFB5AAA2FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE94FEFEFEFDB4B4B4D51E1E
      1EF5929292FFF9F9F9FFFFFFFFFFDDDDDDFF1F1F1FFF151515FF959595FFF2F2
      F2FF707070F1BDBDBDCFFEFEFEFDFDFDFD93FFFFFF01B1B1B1FFFAF1EAFFEADC
      D3FFDEA479FFE6904BFFE99755FFF4A764FFF8B175FFFFD3B0FFECA367FFE9BA
      96FFFBEFE5FFB5ABA3FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEC9FBFBFBF4707070D88686
      86FFF8F8F8FFF6F6F6FFB0B0B0FF7C7C7CFF0B0B0BFF030303FF696969FFF5F5
      F5FFB0B0B0FE7B7B7BD0FCFCFCF4FEFEFEC7FFFFFF01B1B1B1FFFBF4EDFFE6CA
      B6FFD9782EFFD5752EFFF4AE73FFFFCC9CFFF9B373FFEFA565FFD4752FFFE08A
      4CFFF7E2D0FFB4ADA7FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDDDF3F3F3EC6C6C6CE1E8E8
      E8FFFFFFFFFFCECECEFF171717FF010101FF000000FF000000FF1B1B1BFFAFAF
      AFFF6D6D6DFF5C5C5CDBF6F6F6EAFDFDFDDCFFFFFF01B1B1B1FFFEFCFAFFDDA8
      83FFCE6B27FFDE8741FFE99955FFEEA05EFFFFE5C8FFF1B07BFFD8792EFFC356
      0CFFF0C9ABFFB2AEACFFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEDDF1F1F1ED636363E2D7D7
      D7FFFEFEFEFFE4E4E4FF323232FF030303FF1B1B1BFF131313FF060606FF2020
      20FF0B0B0BFF4A4A4ADBF6F6F6EAFEFEFEDCFFFFFF01B1B1B1FFFFFFFFFFD9A0
      7EFFD37A3BFFF4BE94FFE18E4BFFE4914FFFECA66FFFE49456FFD5762BFFC052
      05FFEEC4A7FFB2B0AFFFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEC9FBFBFBF4656565DA6161
      61FFF8F8F8FFFEFEFEFF808080FF404040FF4D4D4DFF2F2F2FFF0C0C0CFF0404
      04FF000000FF6C6C6CD4FCFCFCF4FEFEFEC8FFFFFF01B1B1B1FFFFFFFFFFEBCD
      B7FFBC4A00FFD47732FFE09052FFFFE6CFFFF4C097FFDC8A4BFFDF9159FFC55C
      12FFF6E1D2FFB3B2B1FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE95FEFEFEFDB0B0B0D85353
      53F6BCBCBCFFFDFDFDFFC2C2C2FF363636FF0B0B0BFF0C0C0CFF040404FF0101
      01FF0F0F0FF4B8B8B8D3FEFEFEFDFEFEFE93FFFFFF01B1B1B1FFFFFFFFFFF6F5
      F5FFCC7537FFDA8B54FFF1BE97FFF5C6A3FFF1BC94FFEEB68EFFE5A476FFEAB7
      92FFFEFBF9FFB2AEABFFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD41FEFEFEECF2F2F2F06969
      69DB323232FCE1E1E1FFBDBDBDFF6E6E6EFF242424FF181818FF0D0D0DFF0404
      04FB6B6B6BD5F4F4F4EFFEFEFEECFEFEFE3FFFFFFF01B1B1B1FFFFFFFFFFF7F7
      F7FFF7F1EDFFCA733AFFF9CFB3FFFFE3CBFFFFE0C9FFEBB48CFFDB9668FFFDF8
      F4FFFDF8F5FFB1AEACFFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF08FEFEFE92FEFEFEFBE4E4
      E4E86C6C6CDB7E7E7EF6C7C7C7FFD7D7D7FFB2B2B2FF979797FF464646F56969
      69D6E7E7E7E6FEFEFEFBFEFEFE91FFFFFF08FFFFFF01B1B1B1FFFFFFFFFFF8F8
      F8FFF9F9F9FFFAFAFAFFE4BFABFFDFAA86FFE4B695FFF1D7C5FFFEFDFCFFFEFC
      FAFFFEFDFCFFB1B1B1FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE1BFEFEFEAFFEFE
      FEFBF2F2F2F0B2B2B2D8767676DA686868E2696969E1767676D8B5B5B5D5F3F3
      F3EFFEFEFEFBFEFEFEAEFEFEFE1A00000000FFFFFF01B1B1B1FFFFFFFFFFF9F9
      F9FFFAFAFAFFFCFCFCFFFDFDFDFFF7EFEBFFF9F0EBFFFFFFFFFFFFFFFFFFFBFA
      FAFFFFFFFFFFB1B1B1FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE1BFEFE
      FE92FEFEFEECFEFEFEFDFBFBFBF4F2F2F2EDF3F3F3ECFBFBFBF4FEFEFEFDFEFE
      FEECFEFEFE91FEFEFE1A0000000000000000FFFFFF01B1B1B1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB1B1B1FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF08FEFEFE41FEFEFE95FEFEFEC9FEFEFEDDFEFEFEDDFEFEFEC9FEFEFE94FFFF
      FF40FFFFFF08000000000000000000000000FFFFFF01B1B1B1FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFFFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E007000000000000C003000000000000
      8001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008001000000000000
      C003000000000000E00700000000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenuLauncher: TPopupMenu
    Images = imglstPopup
    OnPopup = PopupMenuLauncherPopup
    Left = 632
    Top = 64
    object Abrirenelnavegador1: TMenuItem
      Caption = 'Abrir en &navegador predet.'
      ImageIndex = 0
      OnClick = Abrirenelnavegador1Click
    end
    object Agregaralproyecto1: TMenuItem
      Caption = 'Abrir con...'
    end
    object Abrircarpeta1: TMenuItem
      Caption = '&Abrir carpeta'
      ImageIndex = 1
      OnClick = Abrircarpeta1Click
    end
    object Abrircarpetaraiz1: TMenuItem
      Caption = 'Abrir carpeta &raiz'
      OnClick = Abrircarpetaraiz1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Crearnuevoproyecto1: TMenuItem
      Caption = '&Crear nuevo proyecto'
      ImageIndex = 3
      OnClick = Crearnuevoproyecto1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AbrircarpetaconSublimeText21: TMenuItem
      Caption = 'Abrir con Editor'
      ImageIndex = 4
      OnClick = AbrircarpetaconSublimeText21Click
    end
    object Abrircarpetacon1: TMenuItem
      Caption = 'Editar con... '
      ImageIndex = 6
      OnClick = Abrircarpetacon1Click
    end
    object Abrirenconsola1: TMenuItem
      Caption = 'Abrir en &consola'
      ImageIndex = 5
      OnClick = Abrirenconsola1Click
    end
    object VirtualHost1: TMenuItem
      Caption = 'Virtual Host'
      object vhManage: TMenuItem
        Caption = 'Convertir en Virtual Host'
        OnClick = vhManageClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object vhServidor: TMenuItem
        Caption = 'Servidor: '
        Enabled = False
      end
      object vhIP: TMenuItem
        Caption = 'IP: '
        Enabled = False
      end
      object vhPath: TMenuItem
        Caption = 'Path: '
        Enabled = False
      end
    end
  end
  object imglstMenuIcons: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 536
    Top = 328
    Bitmap = {
      494C010107006000040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000001919191A5B534FD9362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF493831FA6B686788000000000101010101010101010101010606
      06070E0E0E0F1212121314141415161616171616161714141415121212130E0E
      0E0F060606070101010101010101010101010000000000000000000000010000
      0001000000010000000100000001000000010000000100000001000000010000
      0001000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000392B25FD362822FF362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF463730FC46332DFF6B6767871E1E1E1F41414143505050535F5F
      5F636969696F6D6D6D736F6F6F7570707077707070776F6F6F756D6D6D736969
      696F5F5F5F6350505053434343451E1E1E1F1B1B1B1C5C5C5C636363636D6363
      636D6363636D6363636D6363636D6363636D6363636D6363636D6363636D6363
      636D6363636D6363636D5C5C5C631B1B1B1C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF46372FFC46342CFF48372FFDAFAEADE7EAEAE9FFEFEFEEFFECEB
      EAFFEAE9E8FFE7E6E6FFE5E4E3FFE3E2E1FFE1E0DFFFDFDEDCFFDDDCDAFFDADA
      D8FFDAD9D7FFD4D3D1FFC1C0BFFFACACAAE76D6D6D75CBCBCBFABFBFBFFDBEBE
      BEFDBEBEBEFDBEBEBEFDBEBEBEFDBEBEBEFDBEBEBEFDBEBEBEFDBEBEBEFDBEBE
      BEFDBEBEBEFDBFBFBFFDCBCBCBFA6D6D6D740000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF46372FFC46332CFF46342CFFB0B0AFE7565656FF545454FF6161
      61FF676767FF6B6B6BFF6E6E6EFF6F6F6FFF707070FF6E6E6EFF6C6C6CFF6767
      67FF626262FF565656FF565656FFAEAEACE76F6F6F768C8C8CFE434343FF3B3B
      3BFF3B3B3BFF3C3C3CFF3B3B3BFF3B3B3BFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
      3CFF3B3B3BFF444444FF939393FE6F6F6F760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF493F3AFF362822FF3628
      22FF3F832BFF45B230FF45B230FF45B230FF45B230FF3F7A2AFF89675AFF9974
      65FF362822FF46372FFC46332CFF46332CFFB0B0AFE72B2B2BFF363636FF3D3D
      3DFF3D3D3DFF434343FF464646FF484848FF484848FF474747FF444444FF4040
      40FF3A3A3AFF2B2B2BFF2B2B2BFFAFAFADE75D5D5D61828282FC424242FF3C3C
      3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
      3CFF3C3C3CFF434343FF8A8A8AFC5D5D5D610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF433732FF362822FF3628
      22FF3F782AFF43A22EFF43A22EFF43A22EFF43A22EFF3E7129FF806054FF8E6C
      5EFF362822FF463730FC46342DFF46342DFFB1B1AFE71B1B1CFF333333FF4040
      40FF3C3C3CFF333333FF343434FF373737FF373737FF363636FF333333FF3030
      30FF2B2B2BFF1B1B1CFF1B1B1CFFAFAFADE74A4A4A4D7C7C7CF74B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4C4DFF4B4D4FFF4B4D4EFF4B4C4CFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF858585F74A4A4A4D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF3628
      23FF362823FF362823FF362823FF362823FF362823FF362823FF362822FF3628
      22FF362822FF46372FFC46332CFF46332CFFB1B1AFE71B1B1CFF333333FF4040
      40FF3C3C3CFF333333FF343434FF373737FF373737FF363636FF333333FF3030
      30FF2B2B2BFF1B1B1CFF1B1B1CFFAFAFADE73939393B858585F04A4A4AFF4A4A
      4AFF4A4C4DFF495762FF446586FF3F6B98FF406992FF485D6FFF4A4E51FF4A4A
      4AFF4A4A4AFF4A4A4AFF8D8D8DF03939393B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF413530FF362822FF5051
      C5FF595FFCFF595FFCFF595FFCFF595FFBFF595FFBFF595FFCFF3E3556FF3628
      22FF362822FF46372FFC46342CFF46342CFFB1B1AFE7080808FF2D2D2DFF3939
      39FF3C3C3CFF3A3A3AFF2A2A2AFF222222FF242424FF242424FF212121FF1E1E
      1EFF191919FF080808FF080808FFAFAFAEE72A2A2A2B8E8E8EE74A4A4AFF4A4A
      4AFF495157FF2B70B6FF0D79ECFF0C77E7FF0B79EEFF1B7ADEFF43627DFF4A4C
      4DFF4A4A4AFF4A4A4AFF949495E72A2A2A2B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF382B
      30FF392D37FF392D37FF392D37FF392D37FF392D37FF392D37FF362926FF3628
      22FF362822FF46372FFC46332DFF46332CFFB0B0AFE7000000FF2A2A2AFF3434
      34FF353535FF333333FF373737FF272727FF111111FF0F0F0FFF0E0E0EFF0B0B
      0BFF060606FF000000FF000000FFAFAFAEE71D1D1D1E959595DB4B4B4BFF4A4A
      4AFF4A4F52FF395F83FF336697FF3E6B91FF2A79C2FF0281FCFF2F6FACFF4A4E
      51FF4A4A4AFF4C4C4CFF9B9B9BDB1D1D1D1E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF372A24FF362822FF3628
      22FF362822FF395A6DFF395A6DFF395A6DFF395A6DFF395A6DFF395A6DFF3958
      6AFF362822FF463730FC46342DFF46342DFFAFAFAFE7000000FF8F8F8FFF3A3A
      3AFF363636FF2C2C2CFF333333FF333333FF292929FF090909FF000000FF0000
      00FF000000FF000000FF000000FFAFAFAFE713131314989898CD4E4E4EFF4B4B
      4BFF4B4C4DFF4C5A64FF4B789DFF3E8BCAFF228EEAFF1282E3FF3B658AFF4B4E
      50FF4B4B4BFF505050FF9C9C9CCD131313140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF40342FFF362822FF3628
      22FF362822FF3FB3F1FF3FB3F1FF3FB3F1FF3FB3F1FF3FB3F1FF3FB3F1FF3EB0
      EBFF362822FF46372FFC46332CFF46342CFFAFAFAFE7000000FF5F5F5FFFC9C9
      C9FF2B2B2BFF3A3A3AFF3E3E3EFF3B3B3BFF393939FF373737FF1A1A1AFF0000
      00FF000000FF000000FF000000FFAFAFAFE70B0B0B0C989898BC5E5E5EFF5959
      59FF595B5DFF5582A3FF47A9F6FF3E97DCFF4386B9FF507593FF586067FF5959
      59FF595959FF606060FF9A9A9ABC0B0B0B0C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF463730FC46482DFF49362FFFAFAFAEE7000000FFABABABFF5959
      59FF474747FF494949FF494949FF464646FF444444FF414141FF424242FF3030
      30FF080808FF000000FF000000FFB0B0AFE705050506919191A9727272FF6B6B
      6BFF6B6D6FFF6189A5FF52ADEFFF60ACE1FF64A8D7FF6299C0FF6A7278FF6B6B
      6BFF6B6B6BFF757575FF939393A9050505060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000362822FF362822FF362822FF3628
      22FF362822FF362822FF362822FF362822FF362822FF362822FF362822FF3628
      22FF362822FF4A3F56FC4F52A8FF45352FFFAFAFADE7000000FF0E0E0EFF0D0D
      0DFF0D0D0DFF0D0D0DFF0D0D0DFF0C0C0CFF0C0C0CFF0B0B0BFF0B0B0BFF0A0A
      0AFF090909FF000000FF060606FFB0B0AFE701010102848484928A8A8AFF8181
      81FF818282FF80888DFF6E92ABFF6299C0FF6299BFFF7091A7FF818588FF8181
      81FF818181FF8C8C8CFF84848492010101020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000382A24FE382A24FE382A24FE382A
      24FE382A24FE382A24FE382A24FE382A24FE382A24FE382A24FE382A24FE382A
      24FE382A24FE473732FB46342EFE46342EFEAEAEACE7B3B3B1FFB0AFAEFFB3B2
      B2FFB6B5B5FFB9B8B8FFBCBBBBFFBEBEBEFFC0C0BFFFC1C1C0FFC2C2C2FFC3C2
      C2FFC5C5C5FFC2C2C2FFBFBFBFFFB0B0AFE7000000004E4E4E519B9B9BF09595
      95FF959595FF959596FF959799FF95999CFF95999CFF959798FF959595FF9595
      95FF959595FF9B9B9BED4D4D4D50000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040342DFF433843FF423741FF3F61
      72FF425E2FFF40352DFF40342DFF40342DFF40342DFF40342DFF40342DFF4034
      2DFF40342DFF40342DFF40342DFF635B56D80101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010000000008080809727272819191
      91B7919191B7919191B7919191B7919191B7919191B7919191B7919191B79191
      91B7919191B76D6D6D7906060607000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000716C6BA4423742FF433842FF3F69
      80FF42652FFF40342DFF40332DFF40332DFF40332DFF40332DFF40332DFF4033
      2DFF40332DFF40332DFF433630FD1919191A0101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010000000000000000020202030707
      0708070707080707070807070708070707080707070807070708070707080707
      0708070707080202020300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010101020202038082
      82B36E7170F16869687F222222233B3B3B3F4948474F2929292B202020211616
      16170A0A0A0B0202020301010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101020202030202
      0203020202030202020302020203020202030202020302020203020202030202
      0203020202030202020301010101010101010101010101010101060606070E0E
      0E0F161616171E1E1E1FA27954D5A87245EDA87345EDA97345EDA97346EDA973
      45EDA97345EDA87346EBA77548E30606060701010101040404053F3F3F438789
      88F9F5F5F5FF6C6D6BFD845332F5894F28FB815437F9645346FF896046E1726A
      658D343434372727272910101011010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      010101010101010101010101010101010101444343496C6A69916C6A69916E6C
      6B936F6E6C9577726F9FBF7030FFC1793DFFC2793DFFC2793DFFC2793DFFC279
      3DFFC1783DFFC1783CFFBF7233FF6663607301010101121212133838383B6668
      66FBFCFCFCFFD2D2D1FF96826EFFB08969FF8B8B88FF7D8280FFAD7851FF905B
      36F7896750D54848474F2626262712121213010101015F5A565FB4957FB5B495
      7FB5B4957FB5B4957FB5B4957FB5B3957EB5B3957EB5B3957EB5B4957FB5B495
      7FB5B4957FB5B4957FB55F5A565F010101010101010153514F5B776D6495736A
      638B736B638D736A638D736A638D736A638D736B638D736A638D736A638D736B
      638D736A638B776D649535343437010101016B6460F5C0BDBBFFC2BFBEFFC5C2
      C0FFC7C5C3FFCDB7A5FFD3884BFFD58F56FFD59056FFD59056FFD69057FFD590
      56FFD58F56FFD48F55FFD2894CFFA48264FF0101010110101011807167A37662
      53FDD9D9D8FFFDFDFDFF6D6E6AFF5E5E58FFE7E7E7FF606361FFAE7347FFB98A
      63FFA26D47FD8A5838ED2D2D2D2F12121213010101018980798BFCBA86FFFCBA
      86FFFCBA86FFFCBA86FFFCBA86FFFCBA85FFFBBA85FFFCBA85FFFCBA86FFFCBA
      86FFFCBA86FFFCBA86FF8980798B0101010101010101997D64B7B1682AFFAF6A
      2FFDB1692CFFB36C2FFFB56E32FFB46C30FFB26A2DFFB46D32FFB36B2EFFB068
      2AFFAD682DFDAF6425FF66605B6D010101017B7572FBE1DFDEFFE4E3E2FFE8E7
      E6FFECEBEAFFEDCBB2FFE59C65FFE7A36FFFE7A470FFE8A470FFE8A471FFE8A4
      70FFE7A370FFE6A26FFFE49C66FFC79873FF0101010145444349885636F7B191
      76FF787A77FFFDFDFDFFC7C6C5FFDADADAFFFFFFFFFF5B5D5BFFA9693AFFA96B
      3CFFB98962FF9D6A46F9847366A901010101010101018D837B8FF3B181F9F9B2
      7AFFF9B27AFFF9B27AFFF9B27AFFF9B27AFFF9B27AFFF9B27AFFF9B27AFFF9B2
      7AFFF9B27AFFF3B181F98D837B8F0101010102020203AD825ECDC37A3EFFC280
      45FBBF783CFDDEA880FDF3CBADFDE1AD86FDBF773BFDECBF9FFDDEA880FDBD76
      3AFDBF8047F9C17537FF8173688B010101017B7572FBE1E0DFFFE5E4E3FFE9E8
      E8FFEDEDECFFF6CBADFFF0B183FFF3B990FFF6B688FFF7B689FFF7B689FFF7B6
      89FFF6B688FFF5B587FFF3AF7DFFE3A87DFF22222223515553FF9FA09EFFA3A3
      A1FF8E8E8CFFF0F0F0FFFEFEFEFFF5F5F5FFFEFEFEFF595B59FFAF7244FF748B
      66FFAF7347FFBE926EFF8F5935F53535343701010101A08E81A3EDAB77F5F7AA
      70FFF7AA70FFF7AA70FFF7AA70FFF7AA70FFF7AA70FFF7AA70FFF7AA70FFF7AA
      70FFF7AA70FFEDAB77F5A08E81A3010101011C1C1C1DC48753E9D0894EFFD18A
      4FFFD28D53FFEFC4A3FFFAD8C0FFF0C6A7FFDEA576FFF5D0B5FFEEC3A2FFD08B
      50FFCD8952FDCE8648FFA4866EB5010101017B7572FBE1DFDEFFE4E3E2FFE8E7
      E7FFECEBEBFFF0EFEFFFD1B39CFFDDDCDCFFEFD9CBFFEFCEB7FFF1CEB7FFF0CE
      B6FFEDCAB2FFE9C6AEFFE3B798FFD4AD94FF181818196D5746FDB1B1AFFFF9F9
      F9FFFCFCFCFFF5F5F5FFF7F7F7FFDDDDDDFFFEFEFEFF565956FFAD7D52FF2AB4
      A1FF8A855BFFBC8C65FFA26E4AFB6C65607901010101AF9480B5E4A270F1F2A1
      65FFF2A165FFF2A165FFF2A165FFF2A165FFF2A165FFF2A165FFF2A165FFF2A1
      65FFF2A165FFE4A270F1AF9480B5010101014A48464BD88F56F7DC9861FFDC97
      60FFE1A16EFFF5D1B7FFF9DFCBFFF9DBC6FFFBDFCBFFFADFCCFFF4D1B7FFE0A0
      6DFFDB965FFFDA945BFFC2926CD7121212137A7571FBDDDBDAFFE1DFDEFFE4E3
      E2FFE8E6E6FFEBEAEAFFD4AD90FFDBC5B5FFE2CCBDFFE7D2C3FFECD7C7FFECD6
      C7FFE4CEBEFFDAC5B4FFCFAA8DFF999491FF4947464D996A4AF3A79688FF7C7C
      79FFF8F9F8FFE8E8E8FFDDDDDDFFE0E0E0FFFEFEFEFF585A56FFAA8C64FF2FBC
      A9FF6A9876FFBB8A61FFB48660FF8B7363B903020203B99273C9D59462EDE391
      53FFE39153FFE39153FFE39153FFE39153FFE39153FFE39153FFE39153FFE391
      53FFE39153FFD59462EDB99273C9030202037D736C81E39C66F9E7A572FFE9A7
      74FFE8A471FFEBAA78FFF7D3BAFFFCE8DAFFFBE7D9FFF7D3BAFFEAA978FFE7A3
      6EFFE7A573FFE6A16CFFDB9C6CED403F3E4178736FFBD8D6D5FFDAD9D8FFDEDC
      DBFFE1DFDFFFE4E3E2FFEAB891FFF2B990FFF5B78CFFF6A972FFF7AA72FFF4A5
      6DFFEE9F64FFE7975AFFE09051FF97938FFF655F5C6FA57655F9C29B79FF6771
      60FF787B78FFF9F9F9FFEEEEEEFFE6E6E6FFFDFDFDFF575C59FF53BEA7FF34C3
      B0FF3EB29BFFBB8960FFC09675FF90664BDD20202021B28863CDC88855EBD687
      46FFD68746FFD68746FFD68746FFD68746FFD68746FFD68746FFD68746FFD687
      46FFD68746FFC88855EBB28863CD20202021C7A086CBF2A976FBF5B080FFF6B0
      80FFF5B183FFF4B284FFF4B182FFFAD4BAFFFAD4BBFFF3B082FFF3B083FFF2B1
      84FFF1B183FFF0AD7CFFE5A678EF7870697976706CFBD1CFCDFFD4D2D1FFD7D5
      D4FFDAD8D7FFDDDBDAFFDEDCD9FFE1DDDAFFE2DEDCFFE3DFDCFFE3DFDDFFE7E3
      E1FFE5E2DFFFE7E4E1FFE6E3E1FF9C9895FF42414045996B4BF3BEB097FF7892
      6FFF857059FF777875FFF9F9F9FFF5F5F5FFFDFDFDFF575F5BFF3ED1BEFF37C8
      B5FF4AB19AFF9DA486FFB88C69FF897466B147454349AF835ECDC38652EBD185
      46FFD18546FFD18546FFD18546FFD18546FFD18546FFD18546FFD18546FFD185
      46FFD18546FFC38652EBAF835ECD474543495A57555BB39B89C3DDC5B4FFE4CB
      BAFDF9C4A0FFFDBB8FFFFEBC90FFFDBA8CFFFDB98CFFFEBB8FFFFDBC90FFFCBB
      8EFFFCBA8EFFFBB88BFFF4B286F5C7A48DC77C7671FBD1CFCEFFD2D0CEFFD6D4
      D3FFD9D7D7FFD9D7D6FFD6D5D3FFD8D6D5FFD9D7D6FFDAD8D7FFDBD9D8FFDEDC
      DCFFE4E3E2FFE9E8E8FFE8E7E6FFA39F9CFF121212138A5028FBD7B9A2FF42AA
      95FF53AA92FF907760FF747673FFFAFAFAFFFCFCFCFF5C5F5BFF77C0A5FF79B1
      94FF33BDA9FFA6B39AFFAA7B5AF967625E732D2C2C2D67656467B8ABA2BBFBD3
      B8FFFBD3B8FFFBD3B8FFFBD3B8FFFBD3B8FFFBD3B8FFFBD3B8FFFBD3B8FFFBD3
      B8FFFBD3B8FFB8ABA2BB676564672D2C2C2D010101018E847B99DCDDDEFFE0E6
      EAFDEBEAE9FFEDDACEFFE2CEC0FFE3CFC1FFE2CDBFFFE0CABBFFDDC6B7FFDAC3
      B3FFD7C1B2FFD0B49FFF9C8D81A5676260678C8783FBDFDEDDFFE2E0E0FFE1E1
      DFFFE1E0DEFFDFDEDDFFDBDAD8FFD2D0CEFFD2D0CEFFD3D1CFFFD3D1D0FFD4D2
      D0FFDCDBDAFFEBEAEAFFEAE9E9FFAAA6A3FF01010101906C54D3BF9878FFA5B6
      9FFF3BB39EFF5AB59DFF988169FF737371FFF2F3F3FF5F605CFF78C1A6FF3EC8
      B4FF57BFABFFD1B8A0FF8F5935F52A29292B0101010101010101857B7587F5B5
      89FFF5B589FFF5B589FFF4B589FFF4B488FFF4B488FFF4B488FFF4B488FFF4B5
      89FFF5B589FF857B75870101010101010101010101018F847C99DDD5CFFFDFDA
      D6FBE6E2DFFFE9E9E8FFEBEAEAFFEDEDECFFEBEBEAFFE6E6E6FFE0E0E0FFD9D9
      D8FFD1D4D5FDC9C0B6FF5653515901010101928D89FDE4E3E2FFE7E6E5FFEAE9
      E9FFEDECEBFFEEEDEDFFEBEAE9FFE5E4E2FFD3D1D0FFCBC9C8FFCCCAC8FFCDCB
      CAFFCECCCAFFD7D7D6FFECEBEBFFAFACAAFF010101012A29292B8E5934F5D6B9
      A2FFA2AF94FFAD9C74FFCD9C74FFA3876FFF626562FF5E615DFFA9AC8BFF85B6
      9CFFCFC4AEFFA67957F7776D678B01010101010101010101010190888193F5CC
      B0FFF5CCB0FFF1BB95FFEEAA79FFEEAA79FFEEAA79FFEEAA79FFEEAA79FFEEAA
      79FFEEAA79FF76706A7901010101010101010101010191827699E09F6DFFE2A4
      74FDE6A473FFE7A06AFFE9A26DFFE8A16CFFE79F6AFFE49C66FFE09861FFDC94
      5BFFD68F56FDD4894DFF5A56535D01010101827C78FBDDDDDDFFE2E1E1FFE5E5
      E4FFE8E7E7FFEAEAE9FFECEBEBFFEDEDECFFEAE9E9FFD3D2D2FFAEACAAFFAAA8
      A8FFABA9A8FFABA9A8FFB6B4B4FF959290FF01010101010101016D66627B9966
      44F5D3B39BFFDABAA1FFD2A988FFD1A380FF9B8B71FF958779FFDAB69AFFE0C6
      B1FFAF8566F98F684DDB06060607010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      010101010101010101010101010101010101010101018A80798DF3BF98FFE4BB
      9CEDE8BC9FEFE6AC83EFE6A374EFE5A475EFE3A171EFE09F6DEFDE9B69EFDA97
      62EFD59360EDDB8A4AFD4F4C4A51010101013E3530F9362D27FF3A312BFF3E35
      30FF433A35FF473F39FF4B433EFF4F4742FF544C47FF58514CFF5C5550FF4E46
      41FF372E28FF362D27FF352C26FF39302AFF0101010101010101010101015351
      4F598D5836F1B58C6CFBD1B19AFFE1C7B4FFE5CDBAFFD9BCA6FFC7A286FF9561
      3FF5827369A10C0C0C0D01010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010108080809141414151212
      1213121212131212121312121213121212131212121312121213121212131212
      12131212121312121213040404050101010157524EDF372E28FF3B322CFF4139
      33FF47403AFF4F4641FF554D48FF59534DFF5E5652FF625A55FF645E59FF6761
      5CFF615A55FF36302CFF2E2824FF4A4340EB0101010101010101010101010101
      0101161616177D706895906D54D5884E26FB884D24FD906244E5897567B14241
      4045010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010101010101010101010101
      0101010101010101010101010101010101012A2A2A2B66666571686767736868
      67736868677368686773686867736A6969756A6A69756A6A69756A6A69756B6B
      6A776C6B6B776B6B6A776666657132323233424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000010000C00300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080010000
      000000008001000000000000C003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object FileOpenDialog1: TOpenDialog
    Left = 632
  end
  object tmrMonitor: TTimer
    OnTimer = tmrMonitorTimer
    Left = 632
    Top = 312
  end
  object Actions: TActionManager
    Left = 632
    Top = 120
    StyleName = 'Platform Default'
    object OpenHomeRootFolder: TAction
      Caption = 'OpenHomeRootFolder'
      ShortCut = 24612
      OnExecute = OpenHomeRootFolderExecute
    end
  end
  object Colorization1: TColorization
    Color = clBlack
    Left = 729
    Top = 264
  end
  object imglstProjects: TImageList
    Left = 530
    Top = 58
  end
  object imglstSidebar: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 537
    Top = 129
    Bitmap = {
      494C01010A001800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      000000000080000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0080000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000070000000FF000000FF00000050000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000100000
      00600000000000000000000000C0000000FF000000FF00000080000000000000
      0000000000600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000010000000D00000
      00FF000000C000000070000000F0000000FF000000FF000000D0000000700000
      00D0000000FF000000A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      009F0000009F000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000070000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000030000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      001000000010000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000C00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000009000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00E0000000E0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000700000
      00FF000000FF000000FF000000DF0000007F0000008F000000EF000000FF0000
      00FF000000FF0000005000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00DF000000DF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C00000000000000000000000000000000000000070000000B0000000F00000
      00FF000000FF000000DF00000010000000000000000000000030000000EF0000
      00FF000000FF000000E0000000A0000000500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      001000000010000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF0000008000000000000000000000000000000000000000B00000
      00FF000000FF000000FF000000FF000000C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00A0000000A0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF0000009000000000000000000000000000000000000000C00000
      00FF000000FF000000FF000000FF000000C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C000000000000000000000000000000000000000600000007F000000DF0000
      00FF000000FF000000F000000030000000000000000000000050000000FF0000
      00FF000000FF000000CF0000007F000000400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000700000
      00FF000000FF000000FF000000F0000000B0000000C0000000FF000000FF0000
      00FF000000FF0000004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000AF0000007F0000007F0000007F0000
      007F0000007F0000007F0000007F0000007F000000AF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000D00000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000B000000000000000300000005000000000000000000000
      0050000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000400000000000000000000000000000
      00000000000000000000000000000000000000000040000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000060000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000B0000000FF000000F000000020000000700000
      00FF000000F00000003000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000400000000000000000000000000000
      00000000000000000000000000000000000000000040000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000A00000
      00FF0000008F00000050000000DF000000FF000000FF000000CF000000400000
      00AF000000FF0000009F00000070000000FF000000FF000000FF000000FF0000
      00FF000000FF0000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000600000000000000000000000000000
      00000000000000000000000000000000000000000060000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      00300000000000000000000000B0000000FF000000FF00000080000000000000
      0000000000C000000080000000A0000000FF000000FF000000FF000000FF0000
      00FF000000FF0000005000000080000000300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000DF000000BF000000BF000000BF0000
      00BF000000BF000000BF000000BF000000BF000000DF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000060000000BF000000BF00000030000000000000
      0020000000FF000000FF000000FF000000FF000000FF000000CF000000EF0000
      00FF000000FF000000FF000000FF000000C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000400000000000000000000000000000
      00000000000000000000000000000000000000000040000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0040000000EF000000FF000000FF000000FF0000006000000000000000100000
      00CF000000FF000000FF000000FF000000CF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000400000000000000000000000000000
      00000000000000000000000000000000000000000040000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000010000000FF000000FF000000CF0000000000000000000000000000
      0040000000FF000000FF0000009F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000400000000000000000000000000000
      00000000000000000000000000000000000000000040000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001000000080000000FF000000FF000000F00000001000000000000000000000
      0060000000FF000000FF000000D0000000300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000E0000000C0000000C0000000C00000
      00C0000000C0000000C0000000C0000000C0000000E0000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0060000000FF000000FF000000FF000000FF000000C000000050000000600000
      00F0000000FF000000FF000000FF000000E00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010000000EF000000FF000000EF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000300000007F0000007F0000007F0000007F0000007F0000007F0000
      007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000
      0030000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000200000000000000060000000FF000000FF000000FF000000FF0000
      00FF000000EF0000001000000020000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000100000008000000080000000800000008000000080000000800000
      0080000000800000008000000080000000800000008000000080000000800000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000090000000FF000000FF0000009F000000DF0000
      00FF000000FF0000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000060000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000030000000BF000000BF00000000000000400000
      00EF0000008F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000077000000FC0000
      00FC000000FC000000FB00000072000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000060000005B000000AB000000DF0000
      00F9000000F9000000DE000000AA000000590000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A7000000FF0000
      00FF000000FF000000FF000000A2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000055000000E3000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000E100000052000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000CC000000FF0000
      00FF000000FF000000FF000000C7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000200000094000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000900000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000C1000000B60000004F000000190000009D000000FC000000FF0000
      00FF000000FF000000FF000000FB000000990000001700000051000000B70000
      00BE000000010000000000000000000000000000000000000000000000000000
      000000000094000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00910000000000000000000000000000000000000060000000F0000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000F00000006000000040000000E0000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E0000000400000000000000000000000000000
      0061000000FF000000FF000000FF000000FE000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FE000000FF000000FF0000
      00FF0000005C0000000000000000000000000000000000000000000000000000
      0056000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000052000000000000000000000000000000F0000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F0000000F0000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E000000000000000000000000D0000
      00E7000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E40000000B00000000000000000000000000000000000000070000
      00E4000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E1000000060000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000870000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000D80000
      008D0000008D000000DA000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00000082000000000000000000000000000000000000005C0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000590000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000CF000000EF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000000000005F0000
      00F9000000FF000000FF000000FF000000FF000000FF00000094000000030000
      0000000000000000000400000097000000FF000000FF000000FF000000FF0000
      00FF000000F80000005B00000000000000000000000000000000000000AD0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000AA0000000000000000000000FF000000FF000000400000
      00A0000000A000000040000000FF000000FF00000040000000C0000000FF0000
      009F0000002000000050000000FF0000009F0000002000000010000000F00000
      00800000003000000040000000FF000000FF000000FF000000FF000000FF0000
      00FF0000008000000000000000FF000000FF000000FF000000C0000000000000
      00C0000000C000000000000000C00000000000000080000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0039000000E4000000FF000000FF000000FF000000D800000003000000000000
      0000000000000000000000000004000000DA000000FF000000FF000000FF0000
      00E2000000360000000000000000000000000000000000000000000000E10000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000DE0000000000000000000000FF000000FF000000400000
      00700000007000000040000000FF000000FF00000040000000C0000000FF0000
      0070000000E000000010000000FF00000010000000D000000030000000FF0000
      0080000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000800000000000000080000000AF000000FF000000C0000000000000
      00C0000000C000000000000000C000000000000000400000008F000000DF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000007D000000FF000000FF000000FF0000008C00000000000000000000
      00000000000000000000000000000000008D000000FF000000FF000000FF0000
      0077000000000000000000000000000000000000000000000000000000FA0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F90000000000000000000000FF000000FF000000400000
      00700000006000000040000000FF000000FF00000020000000A0000000FF0000
      00CF00000040000000A0000000FF00000000000000FF00000040000000FF0000
      0080000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000008000000000000000000000000000000070000000C0000000000000
      00300000003000000000000000C0000000000000000000000000000000100000
      00DF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000007D000000FF000000FF000000FF0000008B00000000000000000000
      00000000000000000000000000000000008D000000FF000000FF000000FF0000
      0077000000000000000000000000000000000000000000000000000000FA0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F90000000000000000000000FF000000FF000000400000
      00600000006000000040000000FF000000B00000005000000020000000FF0000
      0050000000C00000007F000000FF00000020000000F000000010000000FF0000
      0080000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000008000000000000000FF0000005000000010000000C0000000000000
      00300000003000000000000000C00000000000000080000000D0000000000000
      0090000000FF000000FF000000FF000000FF0000000000000000000000000000
      0035000000E2000000FF000000FF000000FF000000D600000002000000000000
      0000000000000000000000000003000000D8000000FF000000FF000000FF0000
      00E0000000330000000000000000000000000000000000000000000000E10000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000DF0000000000000000000000FF000000FF000000100000
      00900000009000000010000000FF00000040000000C000000060000000B00000
      00A00000003000000080000000FF000000A00000002000000070000000FF0000
      0080000000C0000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000008000000000000000800000001000000030000000C0000000000000
      00C0000000C000000000000000C0000000000000004000000050000000000000
      00B0000000FF000000FF000000FF000000FF00000000000000000000005C0000
      00F8000000FF000000FF000000FF000000FF000000FF00000091000000020000
      0000000000000000000300000094000000FF000000FF000000FF000000FF0000
      00FF000000F70000005700000000000000000000000000000000000000AE0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000AB0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF00000080000000000000000000000030000000D0000000C0000000000000
      00C0000000C000000000000000C0000000000000000000000010000000700000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000890000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000D60000
      008B0000008C000000D8000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF00000084000000000000000000000000000000000000005E0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000005B0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000000000000E0000
      00E9000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E60000000C00000000000000000000000000000000000000070000
      00E5000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E3000000060000000000000000000000F0000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000EF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0063000000FF000000FF000000FF000000FE000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FE000000FF000000FF0000
      00FF0000005E0000000000000000000000000000000000000000000000000000
      0058000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000005500000000000000000000000000000040000000CF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000CF00000040000000E0000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000DF0000000000000000000000000000
      0002000000C6000000BB000000540000001D000000A3000000FD000000FF0000
      00FF000000FF000000FF000000FC000000A00000001B00000056000000BC0000
      00C2000000010000000000000000000000000000000000000000000000000000
      000000000097000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0094000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000040000000DF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000DF000000400000000000000000000000000000
      00000000000000000000000000000000000000000000000000CC000000FF0000
      00FF000000FF000000FF000000C7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000200000097000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000940000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000A8000000FF0000
      00FF000000FF000000FF000000A3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000058000000E5000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000E400000056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007A000000FF0000
      00FF000000FF000000FF00000076000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000070000005E000000AE000000E10000
      00FA000000FA000000E1000000AD0000005C0000000700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000510000
      00EF000000790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000051000000FA0000
      00FF000000FF0000007C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      004F000000E9000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00E80000004D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000051000000FA000000FF0000
      00FF000000FF000000FF00000079000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00EA000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E800000000000000000000000000000000000000000000004F0000
      00E9000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E80000004D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000051000000FA000000FF000000FF0000
      00FF000000FF000000FF000000EA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000EA0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000E800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000051000000FA000000FF000000FF000000FF0000
      00FF000000FF000000F30000003C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000051000000FA000000FF000000FF000000FF000000FF0000
      00FF000000F30000003C00000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000051000000FA000000FF000000FF000000FF000000FF000000FF0000
      00F30000003C0000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0051000000FA000000FF000000FF000000FF000000FF000000FF000000F30000
      003D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000040000000000000000000000510000
      00FA000000FF000000FF000000FF000000FF000000FF000000F40000003D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000045000000B2000000F1000000FF000000EF000000B8000000FA0000
      00FF000000FF000000FF000000FF000000FF000000F40000003D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000050000
      009E000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F40000003E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF000000000000000000000000000000000000009E0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000F40000003E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000047000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F40000003E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000FF000000FF000000000000000000000000000000B5000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000BA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000000000000000000001000000F4000000FF0000
      00FF000000FF0000007D00000080000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000C000000FF000000FF0000
      00FF00000077000000000000000000000080000000FF000000FF000000FF0000
      00FF000000FF000000FF00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000000000000000000002000000F7000000FF0000
      00720000000000000000000000000000000000000080000000FF000000FF0000
      00FF000000FF000000ED00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000E90000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000E9000000000000000000000000000000BB0000006D0000
      00000000000000000000000000000000000000000080000000FF000000FF0000
      00FF000000FF000000AA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E9000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00370000003A000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E90000000000000000000000000000000000000000000000510000
      00E9000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000EA0000004F00000000000000000000000000000012000000000000
      000000000000000000000000000000000080000000FF000000FF000000FF0000
      00FF000000FE0000003900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0051000000E9000000FF000000FF000000FF000000FF000000FF000000FF0000
      003400000037000000FF000000FF000000FF000000FF000000FF000000FF0000
      00EA0000004F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000080000000FF000000FF000000FF000000FF0000
      00FF0000008A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000094000000FF0000
      00FF000000FF000000FF0000008E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000080000000FF000000FF000000FF000000FF000000FD0000
      0086000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008000000950000
      00F2000000F10000009200000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000110000009D000000D6000000E7000000D3000000960000002E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object imglstToolbar: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 570
    Top = 229
    Bitmap = {
      494C010104000800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000004E000000AF000000E6000000FF000000EF000000BF0000
      006A000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070778131313BC0707
      0771000000250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000900000063000000B7000000E8000000F6000000E0000000A6000000490000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006000000420000006E000000750000005B0000001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0016000000BC000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000DB0000003300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005050567212121FF1818
      18D61F1F1FF6191919D909090981000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000004F0000
      00E1000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C40000002A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020000006C000000E7000000FE000000FE000000FE000000FE000000FC0000
      00B0000000230000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000120000
      00D8000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F100000033000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001D212121FD0000
      00130000000A0404045B212121FF0E0E0EA40000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000008A000000FF0000
      00FF000000FF000000F3000000A500000089000000B4000000FD000000FF0000
      00FF000000F40000005400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060000
      00AE000000FE000000FE000000FE000000FE000000FE000000FE000000FE0000
      00FE000000EF0000004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000A90000
      00FF000000FF000000FF000000FF000000DB000000BF000000CB000000FF0000
      00FF000000FF000000FF000000DB000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000161616D10303
      03540000000002020241212121FF212121FF0E0E0EA500000003000000000000
      0000000000000000000000000000000000000000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000095000000FF000000FF0000
      00FF000000D30000001D0000000000000000000000000000003C000000F00000
      00FF000000FF000000FC00000058000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000980000
      00FE000000FE000000BD000000F9000000FE000000FE000000FE000000C70000
      00EF000000FE000000EF00000023000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000002D000000FE0000
      00FF000000FF000000FF000000FF000000700000000000000030000000FF0000
      00FF000000FF000000FF000000FF0000006A0000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090909861111
      11B30606066C131313BF212121FF212121FF212121FF0E0E0EA6000000040000
      0000000000000000000000000000000000000000000800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000006F000000FF000000FF000000FF0000
      00FD000000280000000000000000000000000000000000000000000000630000
      00FF000000FF000000FF000000F9000000340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000036000000FD0000
      00FE000000A00000000300000054000000F9000000FE000000BF0000000B0000
      0037000000EF000000FE000000B1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000084000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000030000000FF0000
      00FF000000FF000000FF000000FF000000BF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000281D1D
      1DEF212121FF212121FF212121FF212121FF212121FF212121FF0F0F0FA70000
      0004000000000000000000000000000000000000000500000000000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016000000F5000000FF000000FF000000FF0000
      00CD0000000000000000000000000000000000000000000000000000000A0000
      00FD000000FF000000FF000000FF000000CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000009F000000FE0000
      00FD0000004F000000000000000000000054000000BA0000000B000000000000
      000B000000C7000000FE000000FC0000001E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000B5000000FF0000
      00FF000000F20000003000000030000000150000000000000009000000300000
      0030000000CB000000FF000000FF000000EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01351D1D1DEF212121FF212121FF212121FF212121FF212121FF212121FF0F0F
      0FA8000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000002A000000FF000000FF000000FF000000FF0000
      00C300000000000000000000000000000045000000D8000000DF000000DF0000
      00FD000000FF000000FF000000FF000000EA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000DE000000FE0000
      00FE000000F70000004C000000000000000000000001000000000000000B0000
      00BF000000FE000000FE000000FE0000005B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000BF000000FF0000
      00FF000000EF0000000000000000000000000000000000000000000000000000
      0000000000BF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101341D1D1DEE212121FF212121FF212121FF212121FF212121FF2121
      21FF0B0B0B910000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000A5000000FF000000FF000000FF0000
      00F30000000E00000000000000000000009F000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000640000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000F9000000FE0000
      00FE000000FE000000F70000003E000000000000000000000001000000BA0000
      00FE000000FE000000FE000000FE000000750000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000AD000000FF0000
      00FF000000F60000007000000070000000310000000000000015000000700000
      0070000000DB000000FF000000FF000000E60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101341D1D1DEE212121FF212121FF212121FF212121FF1A1A
      1AE2000000220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000E000000D0000000FF000000FF0000
      00FF0000009E00000001000000000000009F000000FF000000FF000000FF0000
      00FF000000FF000000FF0000009D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000F1000000FE0000
      00FE000000FE000000BF0000000B000000000000000000000000000000540000
      00F9000000FE000000FE000000FE0000006E0000000000000000000000000000
      000000000000000000000000002A000000300000001E00000000000000000000
      002D000000300000003000000030000000090000000000000074000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000030000000FF0000
      00FF000000FF000000FF000000FF000000AF0000000000000000000000000000
      0000000000000000000000000021000000270000001800000000000000000000
      0024000000270000002700000027000000270000002700000027000000270000
      00230000000000000000010101331D1D1DEE212121FF212121FF1A1A1AE20000
      0023000000000909098307070773000000000000000000000000000000000000
      000000000000000000000000002A000000300000001E00000000000000000000
      002D0000003000000030000000090000000000000015000000CE000000FF0000
      00FF000000FF000000C000000057000000B5000000FF000000FF000000FF0000
      00FF000000FF0000009F00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000C4000000FE0000
      00FE000000BF0000000B000000000000000B0000003E00000000000000000000
      0054000000F9000000FE000000FE000000420000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF0000005E000000000000001B000000F90000
      00FF000000FF000000FF000000FF000000700000000000000030000000FF0000
      00FF000000FF000000FF000000FF0000004E0000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF070707780000000000000000010101321D1D1DED1A1A1AE3000000230000
      000009090982212121FF212121FF0606066A0000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000B300000006000000000000000B0000009C0000
      00FE000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00F50000006F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000C3000000D00000006300000000000000120000
      00D0000000D0000000D0000000CA000000070000000000000071000000FE0000
      00FD0000003C000000000000000B000000BF000000F70000004C000000000000
      0003000000BD000000FE000000E7000000060000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000C30000000000000000000000820000
      00FF000000FF000000FF000000FF000000F6000000EF000000F2000000FF0000
      00FF000000FF000000FF000000BC000000010000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF212121FF0808087900000000000000000101013100000024000000000909
      0981212121FF212121FF212121FF171717D00000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000B40000000C00000000000000000000
      003A000000B1000000F9000000FF000000FF000000FF000000F0000000970000
      001E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000EE000000FE0000007800000000000000170000
      00FE000000FE000000FE000000FE00000059000000000000000C000000E30000
      00FE000000EC0000003C000000BF000000FE000000FE000000F70000004F0000
      00A0000000FE000000FE0000006C000000000000000000000000000000000000
      0000000000000000000000000046000000500000003200000000000000000000
      004B000000500000005000000050000000500000000900000000000000030000
      00B1000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000D800000015000000000000000000000000000000000000
      00000000000000000000020202430303034F0101013100000000000000000202
      02490303034F0303034F0303034F0303034F0303034F0303034F0303034F0303
      034F0303034F0303034F0000000B000000000000000000000000070707712121
      21FF212121FF212121FF212121FC040404580000000000000000000000000000
      0000000000000000000000000046000000500000003200000000000000000000
      004B000000500000005000000050000000500000002B00000000000000000000
      0000000000000000000C00000039000000440000003100000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000910000009A00000049000000000000000E0000
      009A0000009A0000009A0000009A0000007200000000000000000000003D0000
      00F5000000FE000000FD000000FE000000FE000000FE000000FE000000FD0000
      00FE000000FE000000AE00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000300000082000000F9000000FF000000FF000000FF000000FF000000FF0000
      00FE000000A90000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000231A1A
      1AE3212121FF212121FC0404045D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003D000000E3000000FE000000FE000000FE000000FE000000FE000000FE0000
      00FD000000980000000600000000000000000000000000000000000000000000
      0000000000000000000000000038000000400000002800000000000000000000
      003C000000400000004000000040000000400000004000000040000000170000
      0000000000000000001B00000074000000AD000000BF000000B5000000840000
      002D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101320202023B0000002400000000000000000101
      01360202023B0202023B0202023B0202023B0202023B0202023B0202023B0202
      023B0202023B0202023B0202023B000000170000000000000000000000000000
      00220C0C0C9A0303034F00000000000000000000000000000000000000000000
      0000000000000000000000000038000000400000002800000000000000000000
      003C000000400000004000000040000000400000004000000040000000400000
      00400000004000000040000000400000001C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010000000000000000000000000000
      0001000000010000000100000001000000010000000100000001000000000000
      00000000000C00000071000000C4000000F1000000F9000000DE0000009F0000
      0036000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000E80000
      004F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF212121FF212121FF212121FF040404620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000E6000000F50000007400000000000000160000
      00F5000000F5000000F5000000F5000000F5000000F5000000F40000007A0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000C20000005E00000015000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF212121FF212121FF212121FF040404620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000EE000000FE0000007800000000000000170000
      00FE000000FE000000FE000000FE000000FE000000FE000000FE000000FE0000
      00CF000000560000000700000000000000000000000000000000000000000000
      0004000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000038000000400000002800000000000000000000
      003C000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101320202023B0000002400000000000000000101
      01360202023B0202023B0202023B0202023B0202023B0202023B0202023B0202
      023B0202023B0202023B0202023B000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000038000000400000002800000000000000000000
      003C000000400000004000000040000000400000004000000040000000400000
      00400000004000000040000000400000001C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000006C0000007300000037000000000000000A0000
      0073000000730000007300000073000000730000007300000073000000730000
      0073000000730000006800000033000000010000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000046000000500000003200000000000000000000
      004B000000500000005000000050000000500000005000000050000000500000
      0050000000500000005000000050000000230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202430303034F0101013100000000000000000202
      02490303034F0303034F0303034F0303034F0303034F0303034F0303034F0303
      034F0303034F0303034F0303034F0000001E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000046000000500000003200000000000000000000
      004B000000500000005000000050000000500000005000000050000000500000
      0050000000500000005000000050000000230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000001D0000001F0000000F00000000000000030000
      001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
      001F0000001F0000001F0000001F000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF212121FF212121FF212121FF040404620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000EE000000FE0000007800000000000000170000
      00FE000000FE000000FE000000FE000000FE000000FE000000FE000000FE0000
      00FE000000FE000000FE000000FD000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919D8212121FF0D0D0D9D00000000000000001D1D
      1DEC212121FF212121FF212121FF212121FF212121FF212121FF212121FF2121
      21FF212121FF212121FF212121FF040404620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DF000000FF0000009F00000000000000000000
      00EF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000EE000000FE0000007800000000000000170000
      00FE000000FE000000FE000000FE000000FE000000FE000000FE000000FE0000
      00FE000000FE000000FE000000FD000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000002A000000300000001E00000000000000000000
      002D000000300000003000000030000000300000003000000030000000300000
      0030000000300000003000000030000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000021000000270000001800000000000000000000
      0024000000270000002700000027000000270000002700000027000000270000
      00270000002700000027000000270000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000002A000000300000001E00000000000000000000
      002D000000300000003000000030000000300000003000000030000000300000
      0030000000300000003000000030000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000480000004C0000002400000000000000070000
      004C0000004C0000004C0000004C0000004C0000004C0000004C0000004C0000
      004C0000004C0000004C0000004C000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object imglstPopup: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 455
    Top = 330
  end
  object imglstEditors: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 455
    Top = 282
  end
  object imglstBrowers: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 455
    Top = 226
  end
  object SynCssSyn1: TSynCssSyn
    Left = 264
    Top = 288
  end
  object HttpdProcess: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    OnExecuteError = HttpdProcessExecuteError
    OnNewLine = HttpdProcessNewLine
    OnTerminateProcess = HttpdProcessTerminateProcess
    Left = 88
    Top = 392
  end
end
