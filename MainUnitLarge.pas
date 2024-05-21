unit MainUnitLarge;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Menus, Key, Vcl.ImgList, Vcl.Buttons, Vcl.WinXCtrls, keyboardunit,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
   System.ImageList, speedometer, ParentUnit, SendKeyPressProc;
type
  TKeyboardFormLarge = class(TParentForm)
    Panel1: TPanel;
    Key27: TKey;
    Key112: TKey;
    Key113: TKey;
    Key114: TKey;
    Key115: TKey;
    Key116: TKey;
    Key117: TKey;
    Key118: TKey;
    Key119: TKey;
    Key120: TKey;
    Key121: TKey;
    Key122: TKey;
    Key123: TKey;
    Key44: TKey;
    Key145: TKey;
    Key16: TKey;
    Key41: TKey;
    Key49: TKey;
    Key50: TKey;
    Key51: TKey;
    Key52: TKey;
    Key53: TKey;
    Key54: TKey;
    Key55: TKey;
    Key56: TKey;
    Key57: TKey;
    Key48: TKey;
    Key189: TKey;
    Key187: TKey;
    Key8: TKey;
    Key45: TKey;
    Key36: TKey;
    Key33: TKey;
    Key144: TKey;
    Key111: TKey;
    Key106: TKey;
    Key109: TKey;
    Key9: TKey;
    Key81: TKey;
    Key87: TKey;
    Key69: TKey;
    Key82: TKey;
    Key84: TKey;
    Key89: TKey;
    Key85: TKey;
    Key73: TKey;
    Key79: TKey;
    Key80: TKey;
    Key219: TKey;
    Key94: TKey;
    Key220: TKey;
    Key46: TKey;
    Key35: TKey;
    Key34: TKey;
    Key103: TKey;
    Key104: TKey;
    Key105: TKey;
    Key107: TKey;
    Key20: TKey;
    Key65: TKey;
    Key83: TKey;
    Key68: TKey;
    Key70: TKey;
    Key71: TKey;
    Key72: TKey;
    Key74: TKey;
    Key75: TKey;
    Key76: TKey;
    Key186: TKey;
    Key222: TKey;
    Key13: TKey;
    Key100: TKey;
    Key101: TKey;
    Key102: TKey;
    Key97: TKey;
    Key98: TKey;
    Key99: TKey;
    Key160: TKey;
    Key90: TKey;
    Key88: TKey;
    Key67: TKey;
    Key86: TKey;
    Key66: TKey;
    Key78: TKey;
    Key77: TKey;
    Key188: TKey;
    Key190: TKey;
    Key191: TKey;
    Key161: TKey;
    Key162: TKey;
    Key91: TKey;
    Key164: TKey;
    Key32: TKey;
    Key165: TKey;
    Key93: TKey;
    Key163: TKey;
    Key37: TKey;
    Key40: TKey;
    Key39: TKey;
    Key38: TKey;
    Key96: TKey;
    Key110: TKey;
    Key12: TKey;
    Key92: TKey;
    Key223: TKey;
    procedure FormCreate(Sender: TObject);
    procedure Key100MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormHeaderSpeedButton1Click(Sender: TObject);
  private
  end;

var
  KeyboardFormLarge: TKeyboardFormLarge;


implementation
uses MainUnitSmall;
{$R *.dfm}

procedure TKeyboardFormLarge.FormCreate(Sender: TObject);
begin
  inherited;
  Key20.Pressed:=Odd(GetKeyState(VK_CAPITAL));
  Key144.Pressed:=Odd(GetKeyState(VK_NUMLOCK));
  Key145.Pressed:=Odd(GetKeyState(VK_SCROLL));

end;

procedure TKeyboardFormLarge.FormHeaderSpeedButton1Click(Sender: TObject);
begin
  KeyboardFormSmall.Show;
  self.Hide;
end;

procedure TKeyboardFormLarge.Key100MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var ShiftDown: boolean;
  begin
  ShiftDown:=key160.Pressed or key161.Pressed or Odd(GetKeyState(VK_CAPITAL));
  KeyClick((sender as TKey), shiftdown, langcode);
  end;


end.
