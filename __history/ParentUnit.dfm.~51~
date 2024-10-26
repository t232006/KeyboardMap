object ParentForm: TParentForm
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'ParentForm'
  ClientHeight = 459
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  inline FormHeader: TFormHeader
    Left = -86
    Top = 16
    Width = 789
    Height = 35
    TabOrder = 0
    ExplicitLeft = -86
    ExplicitTop = 16
    ExplicitWidth = 789
    inherited Panel1: TPanel
      Width = 789
      PopupMenu = TrayMenu
      ExplicitWidth = 789
      inherited WinIcon: TImage
        PopupMenu = nil
        Transparent = True
        ExplicitHeight = 31
      end
      inherited CloseBut: TSpeedButton
        Left = 745
        OnClick = FormHeaderCloseButClick
        ExplicitLeft = 670
        ExplicitHeight = 39
      end
      inherited SpeedButton2: TSpeedButton
        Left = 709
        ExplicitLeft = 634
        ExplicitHeight = 31
      end
      inherited sbSetting: TSpeedButton
        Left = 637
        PressedImageIndex = 8
        OnClick = FormHeaderSpeedButton1Click
        ExplicitLeft = 601
        ExplicitTop = 2
        ExplicitHeight = 31
      end
      inherited SpeedButton4: TSpeedButton
        Left = 673
        ExplicitLeft = 637
        ExplicitTop = 0
        ExplicitHeight = 31
      end
      inherited SpeedButton5: TSpeedButton
        Left = 601
        ExplicitLeft = 565
        ExplicitTop = 2
        ExplicitHeight = 31
      end
    end
  end
  object SettingPanel: TPanel
    Left = 32
    Top = 88
    Width = 641
    Height = 120
    BevelOuter = bvSpace
    BevelWidth = 5
    Color = clOlive
    ParentBackground = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      641
      120)
    object boardSize: TToggleSwitch
      Tag = 1
      Left = 412
      Top = 67
      Width = 115
      Height = 20
      Anchors = []
      StateCaptions.CaptionOn = #1084#1072#1083#1077#1085#1100#1082#1072#1103
      StateCaptions.CaptionOff = #1073#1086#1083#1100#1096#1072#1103
      TabOrder = 0
      TabStop = False
      ThumbWidth = 20
      OnClick = FormHeaderSpeedButton3Click
    end
    object LogToggle: TToggleSwitch
      Left = 241
      Top = 67
      Width = 138
      Height = 20
      Anchors = []
      State = tssOn
      StateCaptions.CaptionOn = #1074#1077#1089#1090#1080' '#1083#1086#1075
      StateCaptions.CaptionOff = #1086#1090#1082#1083#1102#1095#1080#1090#1100' '#1083#1086#1075
      TabOrder = 1
      TabStop = False
      ThumbWidth = 20
    end
    object TogPlaySound: TToggleSwitch
      Left = 411
      Top = 19
      Width = 106
      Height = 20
      Anchors = []
      State = tssOn
      StateCaptions.CaptionOn = #1079#1074#1091#1082
      StateCaptions.CaptionOff = #1085#1077#1090' '#1079#1074#1091#1082#1072
      TabOrder = 2
      TabStop = False
      ThumbWidth = 20
      OnClick = TogPlaySoundClick
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
      TabOrder = 3
      TabStop = False
      ThumbWidth = 20
      OnClick = showSpeedClick
    end
    object StatSwitch: TToggleSwitch
      Left = 73
      Top = 68
      Width = 105
      Height = 20
      Anchors = []
      StateCaptions.CaptionOn = #1095#1080#1089#1083#1072
      StateCaptions.CaptionOff = #1075#1088#1072#1076#1080#1077#1085#1090
      TabOrder = 4
      TabStop = False
      ThumbWidth = 20
      Visible = False
      OnClick = FormHeaderStatSwitchClick
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
      TabOrder = 5
      TabStop = False
      ThumbWidth = 20
      OnClick = WinOverrideClick
    end
  end
  object TrayMenu: TPopupMenu
    OnPopup = TrayMenuPopup
    Left = 48
    Top = 240
    object N1: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Action = Layout_change
    end
    object N3: TMenuItem
      Action = Show_sounds_panel
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N15: TMenuItem
      Action = Open_statistics
    end
    object N17: TMenuItem
      Action = Close_statistics
    end
    object N16: TMenuItem
      Action = Save_cur_session
    end
    object N18: TMenuItem
      Action = Cur_session_stat
    end
    object N21: TMenuItem
      Action = Stat_summary
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object exit1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = exit1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 176
    Top = 232
  end
  object WinMonitor: TTimer
    OnTimer = WinMonitorTimer
    Left = 328
    Top = 224
  end
  object ActionManager1: TActionManager
    Left = 376
    Top = 336
    StyleName = 'XP Style'
    object Open_statistics: TAction
      Category = 'statistics'
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091'...'
      OnExecute = Open_statisticsExecute
    end
    object Close_statistics: TAction
      Category = 'statistics'
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091
      Enabled = False
      OnExecute = Close_statisticsExecute
    end
    object Save_cur_session: TAction
      Category = 'statistics'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' '#1089#1077#1089#1089#1080#1102
      OnExecute = Save_cur_sessionExecute
    end
    object Cur_session_stat: TAction
      Category = 'statistics'
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1090#1077#1082#1091#1097#1077#1081' '#1089#1077#1089#1089#1080#1080
      OnExecute = Cur_session_statExecute
    end
    object Stat_summary: TAction
      Category = 'statistics'
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1089#1091#1084#1084#1072#1088#1085#1086
      OnExecute = Stat_summaryExecute
    end
    object Layout_change: TAction
      Category = 'Layout'
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1089#1082#1083#1072#1076#1082#1091'...'
      OnExecute = Layout_changeExecute
    end
    object speedWin: TAction
      Category = 'speed'
      Caption = #1079#1072#1082#1088#1099#1090#1100
      OnExecute = speedWinExecute
    end
    object reset: TAction
      Category = 'speed'
      Caption = #1089#1073#1088#1086#1089
    end
    object Show_sounds_panel: TAction
      Category = 'sounds'
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1074#1091#1082#1086#1074#1091#1102' '#1087#1072#1085#1077#1083#1100'...'
      OnExecute = Show_sounds_panelExecute
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
  end
  object instantTimer: TTimer
    Interval = 10
    OnTimer = instantTimerTimer
    Left = 96
    Top = 312
  end
  object extendTimer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = extendTimerTimer
    Left = 584
    Top = 120
  end
end
