object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 233
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object FilesList: TListBox
    Left = 0
    Top = 0
    Width = 209
    Height = 233
    Align = alLeft
    ItemHeight = 15
    TabOrder = 0
  end
  object ButtonGroup1: TButtonGroup
    Left = 264
    Top = 88
    Height = 57
    ButtonOptions = [gboFullSize, gboShowCaptions]
    Items = <
      item
        Caption = #1054#1050
        OnClick = ButtonGroup1Items0Click
      end
      item
        Caption = #1054#1090#1084#1077#1085#1072
        OnClick = ButtonGroup1Items1Click
      end>
    TabOrder = 1
  end
end
