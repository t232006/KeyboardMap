object SettingForm: TSettingForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 418
  ClientWidth = 628
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
  object LBmenu: TListBox
    Left = 0
    Top = 0
    Width = 177
    Height = 362
    TabStop = False
    Style = lbOwnerDrawFixed
    AutoComplete = False
    Align = alLeft
    Ctl3D = False
    IntegralHeight = True
    ItemHeight = 90
    Items.Strings = (
      #1074#1085#1077#1096#1085#1080#1081' '#1074#1080#1076
      #1079#1074#1091#1082
      #1089#1084#1077#1085#1072' '#1088#1072#1089#1082#1083#1072#1076#1082#1080
      #1101#1082#1088#1072#1085' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1080)
    ParentCtl3D = False
    TabOrder = 0
    OnClick = LBmenuClick
  end
  object OKButton: TButton
    Left = 370
    Top = 371
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object CancelButton: TButton
    Left = 451
    Top = 371
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = CancelButtonClick
  end
  object ApplayButton: TButton
    Left = 532
    Top = 371
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = ApplayButtonClick
  end
  object pcPanel: TPageControl
    Left = 183
    Top = 0
    Width = 433
    Height = 362
    ActivePage = TabSheet2
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      inline settingFrame: TsettingFrame
        Left = 13
        Top = 0
        Width = 380
        Height = 329
        TabOrder = 0
        ExplicitLeft = 13
        ExplicitWidth = 380
        ExplicitHeight = 329
        inherited FontDialog1: TFontDialog
          Left = 176
          Top = 136
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      inline SoundFrame: TSoundFrame
        Left = 64
        Top = 56
        Width = 246
        Height = 137
        TabOrder = 0
        ExplicitLeft = 64
        ExplicitTop = 56
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      inline LangFrame: TLangFrame
        Left = 48
        Top = 24
        Width = 293
        Height = 204
        TabOrder = 0
        ExplicitLeft = 48
        ExplicitTop = 24
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      inline StatisticsFrame: TStatisticsFrame
        Left = 3
        Top = 33
        Width = 431
        Height = 247
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 33
        ExplicitWidth = 431
      end
    end
  end
end
