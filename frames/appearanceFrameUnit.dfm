object settingFrame: TsettingFrame
  Left = 0
  Top = 0
  Width = 380
  Height = 311
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
    Top = 72
    Width = 111
    Height = 15
    Caption = #1057#1082#1088#1091#1075#1083#1077#1085#1080#1077' '#1082#1083#1072#1074#1080#1096
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 85
    Height = 15
    Caption = #1064#1088#1080#1092#1090' '#1082#1083#1072#1074#1080#1096
  end
  object Label4: TLabel
    Left = 34
    Top = 152
    Width = 119
    Height = 15
    Caption = #1054#1073#1097#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100
  end
  object Label5: TLabel
    Left = 34
    Top = 192
    Width = 147
    Height = 15
    Caption = #1055#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1099
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
      end>
    TabOrder = 0
    Text = #1058#1077#1084#1085#1072#1103
  end
  object CBKeyRad: TComboBox
    Left = 216
    Top = 69
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
    Top = 108
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 2
  end
  object OKButton: TButton
    Left = 114
    Top = 259
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 3
  end
  object CancelButton: TButton
    Left = 195
    Top = 259
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
  end
  object ApplayButton: TButton
    Left = 276
    Top = 259
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 5
  end
  object TrackBar1: TTrackBar
    Left = 203
    Top = 152
    Width = 158
    Height = 25
    Max = 245
    Frequency = 20
    TabOrder = 6
  end
  object TrackBar2: TTrackBar
    Left = 203
    Top = 192
    Width = 158
    Height = 25
    LineSize = 2
    Max = 245
    PageSize = 1
    Frequency = 20
    TabOrder = 7
  end
  object Button2: TButton
    Left = 263
    Top = 108
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 8
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 288
    Top = 64
  end
end
