object ParentForm: TParentForm
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'ParentForm'
  ClientHeight = 460
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
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
      inherited SpeedButton3: TSpeedButton
        Left = 673
        OnClick = FormHeaderSpeedButton3Click
        ExplicitLeft = 673
        ExplicitTop = 0
        ExplicitHeight = 31
      end
      inherited sbSetting: TSpeedButton
        Left = 601
        PressedImageIndex = 8
        OnClick = FormHeaderSpeedButton1Click
        ExplicitLeft = 601
        ExplicitTop = 2
        ExplicitHeight = 31
      end
      inherited SpeedButton4: TSpeedButton
        Left = 637
        ExplicitLeft = 637
        ExplicitTop = 0
        ExplicitHeight = 31
      end
      inherited SpeedButton5: TSpeedButton
        Left = 565
        ExplicitLeft = 565
        ExplicitTop = 2
        ExplicitHeight = 31
      end
    end
  end
  object SettingForm: TPanel
    Left = 32
    Top = 88
    Width = 641
    Height = 120
    Color = clOlive
    ParentBackground = False
    TabOrder = 1
    Visible = False
    OnResize = SettingFormResize
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
    object playSound: TToggleSwitch
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
      OnClick = playSoundClick
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
  object TrayIcon: TTrayIcon
    Animate = True
    BalloonHint = 'KeyboardMap'
    BalloonTitle = 'KeyboardMap minimized'
    Icon.Data = {
      0000010001002020000001002000A81000001600000028000000200000004000
      0000010020000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000333333013333330133333301333333013333330133333301333333013333
      3301333333013333330133333301333333013333330133333301333333013333
      3301333333013333330133333301333333013333330133333301333333013333
      3301333333013333330133333301333333013333330133333301000000003333
      3375333333CA333333B7333333B7333333B7333333B7333333B7333333B73333
      33B7333333B7333333B7333333B7333333B7333333B7333333B7333333B73333
      33B7333333B7333333B7333333B7333333B7333333B7333333B7333333B73333
      33B7333333B7333333B7333333B7333333B7333333B7333333CA333333755550
      2FF7A79A0EFBA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A
      0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A
      0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A
      0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EFEA79A0EB2333333CF5B55
      2EFFA79A0EFF7E7525E659542EF45A542EF259542EF459532EF95A542EF25A54
      2EF25A542EF25A542EF25A542EF25A542EF25A542EF25A542EF258532EFC5A54
      2EF25A542EF259532EFA5A542EF25A542EF259542EF4897F21FF6C652ADE5B56
      2ED65B562ED657522FF75B562ED65A552EDE817824FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC45F65E2D6696FFECC595ED088478BADE75BCBFFCC5BCB
      FFCC5BCBFFCC5BCBFFCC5BCBFFCC5BCBFFCC5BCBFFCC5BCBFFCB333333C4696F
      FDCC696FFECC333334A6666CF5CF696FFECC595DCF847D7425FE333333BB5BCA
      FECC5BCBFF9A3C647AF35BCBFFCC50AAD595746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC46166E7FF696FFEFF5C61D79D4992B6FF5BCBFFFF5BCB
      FFFF5BCBFFFF5BCBFFFF5BCBFFFF5BCBFFFF5BCBFFFF5BCBFFFD333333C4696F
      FEFF696FFEFF333335A6676CF6FF696FFEFF5B60D6987D7425FE333333BB5BCA
      FEFF5BCBFFC03E6B83FE5BCBFFFF52AFDCAD746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC44E52ADFF5458BEFF464991CD3F708AFF4B99BFFF4B99
      BFFF4A99BFFF4B99BFFF4B99BFFF4A99BFFF4B99BFFF4B99BFFE333333E15458
      BEFF5458BEFF333334D1666CF5FF696FFEFF5B60D6987D7425FE333333BD468B
      ADFF4482A2E6384F5EFE468CAEFF3F6F88DE746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC45155B6B25A5FD29F494B9A8B444687D25A5FD29F5155
      B687404178DC5A5FD29F575CCA8B3A3B5ED75A5FD29F5A5ED29E333333D25A5E
      D19F5A5FD29F333334BA676CF6FF696FFEFF5B60D6987D7425FE333333BB54B6
      E4C552B1DE9F3A5B6EF254B6E5C54993B7A0746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC46166E7FF696FFEFF5C61D79D5155B6FF696FFEFF646A
      F1AE4C4FA4FF696FFEFF696FFECC424482E1696FFEFF696FFEFD333333C4696F
      FEFF696FFEFF333335A6676CF6FF696FFEFF5B60D6987D7425FE333333BB5BCA
      FEFF5BCBFFC03E6B83FE5BCBFFFF52AFDCAD746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC44A4D9EFF4E52ADFF424482D841437DFF4E52ADFF474A
      94DF3E4072FF4E52ADFF4B4EA3EB393A5AF34E52ADFF4E51ADFE333333E84E51
      ACFF4E52ADFF333333DC4D50A7FF4E52ADFF414380D67D7425FE333333BD468A
      ACFF4381A0E6374F5DFE468BADFF3E6E87DF746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC4565AC6C85E64E0BA4E51AB93474A95DE5E64E0BA565B
      C794434585E65E64E0BA5D62DA9E3C3D68DB5E64E0BA5E64E0B9333333CF5E64
      DFBA5E64E0BA333334B75C61D7BD5E64E0BA4D50A9907D7425FE333333BB52B0
      DCB350AAD593395667EF52B0DDB3468BAD99746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC46166E7FF696FFEFF5C61D79D5155B6FF696FFEFF646A
      F1AE4C4FA4FF696FFEFF696FFECC424482E1696FFEFF696FFEFD333333C4696F
      FEFF696FFEFF333335A6676CF6FF696FFEFF5B60D6987D7425FE333333BB5BCA
      FEFF5BCBFFC03E6B83FE5BCBFFFF52AFDCAD746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF5F592DC45256B8FF585CCAFF494C9CC5474991FF585CCAFF5053
      B2CF434583FF585CCAFF5559C2E13C3D68EE585CCAFF575CC9FE333333DC575C
      C9FF585CCAFF333334CB565AC3FF585CCAFF494C9AC27D7425FE333333BB4DA2
      CAFF4B9AC0DA39596BFE4DA2CBFF4483A3CF746C28FFA79A0EF1333333CC5B55
      2EFFA79A0EFF978B1BA9837924BB837924BB837924BB837924BB837924BB8379
      24BB837924BB837924BB837924BB837924BB837924BB837924BB837924BB8379
      24BB837924BB837924BB837924BB837924BB837924BB9E9216F78F841F9A8379
      24BB837924BB837924BB837924BB837924BB9C9017F4A79A0EF1333333CC4240
      31D090851EFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D
      1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D
      1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D
      1AFF998D1AFF998D1AFF998D1AFF998D1AFF998D1AFF8F841EF0333333C23333
      3319333333793333338533333390394646E74F7977BC4B7170B2333333E73333
      3385333333853333338533333385333333853333338533333385333333853333
      3385333333853333338533333385333333853333338533333385333333853333
      3385333333853333338533333385333333853333338533333379333333190000
      0000000000000000000039393900405857E37DD0CEFF6FB6B4C7333333930000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003333339B64A2A0FF4D7473DC333333460000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033333327333333B733333389343434030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333333C3333339D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333387333333AB3333
      3356333333433333334333333343333333433333334333333343333333433333
      3343333333433333334333333343333333433333334333333343333333433333
      332E292929000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333332D3333
      336C333333753333337533333375333333753333337533333375333333753333
      3375333333753333337533333375333333753333337533333375333333753333
      339C333333B53333330D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033333344333333A900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000333333B233333319000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333339333333333000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000333333BC33333313000000000000000000000000000000000000
      0000000000000000000033333376333333A2333333C8333333C1333333903333
      3300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      3200333333793333338800000000000000000000000000000000000000000000
      00000000000000000000363B3BCB5A8E8D96578887E97DD0CEBE384342AC3333
      33CF333333CC333333CC333333CC333333CC333333CC333333CC333333CC3333
      33CC333333CC333333CC333333CC333333CC333333CC333333CC333333CB3333
      33CF3333337A3434340000000000000000000000000000000000000000000000
      000000000000000000003333339F333434D4405757FF4F7675FF353838BD3333
      3304000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808003333330133333301484848000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFF800000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0FFFFFFF0FFFFFFF0FFFFFFF9FFFFFFFC00007FFE00001FFFFFFF9FFFFF
      FFCFFFFFFFCFFFFFFFCFE0FFFF9FE000003FE07FFFFFF9FFFFFFFFFFFFFF}
    PopupMenu = TrayMenu
    Visible = True
    OnDblClick = TrayIconDblClick
    Left = 560
    Top = 264
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
