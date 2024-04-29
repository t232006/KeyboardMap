object LangForm: TLangForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1075#1086#1088#1103#1095#1091#1102' '#1082#1083#1072#1074#1080#1096#1091' '#1088#1072#1089#1082#1083#1072#1076#1082#1080
  ClientHeight = 200
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  TextHeight = 15
  object Extender: TToggleSwitch
    Left = 16
    Top = 40
    Width = 91
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    StateCaptions.CaptionOn = 'Right'
    StateCaptions.CaptionOff = 'Left'
    TabOrder = 0
    OnClick = ExtenderClick
  end
  object hotKeyInd: TRadioGroup
    Left = 120
    Top = 8
    Width = 163
    Height = 134
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      'Alt'
      'Ctrl'
      'Scroll Lock'
      'Enter')
    ParentFont = False
    TabOrder = 1
    OnClick = hotKeyIndClick
  end
  object Status: TMemo
    Left = 8
    Top = 148
    Width = 283
    Height = 52
    TabStop = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 93
    Width = 49
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
