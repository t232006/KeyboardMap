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
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure Key100MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormHeaderSpeedButton1Click(Sender: TObject);
  private
    function FindKey(ScanCode: string):TKey;
    procedure showStatistics; override;
    procedure closeStatistics; override;
  end;

var
  KeyboardFormLarge: TKeyboardFormLarge;


implementation
uses MainUnitSmall;
{$R *.dfm}

procedure TKeyboardFormLarge.closeStatistics;
var tempKey: TKey;
  begin
     if Statistics.IsEmpty=false then
     begin
       for var i := Statistics.firstItem to Statistics.lastItem do
         begin
            tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
            if tempKey=nil then continue;
            Statistics.HideStatistics(i, tempKey);
         end;
       Statistics.IsEmpty:=true;
     end;
end;

function TKeyboardFormLarge.FindKey(ScanCode: string): TKey;
var k, i:byte;  key:TKey;
begin
   //result:=nil;
   for k := 1 to 222 do
   begin
      key:=FindComponent('Key'+inttostr(k)) as TKey;
      if key=nil then continue else
      for I := 0 to key.ScanCodes.Count-1 do
        if ScanCode=key.ScanCodes[i] then
        begin
          result:=key;
          exit;
        end;
   end;
   result:=FindComponent('Key223') as TKey;  //exception

end;

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

procedure TKeyboardFormLarge.GetPressing(var msg: TMessage);
var _key:Tkey;
    curspeed: word;
begin
   {st:=string.Format('Key = %s; Letter =%s; Virtual = %s; Scan = %s',
   [VirtKeyboard.button, VirtKeyboard.letter, InttoHex(msg.WParam), ScanHex]);
   {Memo1.Lines.Clear;
   Memo1.Lines.Add(st);}
   inherited;
   _key:=FindKey(ScanHex);
   _key.Pressed:=VirtKeyboard.isPressed;

   if virtkeyboard.isPressed then
   begin
     if (_key.KeyType<>ktScroll) and
        (_key.KeyType<>ktSticked) and
        (_key.KeyType<>ktFunc)
      then   //don't count arrows and scroll, functions, shift and other
     begin
       curspeed := round(speedform.instSpeedM.Value);
       speedform.SpeedM.Value:=Statistics.averageSpeed(curspeed);
       instantticker:=0;
       //memo1.Lines.Add(floattostr(SpeedM.Value));
     end;
     if statistics.IsShowing then
     begin
        statistics.Init(virtKeyboard.map);
        if sh1=sh2 then
          statistics.ShowStatisticsbyNum(virtKeyboard.VirtCode, _key)
        else
          statistics.ShowStatisticsbyGrad(virtKeyboard.VirtCode, sh1, sh2, _key) ;
     end;
   end;
   
   if _key.Name='Key20' then  //CapsLock
      _key.Pressed:=Odd(GetKeyState(VK_CAPITAL)) else
   if _Key.Name='Key144' then
      _key.Pressed:=Odd(GetKeyState(VK_NUMLOCK)) else
   if _key.Name='Key145' then
      _key.Pressed:= Odd(GetKeyState(VK_SCROLL));
end;

{$REGION 'MyRegion'}

procedure TKeyboardFormLarge.Key100MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var ShiftDown: boolean;
  begin
  ShiftDown:=key160.Pressed or key161.Pressed or Odd(GetKeyState(VK_CAPITAL));
  KeyClick((sender as TKey), shiftdown, langcode);
  end;


procedure TKeyboardFormLarge.showStatistics;
  var tempKey: TKey;
  begin
    for var i := Statistics.firstItem to Statistics.lastItem do
         begin
           tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
           if tempKey=nil then continue;
           Statistics.saveKey(i, tempKey);
           if showGradient then
            Statistics.ShowStatisticsByGrad(i,sh1,sh2, tempKey )
           else
            Statistics.ShowStatisticsByNum(i, tempKey);
           //n5.Enabled:=true;
         end;
    FormHeader.StatSwitch.Visible:=true;
    if sh1=sh2 then FormHeader.StatSwitch.Enabled:=false else
                      FormHeader.StatSwitch.Enabled:=true;
    Formheader.StatSwitch.Tag:=1;
    if showGradient then FormHeader.StatSwitch.State:=tssOff else
                        FormHeader.StatSwitch.State:=tssOn;
    Formheader.StatSwitch.Tag:=0;
  end;

{$ENDREGION}
end.
