object SettingForm: TSettingForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 375
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
    Height = 313
    TabOrder = 1
  end
  object OKButton: TButton
    Left = 378
    Top = 331
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 2
    OnClick = OKButtonClick
  end
  object CancelButton: TButton
    Left = 459
    Top = 331
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = CancelButtonClick
  end
  object ApplayButton: TButton
    Left = 540
    Top = 331
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 4
  end
end
