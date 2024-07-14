object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1072#1081#1083#1099' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080
  ClientHeight = 228
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Shape1: TShape
    Left = 224
    Top = 48
    Width = 33
    Height = 33
    Shape = stRoundRect
    OnMouseDown = Shape1MouseDown
  end
  object Shape2: TShape
    Left = 344
    Top = 48
    Width = 33
    Height = 33
    Shape = stRoundRect
    OnMouseDown = Shape1MouseDown
  end
  object Label1: TLabel
    Left = 224
    Top = 16
    Width = 56
    Height = 15
    Caption = #1052#1080#1085#1080#1084#1091#1084
  end
  object Label2: TLabel
    Left = 344
    Top = 16
    Width = 60
    Height = 15
    Caption = #1052#1072#1082#1089#1080#1084#1091#1084
  end
  object BitBtn1: TBitBtn
    Left = 389
    Top = 182
    Width = 59
    Height = 49
    Kind = bkOK
    NumGlyphs = 2
    Style = bsNew
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object ToggleSwitch: TToggleSwitch
    Left = 264
    Top = 152
    Width = 105
    Height = 20
    DisabledColor = clHighlight
    FrameColor = clHighlight
    StateCaptions.CaptionOn = #1095#1080#1089#1083#1072
    StateCaptions.CaptionOff = #1075#1088#1072#1076#1080#1077#1085#1090
    TabOrder = 1
    ThumbColor = clHotLight
    ThumbWidth = 20
    OnClick = ToggleSwitch1Click
  end
  object fileslist: TFileListBox
    Left = 0
    Top = 0
    Width = 185
    Height = 228
    Align = alLeft
    ItemHeight = 15
    Mask = '*map.b'
    MultiSelect = True
    TabOrder = 2
    ExplicitHeight = 230
  end
  object ColorDialog1: TColorDialog
    Left = 288
    Top = 80
  end
end
