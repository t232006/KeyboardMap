object KeyExchange: TKeyExchange
  Left = 0
  Top = 0
  Width = 376
  Height = 301
  TabOrder = 0
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 227
    Height = 21
    Caption = #1053#1072#1078#1084#1080#1090#1077' '#1079#1072#1084#1077#1085#1103#1077#1084#1091#1102' '#1082#1083#1072#1074#1080#1096#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ValueListEditor1: TValueListEditor
    Left = 32
    Top = 35
    Width = 289
    Height = 214
    DefaultRowHeight = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyOptions = [keyDelete]
    ParentFont = False
    TabOrder = 0
    TitleCaptions.Strings = (
      ''
      '')
    OnDrawCell = ValueListEditor1DrawCell
    ColWidths = (
      132
      151)
  end
end
