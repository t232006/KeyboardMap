object settingFrame: TsettingFrame
  Left = 0
  Top = 0
  Width = 393
  Height = 351
  TabOrder = 0
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 87
    Height = 15
    Caption = #1062#1074#1077#1090#1086#1074#1072#1103' '#1089#1093#1077#1084#1072
  end
  object Label2: TLabel
    Left = 32
    Top = 112
    Width = 111
    Height = 15
    Caption = #1057#1082#1088#1091#1075#1083#1077#1085#1080#1077' '#1082#1083#1072#1074#1080#1096
  end
  object Label3: TLabel
    Left = 32
    Top = 152
    Width = 85
    Height = 15
    Caption = #1064#1088#1080#1092#1090' '#1082#1083#1072#1074#1080#1096
  end
  object Label4: TLabel
    Left = 34
    Top = 256
    Width = 119
    Height = 15
    Caption = #1054#1073#1097#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100
  end
  object Label5: TLabel
    Left = 34
    Top = 296
    Width = 147
    Height = 15
    Caption = #1055#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1099
  end
  object Label6: TLabel
    Left = 32
    Top = 216
    Width = 72
    Height = 15
    Caption = #1062#1074#1077#1090' '#1082#1083#1072#1074#1080#1096
  end
  object Shape1: TShape
    Left = 216
    Top = 209
    Width = 41
    Height = 25
    Shape = stRoundRect
    OnMouseUp = Shape1MouseUp
  end
  object Shape2: TShape
    Left = 268
    Top = 209
    Width = 41
    Height = 25
    Shape = stRoundRect
    OnMouseUp = Shape2MouseUp
  end
  object Shape3: TShape
    Left = 320
    Top = 209
    Width = 41
    Height = 25
    Shape = stRoundRect
    OnMouseUp = Shape2MouseUp
  end
  object Label8: TLabel
    Left = 269
    Top = 184
    Width = 36
    Height = 12
    Caption = #1085#1072#1078#1072#1090#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 319
    Top = 184
    Width = 46
    Height = 12
    Caption = #1074#1099#1076#1077#1083#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 226
    Top = 184
    Width = 19
    Height = 12
    Caption = #1094#1074#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Shape4: TShape
    Left = 216
    Top = 70
    Width = 41
    Height = 25
    Shape = stRoundRect
    OnMouseUp = Shape1MouseUp
  end
  object Label10: TLabel
    Left = 32
    Top = 70
    Width = 58
    Height = 15
    Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
  end
  object CBColScheme: TComboBoxEx
    Left = 216
    Top = 29
    Width = 145
    Height = 24
    ItemsEx = <
      item
        Caption = #1058#1077#1084#1085#1072#1103
      end
      item
        Caption = #1057#1074#1077#1090#1083#1072#1103
      end
      item
        Caption = #1050#1083#1072#1089#1089#1080#1095#1077#1089#1082#1072#1103
      end
      item
        Caption = #1057#1074#1086#1103
      end>
    TabOrder = 0
    Text = #1058#1077#1084#1085#1072#1103
    OnChange = CBColSchemeChange
  end
  object CBKeyRad: TComboBox
    Left = 216
    Top = 109
    Width = 41
    Height = 23
    ItemIndex = 3
    TabOrder = 1
    Text = '3'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
  object Button1: TButton
    Left = 216
    Top = 148
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object commonTrack: TTrackBar
    Left = 203
    Top = 256
    Width = 158
    Height = 25
    Max = 245
    Frequency = 20
    TabOrder = 3
  end
  object keyboardTrack: TTrackBar
    Left = 203
    Top = 296
    Width = 158
    Height = 25
    LineSize = 2
    Max = 1
    PageSize = 1
    Frequency = 20
    TabOrder = 4
  end
  object Button2: TButton
    Left = 320
    Top = 148
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 5
    OnClick = Button2Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 72
    Top = 176
  end
  object ColorDialog1: TColorDialog
    Left = 152
    Top = 200
  end
  object FontDialog2: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 304
    Top = 88
  end
end
