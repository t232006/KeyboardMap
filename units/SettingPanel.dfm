object SettingForm: TSettingForm
  Left = 0
  Top = 0
  Width = 651
  Height = 105
  Anchors = [akBottom]
  TabOrder = 0
  DesignSize = (
    651
    105)
  object playSound: TToggleSwitch
    Left = 411
    Top = 19
    Width = 106
    Height = 20
    Anchors = []
    State = tssOn
    StateCaptions.CaptionOn = #1079#1074#1091#1082
    StateCaptions.CaptionOff = #1085#1077#1090' '#1079#1074#1091#1082#1072
    TabOrder = 0
    TabStop = False
    ThumbWidth = 20
  end
  object showSpeed: TToggleSwitch
    Left = 241
    Top = 19
    Width = 148
    Height = 20
    Anchors = []
    State = tssOn
    StateCaptions.CaptionOn = #1089#1082#1086#1088#1086#1089#1090#1100
    StateCaptions.CaptionOff = #1089#1082#1086#1088#1086#1089#1090#1100' '#1089#1082#1088#1099#1090#1072
    TabOrder = 1
    TabStop = False
    ThumbWidth = 20
    OnClick = showSpeedClick
  end
  object WinOverride: TToggleSwitch
    Left = 72
    Top = 19
    Width = 141
    Height = 20
    Anchors = []
    State = tssOn
    StateCaptions.CaptionOn = #1087#1086#1074#1077#1088#1093' '#1086#1082#1086#1085
    StateCaptions.CaptionOff = #1085#1077' '#1087#1086#1074#1077#1088#1093' '#1086#1082#1086#1085
    TabOrder = 2
    TabStop = False
    ThumbWidth = 20
    OnClick = WinOverrideClick
  end
  object StatSwitch: TToggleSwitch
    Left = 73
    Top = 68
    Width = 105
    Height = 20
    Anchors = []
    StateCaptions.CaptionOn = #1095#1080#1089#1083#1072
    StateCaptions.CaptionOff = #1075#1088#1072#1076#1080#1077#1085#1090
    TabOrder = 3
    TabStop = False
    ThumbWidth = 20
    Visible = False
  end
  object LogToggle: TToggleSwitch
    Left = 241
    Top = 68
    Width = 138
    Height = 20
    Anchors = []
    State = tssOn
    StateCaptions.CaptionOn = #1074#1077#1089#1090#1080' '#1083#1086#1075
    StateCaptions.CaptionOff = #1086#1090#1082#1083#1102#1095#1080#1090#1100' '#1083#1086#1075
    TabOrder = 4
    TabStop = False
    ThumbWidth = 20
  end
  object ToggleSwitch5: TToggleSwitch
    Left = 412
    Top = 68
    Width = 115
    Height = 20
    Anchors = []
    StateCaptions.CaptionOn = #1084#1072#1083#1077#1085#1100#1082#1072#1103
    StateCaptions.CaptionOff = #1073#1086#1083#1100#1096#1072#1103
    TabOrder = 5
    TabStop = False
    ThumbWidth = 20
  end
  object Timer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerTimer
    Left = 544
    Top = 48
  end
end
