object KeyboardFormLarge: TKeyboardFormLarge
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Screen keyboard'
  ClientHeight = 396
  ClientWidth = 1106
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  ShowHint = True
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 1095
    Height = 332
    TabOrder = 0
    object Key27: TKey
      Left = 8
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00010001'
        'C0010001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Esc'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key112: TKey
      Left = 104
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003B0001'
        'C03B0001'
        '403B0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F1'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key113: TKey
      Left = 152
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003C0001'
        'C03C0001'
        '403C0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F2'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key114: TKey
      Left = 200
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003D0001'
        'C03D0001'
        '403D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F3'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key115: TKey
      Left = 248
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003E0001'
        'C03E0001'
        '403E0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F4'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key116: TKey
      Left = 320
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003F0001'
        'C03F0001'
        '403F0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F5'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key117: TKey
      Left = 368
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00400001'
        'C0400001'
        '40400001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F6'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key118: TKey
      Left = 416
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00410001'
        'C0410001'
        '40410001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F7'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key119: TKey
      Left = 464
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00420001'
        'C0420001'
        '40420001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F8'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key120: TKey
      Left = 536
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00430001'
        'C0430001'
        '40430001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F9'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key121: TKey
      Left = 584
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00440001'
        'C0440001'
        '40440001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F10'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key122: TKey
      Left = 632
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00570001'
        'C0570001'
        '40570001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F11'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key123: TKey
      Left = 680
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00580001'
        'C0580001'
        '40580001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'F12'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktFunc
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key44: TKey
      Left = 736
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01370001'
        'C1370001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'PrtScr'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -13
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key145: TKey
      Left = 784
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00460001'
        'C0460001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Scroll Lock'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key16: TKey
      Left = 832
      Top = 32
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00450001'
        'C0450001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Pause Break'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key41: TKey
      Left = 8
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '10290001'
        'C0290001'
        '40290001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = #1025
      MiddleText = '~     `'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key49: TKey
      Left = 56
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00020001'
        'C0020001'
        '40020001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '!       1'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key50: TKey
      Left = 104
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00030001'
        'C0030001'
        '40030001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '"'
      MiddleText = '@     2'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 28
      DownPosX = 25
      MidPosX = 5
    end
    object Key51: TKey
      Left = 152
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00040001'
        'C0040001'
        '40040001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = #8470
      MiddleText = '#      3'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -13
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 18
      DownPosX = 25
      MidPosX = 5
    end
    object Key52: TKey
      Left = 200
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00050001'
        'C0050001'
        '40050001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = ';'
      MiddleText = '$      4'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -15
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 30
      DownPosX = 25
      MidPosX = 5
    end
    object Key53: TKey
      Left = 248
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00060001'
        'C0060001'
        '40060001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '%     5'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key54: TKey
      Left = 296
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00070001'
        'C0070001'
        '40070001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = ':'
      MiddleText = '^      6'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -15
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 30
      DownPosX = 25
      MidPosX = 5
    end
    object Key55: TKey
      Left = 344
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00080001'
        'C0080001'
        '40080001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '&      7'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key56: TKey
      Left = 392
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00090001'
        'C0090001'
        '40090001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '*       8'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key57: TKey
      Left = 440
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000A0001'
        'C00A0001'
        '400A0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '(       9'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key48: TKey
      Left = 488
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000B0001'
        'C00B0001'
        '400B0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = ')       0'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key189: TKey
      Left = 536
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000C0001'
        'C00C0001'
        '400C0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '--      -'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key187: TKey
      Left = 584
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000D0001'
        'C00D0001'
        '400D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '+      ='
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clRed
      UpFont.Height = -17
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -17
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktNum
      UpPosX = 25
      DownPosX = 25
      MidPosX = 5
    end
    object Key8: TKey
      Left = 632
      Top = 88
      Width = 90
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000E0001'
        'C00E0001'
        '400E0001')
      Picture.Data = {
        26100000424D2610000000000000360000002800000043000000140000000100
        180000000000F00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PicturePos.Left = 38
      PicturePos.Top = 14
      PicturePos.Right = 4
      PicturePos.Bottom = 28
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -21
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key45: TKey
      Left = 736
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01520001'
        'C1520001'
        '41520001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Insert'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -13
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -21
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key36: TKey
      Left = 784
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01470001'
        'C1470001'
        '41470001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Home'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -13
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -21
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key33: TKey
      Left = 832
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01490001'
        'C1490001'
        '41490001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Page Up'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -13
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -21
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key144: TKey
      Left = 888
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01450001'
        'C1450001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Num Lock'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key111: TKey
      Left = 936
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01350001'
        'C1350001'
        '41350001')
      PicturePos.Left = 16
      PicturePos.Top = 24
      PicturePos.Right = 36
      PicturePos.Bottom = 38
      MiddleText = '/'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key106: TKey
      Left = 984
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00370001'
        'C0370001'
        '40370001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '*'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key109: TKey
      Left = 1032
      Top = 88
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004A0001'
        'C04A0001'
        '404A0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '-'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 5
      MidPosX = 5
    end
    object Key9: TKey
      Left = 8
      Top = 136
      Width = 65
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '000F0001'
        'C00F0001'
        '400F0001')
      Picture.Data = {
        36140000424D361400000000000036000000280000002A000000280000000100
        1800000000000014000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFF000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000FFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PicturePos.Left = 35
      PicturePos.Top = 10
      PicturePos.Right = 58
      PicturePos.Bottom = 38
      MiddleText = 'Tab'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key81: TKey
      Left = 79
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00100001'
        'C0100001'
        '40100001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'Q'
      DownText = #1049
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key87: TKey
      Left = 127
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00110001'
        'C0110001'
        '40110001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'W'
      DownText = #1062
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key69: TKey
      Left = 175
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00120001'
        'C0120001'
        '40120001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'E'
      DownText = #1059
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key82: TKey
      Left = 223
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00130001'
        'C0130001'
        '40130001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'R'
      DownText = #1050
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key84: TKey
      Left = 271
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00140001'
        'C0140001'
        '40140001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'T'
      DownText = #1045
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key89: TKey
      Left = 319
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00150001'
        'C0150001'
        '40150001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'Y'
      DownText = #1053
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key85: TKey
      Left = 367
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00160001'
        'C0160001'
        '40160001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'U'
      DownText = #1043
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key73: TKey
      Left = 415
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00170001'
        'C0170001'
        '40170001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'I'
      DownText = #1064
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 23
      MidPosX = 5
    end
    object Key79: TKey
      Left = 463
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00180001'
        'C0180001'
        '40180001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'O'
      DownText = #1065
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 21
      MidPosX = 5
    end
    object Key80: TKey
      Left = 511
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00190001'
        'C0190001'
        '40190001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'P'
      DownText = #1047
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      DownPosX = 25
      MidPosX = 5
    end
    object Key219: TKey
      Left = 559
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001A0001'
        'C01A0001'
        '401A0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1061
      MiddleText = '{        ['
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key94: TKey
      Left = 607
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001B0001'
        'C01B0001'
        '401B0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1066
      MiddleText = '}        ]'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key220: TKey
      Left = 655
      Top = 136
      Width = 67
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002B0001'
        'C02B0001'
        '402B0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = '/'
      MiddleText = '|               \'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 45
      DownPosX = 25
      MidPosX = 5
    end
    object Key46: TKey
      Left = 736
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01530001'
        'C1530001'
        '41530001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Delete'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key35: TKey
      Left = 784
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '014F0001'
        'C14F0001'
        '414F0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'End'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key34: TKey
      Left = 832
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01510001'
        'C1510001'
        '41510001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Page Down'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key103: TKey
      Left = 888
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00470001'
        'C0470001'
        '40470001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '7'
      DownText = 'Home'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key104: TKey
      Left = 936
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00480001'
        'C0480001'
        '40480001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 16
      PicturePos.Top = 24
      PicturePos.Right = 36
      PicturePos.Bottom = 38
      UpText = '8'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key105: TKey
      Left = 984
      Top = 136
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00490001'
        'C0490001'
        '40490001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '9'
      DownText = 'PgUp'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key107: TKey
      Left = 1032
      Top = 136
      Width = 42
      Height = 90
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004E0001'
        'C04E0001'
        '404E0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '+'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 5
      MidPosX = 5
    end
    object Key20: TKey
      Left = 8
      Top = 184
      Width = 81
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '003A0001'
        'C03A0001'
        '403A0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Caps Lock'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key65: TKey
      Left = 95
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001E0001'
        'C01E0001'
        '401E0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'A'
      DownText = #1060
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key83: TKey
      Left = 143
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001F0001'
        'C01F0001'
        '401F0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'S'
      DownText = #1067
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key68: TKey
      Left = 191
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00200001'
        'C0200001'
        '40200001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'D'
      DownText = #1042
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key70: TKey
      Left = 239
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00210001'
        'C0210001'
        '40210001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'F'
      DownText = #1040
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key71: TKey
      Left = 287
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00220001'
        'C0220001'
        '40220001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'G'
      DownText = #1055
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key72: TKey
      Left = 335
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00230001'
        'C0230001'
        '40230001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'H'
      DownText = #1056
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key74: TKey
      Left = 383
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00240001'
        'C0240001'
        '40240001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'J'
      DownText = #1054
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key75: TKey
      Left = 431
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00250001'
        'C0250001'
        '40250001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'K'
      DownText = #1051
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key76: TKey
      Left = 479
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00260001'
        'C0260001'
        '40260001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'L'
      DownText = #1044
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key186: TKey
      Left = 527
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00270001'
        'C0270001'
        '40270001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1046
      MiddleText = ':         ;'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 21
      MidPosX = 5
    end
    object Key222: TKey
      Left = 575
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00280001'
        'C0280001'
        '40280001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1069
      MiddleText = '"         '#39
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key13: TKey
      Left = 623
      Top = 184
      Width = 99
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001C0001'
        'C01C0001'
        '401C0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = '     Enter'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key100: TKey
      Left = 888
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004B0001'
        'C04B0001'
        '404B0001')
      Picture.Data = {
        26100000424D2610000000000000360000002800000043000000140000000100
        180000000000F00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PicturePos.Left = 24
      PicturePos.Top = 24
      PicturePos.Right = 4
      PicturePos.Bottom = 38
      UpText = '4'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key101: TKey
      Left = 936
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004C0001'
        'C04C0001')
      PicturePos.Left = 16
      PicturePos.Top = 24
      PicturePos.Right = 36
      PicturePos.Bottom = 38
      UpText = '5'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key102: TKey
      Left = 984
      Top = 184
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004D0001'
        'C04D0001')
      Picture.Data = {
        26100000424D2610000000000000360000002800000043000000140000000100
        180000000000F00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PicturePos.Left = 16
      PicturePos.Top = 24
      PicturePos.Right = 36
      PicturePos.Bottom = 38
      UpText = '6'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key97: TKey
      Left = 888
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '004F0001'
        'C04F0001'
        '404F0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '1'
      DownText = 'End'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key98: TKey
      Left = 936
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00500001'
        'C0500001'
        '40500001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 18
      PicturePos.Top = 38
      PicturePos.Right = 36
      PicturePos.Bottom = 24
      UpText = '2'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key99: TKey
      Left = 984
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00510001'
        'C0510001'
        '40510001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '3'
      DownText = 'PgDn'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key160: TKey
      Left = 8
      Top = 232
      Width = 97
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002A0001'
        'C02A0001'
        '402A0001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 8
      PicturePos.Top = 12
      PicturePos.Right = 28
      PicturePos.Bottom = 30
      MiddleText = 'Shift'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 28
    end
    object Key90: TKey
      Left = 111
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002C0001'
        'C02C0001'
        '402C0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'Z'
      DownText = #1071
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key88: TKey
      Left = 159
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002D0001'
        'C02D0001'
        '402D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'X'
      DownText = #1063
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key67: TKey
      Left = 207
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002E0001'
        'C02E0001'
        '402E0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'C'
      DownText = #1057
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key86: TKey
      Left = 255
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '002F0001'
        'C02F0001'
        '402F0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'V'
      DownText = #1052
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key66: TKey
      Left = 303
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00300001'
        'C0300001'
        '40300001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'B'
      DownText = #1048
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key78: TKey
      Left = 351
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00310001'
        'C0310001'
        '40310001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'N'
      DownText = #1058
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key77: TKey
      Left = 399
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00320001'
        'C0320001'
        '40320001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = 'M'
      DownText = #1068
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
    object Key188: TKey
      Left = 447
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00330001'
        'C0330001'
        '40330001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1041
      MiddleText = '<        ,'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key190: TKey
      Left = 495
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00340001'
        'C0340001'
        '40340001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = #1070
      MiddleText = '>        .'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 20
      MidPosX = 5
    end
    object Key191: TKey
      Left = 543
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00350001'
        'C0350001'
        '40350001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      DownText = '.'
      MiddleText = '?         /'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -16
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktTrippleLetters
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key161: TKey
      Left = 591
      Top = 232
      Width = 131
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00360001'
        'C0360001'
        '40360001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 8
      PicturePos.Top = 12
      PicturePos.Right = 28
      PicturePos.Bottom = 30
      MiddleText = 'Shift'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -15
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 28
    end
    object Key162: TKey
      Left = 8
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '001D0001'
        'C01D0001'
        '401D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Ctrl'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key91: TKey
      Left = 66
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '015B0001'
        'C15B0001'
        '415B0001')
      Picture.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B28D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000EFA400EFA400EFA4
        00EFA400EFA400EFA400EFA400EFA400EFA400B28D393998BA00B9FF00B9FF00
        B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF000000000000000000000000
        EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400B28D393998
        BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00000000
        0000000000000000EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400
        EFA400B28D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9
        FF00B9FF000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B18D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000EFA400EFA400EFA4
        00EFA400EFA400EFA400EFA400EFA400EFA400B18D393898BA00B9FF00B9FF00
        B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF000000000000000000000000
        EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400B18D393898
        BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00000000
        0000000000000000EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400
        EFA400B18D393898BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9
        FF00B9FF000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B18D393898BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000B18C38B18C38B18C
        38B18C38B18C38B18C38B18C38B18C38B18C38B18C383898BA3898BA3898BA38
        98BA3898BA3898BA3898B93898B93898B93898B9000000000000000000000000
        4962B34962B34962B34962B34962B34962B34962B34962B34962B34962B33897
        7838977839987939987939987938987838987838987838987838987800000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24A62B339977800BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F0000000000000000000000002250F22250F22250F22250F22250F222
        50F22250F22250F22250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F
        00BA7F00BA7F00BA7F00BA7F0000000000000000000000002250F22250F22250
        F22250F22250F22250F22250F22250F22250F24A62B239977700BA7F00BA7F00
        BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F000000000000000000000000
        2250F22250F22250F22250F22250F22250F22250F22250F22250F24A62B23997
        7700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F0000000000000000000000002250F22250F22250F22250F22250F222
        50F22250F22250F22250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F
        00BA7F00BA7F00BA7F00BA7F0000000000000000000000002250F22250F22250
        F22250F22250F22250F22250F22250F22250F24A62B239977700BA7F00BA7F00
        BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F000000000000000000000000
        2250F22250F22250F22250F22250F22250F22250F22250F22250F24961B13997
        7700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24961B138967600BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PicturePos.Left = 14
      PicturePos.Top = 10
      PicturePos.Right = 38
      PicturePos.Bottom = 34
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key164: TKey
      Left = 124
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '20380001'
        'C0380001'
        '40380001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Alt'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key32: TKey
      Left = 182
      Top = 280
      Width = 307
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00390001'
        'C0390001'
        '40390001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key165: TKey
      Left = 495
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '21380001'
        'C1380001'
        '41380001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Alt'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key93: TKey
      Left = 612
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '015D0001'
        'C15D0001'
        '415D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key163: TKey
      Left = 670
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '011D0001'
        'C11D0001'
        '411D0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Ctrl'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key37: TKey
      Left = 736
      Top = 280
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '014B0001'
        'C14B0001'
        '414B0001')
      Picture.Data = {
        26100000424D2610000000000000360000002800000043000000140000000100
        180000000000F00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PicturePos.Left = 25
      PicturePos.Top = 14
      PicturePos.Right = 4
      PicturePos.Bottom = 28
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key40: TKey
      Left = 784
      Top = 280
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01500001'
        'C1500001'
        '41500001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 14
      PicturePos.Top = 32
      PicturePos.Right = 30
      PicturePos.Bottom = 12
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key39: TKey
      Left = 832
      Top = 280
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '014D0001'
        'C14D0001'
        '414D0001')
      Picture.Data = {
        26100000424D2610000000000000360000002800000043000000140000000100
        180000000000F00F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PicturePos.Left = 16
      PicturePos.Top = 14
      PicturePos.Right = 38
      PicturePos.Bottom = 28
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key38: TKey
      Left = 784
      Top = 232
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '01480001'
        'C1480001'
        '41530001')
      Picture.Data = {
        EA0F0000424DEA0F000000000000360000002800000014000000430000000100
        180000000000B40F000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000}
      PicturePos.Left = 14
      PicturePos.Top = 8
      PicturePos.Right = 30
      PicturePos.Bottom = 28
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key96: TKey
      Left = 888
      Top = 280
      Width = 90
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00520001'
        'C0520001'
        '40520001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '0'
      DownText = 'Ins'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 4
      DownPosX = 5
      MidPosX = 5
    end
    object Key110: TKey
      Left = 984
      Top = 280
      Width = 42
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '00530001'
        'C0530001'
        '40530001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpText = '.'
      DownText = 'Del'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktExNum
      UpPosX = 6
      DownPosX = 5
      MidPosX = 5
    end
    object Key12: TKey
      Left = 1032
      Top = 232
      Width = 42
      Height = 90
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '011C0001'
        'C11C0001'
        '411C0001')
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      MiddleText = 'Enter'
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clWhite
      DownFont.Height = -12
      DownFont.Name = 'Segoe UI'
      DownFont.Style = [fsItalic]
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktScroll
      UpPosX = 0
      DownPosX = 5
      MidPosX = 5
    end
    object Key92: TKey
      Left = 553
      Top = 280
      Width = 52
      Height = 42
      OnMouseDown = Key100MouseDown
      ScanCodes.Strings = (
        '015C0001'
        'C15C0001'
        '415C0001')
      Picture.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B28D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000EFA400EFA400EFA4
        00EFA400EFA400EFA400EFA400EFA400EFA400B28D393998BA00B9FF00B9FF00
        B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF000000000000000000000000
        EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400B28D393998
        BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00000000
        0000000000000000EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400
        EFA400B28D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9
        FF00B9FF000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B18D393998BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000EFA400EFA400EFA4
        00EFA400EFA400EFA400EFA400EFA400EFA400B18D393898BA00B9FF00B9FF00
        B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF000000000000000000000000
        EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400B18D393898
        BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00000000
        0000000000000000EFA400EFA400EFA400EFA400EFA400EFA400EFA400EFA400
        EFA400B18D393898BA00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9FF00B9
        FF00B9FF000000000000000000000000EFA400EFA400EFA400EFA400EFA400EF
        A400EFA400EFA400EFA400B18D393898BA00B9FF00B9FF00B9FF00B9FF00B9FF
        00B9FF00B9FF00B9FF00B9FF000000000000000000000000B18C38B18C38B18C
        38B18C38B18C38B18C38B18C38B18C38B18C38B18C383898BA3898BA3898BA38
        98BA3898BA3898BA3898B93898B93898B93898B9000000000000000000000000
        4962B34962B34962B34962B34962B34962B34962B34962B34962B34962B33897
        7838977839987939987939987938987838987838987838987838987800000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24A62B339977800BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F0000000000000000000000002250F22250F22250F22250F22250F222
        50F22250F22250F22250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F
        00BA7F00BA7F00BA7F00BA7F0000000000000000000000002250F22250F22250
        F22250F22250F22250F22250F22250F22250F24A62B239977700BA7F00BA7F00
        BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F000000000000000000000000
        2250F22250F22250F22250F22250F22250F22250F22250F22250F24A62B23997
        7700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F0000000000000000000000002250F22250F22250F22250F22250F222
        50F22250F22250F22250F24A62B239977700BA7F00BA7F00BA7F00BA7F00BA7F
        00BA7F00BA7F00BA7F00BA7F0000000000000000000000002250F22250F22250
        F22250F22250F22250F22250F22250F22250F24A62B239977700BA7F00BA7F00
        BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F000000000000000000000000
        2250F22250F22250F22250F22250F22250F22250F22250F22250F24961B13997
        7700BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00000000
        00000000000000002250F22250F22250F22250F22250F22250F22250F22250F2
        2250F24961B138967600BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA7F00BA
        7F00BA7F00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PicturePos.Left = 14
      PicturePos.Top = 10
      PicturePos.Right = 38
      PicturePos.Bottom = 34
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWindowText
      UpFont.Height = -12
      UpFont.Name = 'Segoe UI'
      UpFont.Style = []
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -13
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = 3223601
      PressColor = 9222870
      KeyType = ktSticked
      UpPosX = 0
      DownPosX = 25
      MidPosX = 5
    end
    object Key223: TKey
      Left = 1032
      Top = 48
      Width = 25
      Height = 26
      PicturePos.Left = 4
      PicturePos.Top = 4
      PicturePos.Right = 38
      PicturePos.Bottom = 38
      UpFont.Charset = DEFAULT_CHARSET
      UpFont.Color = clWhite
      UpFont.Height = -19
      UpFont.Name = 'Segoe UI'
      UpFont.Style = [fsItalic]
      DownFont.Charset = DEFAULT_CHARSET
      DownFont.Color = clRed
      DownFont.Height = -16
      DownFont.Name = 'Segoe UI'
      DownFont.Style = []
      MiddleFont.Charset = DEFAULT_CHARSET
      MiddleFont.Color = clWhite
      MiddleFont.Height = -19
      MiddleFont.Name = 'Segoe UI'
      MiddleFont.Style = [fsItalic]
      Color = clWindow
      PressColor = clRed
      Round = 40
      KeyType = ktLetters
      DownPosX = 25
      MidPosX = 5
    end
  end
end
