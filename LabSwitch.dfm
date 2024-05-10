object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 107
  Height = 51
  TabOrder = 0
  object Label1: TLabel
    Left = 3
    Top = 29
    Width = 38
    Height = 17
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Switch: TToggleSwitch
    Left = 3
    Top = 3
    Width = 59
    Height = 20
    StateCaptions.CaptionOn = ' '
    StateCaptions.CaptionOff = ' '
    TabOrder = 0
    ThumbColor = clScrollBar
    ThumbWidth = 20
    OnClick = SwitchClick
  end
end
