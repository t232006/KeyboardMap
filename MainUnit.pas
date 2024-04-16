unit MainUnit;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.Menus, KeyboardUnit, saver, Key, SendKeyPressProc, FilesListUnit, PressCounter,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ApplicationEvents1: TApplicationEvents;
    TrayMenu: TPopupMenu;
    exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    WinMonitor: TTimer;
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
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    N5: TMenuItem;
    procedure exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure WinMonitorTimer(Sender: TObject);
    procedure Key100MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure CreateParams(var AParams: TCreateParams); override;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private

    function FindKey(ScanCode: string):TKey;
  public
    MapFile: string;
  end;
  procedure RunHook(wnd:Hwnd) stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
  function GetKeyboard: TKeyboard stdcall; external 'KeyboardHook.dll';

var
  Form1: TForm1;
  Statistic: TStatistic;
  Keyboard: TKeyboard;
  hwin: Hwnd;
implementation

{$R *.dfm}

{procedure TForm1.ApplicationEvents1Minimize(Sender: TObject);
begin
  WindowState:=wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.ShowBalloonHint;
end;}

{procedure TForm1.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;

end;}

 {
   procedure TForm1.CreateParams(var AParams: TCreateParams);
   begin
     inherited CreateParams(AParams);
     AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;

   end;
 }

procedure TForm1.Action1Execute(Sender: TObject);   //show statistic
var
    tempKey: TKey;
begin
     form2.showmodal;
     if mapFile<>'' then
     begin

       mapFile:=ExtractFileDir( Paramstr(0))+'\maps\'+mapFile;
       Statistic.Init(mapFile);
       Statistic.IsEmpty:=false;
       for var i := Statistic.firstItem to Statistic.lastItem do
       begin
         tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
         if tempKey=nil then continue;
         Statistic.saveKey(i, tempKey);
         Statistic.ShowStatistic(i, tempKey);
       end;
       n5.Enabled:=true;
     end;
end;

procedure TForm1.Action2Execute(Sender: TObject);  //hide statistic
var tempKey: TKey;
begin
   if statistic.IsEmpty=false then
   begin

     for var i := Statistic.firstItem to Statistic.lastItem do
       begin
          tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
          if tempKey=nil then continue;
          Statistic.HideStatistic(i, tempKey);
       end;
     statistic.IsEmpty:=true;
     n5.Enabled:=false;
   end;
end;

procedure TForm1.exit1Click(Sender: TObject);
begin
  close;
end;

function TForm1.FindKey(ScanCode: string): TKey;
var k, i:byte;  key:TKey;
begin
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
   result:=FindComponent('Key44') as TKey;  //exception

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
    kb:Tkeyboard;
begin
  kb:=GetKeyboard;
  Save(kb);
  StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  dWin:=FindWindow(nil, 'KeyboardMap');
  if dWin<>0 then
  SendMessage(dWin, WM_DESTROY, 0,0);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RunHook(self.Handle);
  Keyboard:=TKeyboard.create;
  Statistic:= TStatistic.Create;
  Key20.Pressed:=Odd(GetKeyState(VK_CAPITAL));
  Key144.Pressed:=Odd(GetKeyState(VK_NUMLOCK));
  Key145.Pressed:=Odd(GetKeyState(VK_SCROLL));
end;

procedure TForm1.GetPressing(var msg: TMessage);
var st:string; ScanHex:string; _key:Tkey;
begin
   Keyboard:=GetKeyboard;
   ScanHex:=InttoHex(Keyboard.param.scanCode);
   st:=string.Format('Key = %s; Letter =%s; Virtual = %s; Scan = %s',
   [Chr(Keyboard.Param.virtCode), Keyboard.param.letter,
   InttoHex(Keyboard.param.virtCode), ScanHex]);
   Memo1.Lines.Clear;
   Memo1.Lines.Add(st);

   _key:=FindKey(ScanHex);
   _key.Pressed:=Keyboard.param.isPressed;
   if _key.Name='Key20' then  //CapsLock
      _key.Pressed:=Odd(GetKeyState(VK_CAPITAL)) else
   if _Key.Name='Key144' then
      _key.Pressed:=Odd(GetKeyState(VK_NUMLOCK)) else
   if _key.Name='Key145' then
      _key.Pressed:= Odd(GetKeyState(VK_SCROLL));

end;

procedure TForm1.Key100MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var ShiftDown: boolean;
  begin
  ShiftDown:=key160.Pressed or key161.Pressed or Odd(GetKeyState(VK_CAPITAL));
  KeyClick((sender as TKey), shiftdown);

  end;

{procedure TForm1.TrayIconDblClick(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;}

procedure TForm1.WinMonitorTimer(Sender: TObject);
var temp:hWnd;
begin
    temp:=GetForegroundWindow;
    if temp<>self.Handle then
      hWin:=temp;

end;

end.
