object FormSplash: TFormSplash
  Left = 192
  Top = 124
  BorderStyle = bsNone
  Caption = 'FormSplash'
  ClientHeight = 442
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TimerSplash: TTimer
    Interval = 3000
    OnTimer = TimerSplashTimer
    Left = 136
    Top = 152
  end
end
