object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 379
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LBmenu: TListBox
    Left = 0
    Top = 0
    Width = 177
    Height = 364
    TabStop = False
    Style = lbOwnerDrawFixed
    Align = alLeft
    IntegralHeight = True
    ItemHeight = 90
    Items.Strings = (
      #1074#1085#1077#1096#1085#1080#1081' '#1074#1080#1076
      #1079#1074#1091#1082
      #1089#1084#1077#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1080
      #1101#1082#1088#1072#1085' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080)
    TabOrder = 0
    OnClick = LBmenuClick
  end
  object Panel1: TPanel
    Left = 183
    Top = 0
    Width = 445
    Height = 379
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 179
    ExplicitHeight = 378
  end
end
