unit MainUnit;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.Menus, KeyboardUnit, Key, SendKeyPressProc, StatisticsOptions, PressCounter,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, IniFiles,
  AnalogMeter, FileMapping, Language;
type
  TKeyboardForm = class(TForm)
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
    N5: TMenuItem;
    N6: TMenuItem;
    TrayIcon: TTrayIcon;
    instantTimer: TTimer;
    N7: TMenuItem;
    speedM: TAnalogMeter;
    instSpeedM: TAnalogMeter;
    N8: TMenuItem;
    N9: TMenuItem;
    Shape1: TShape;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    procedure exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure LayoutChange(var msg: TMessage); message WM_CHANGELANG;
    procedure WinMonitorTimer(Sender: TObject);
    procedure Key100MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure CreateParams(var AParams: TCreateParams); override;
    procedure N6Click(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure instantTimerTimer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure instSpeedMChange(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N10Click(Sender: TObject);
    procedure CreateParams(var AParams: TCreateParams); override;
  private
    instantticker:word;
    function FindKey(ScanCode: string):TKey;
    procedure showStatistics;
  public
    MapFile: string;
    sh1, sh2: TColor;
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
  //function GetKeyboard: TKeyboard stdcall; external 'KeyboardHook.dll';

var
  KeyboardForm: TKeyboardForm;
  Statistics: TStatistics;
  VirtKeyboard: TKeyboard;
  hwin: Hwnd;
implementation

{$R *.dfm}

procedure TKeyboardForm.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;

end;

procedure TKeyboardForm.ApplicationEvents1Minimize(Sender: TObject);
begin
  WindowState:=wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.ShowBalloonHint;
end;

procedure TKeyboardForm.exit1Click(Sender: TObject);
begin
  close;
end;

function TKeyboardForm.FindKey(ScanCode: string): TKey;
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

procedure TKeyboardForm.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
    //kb:Tkeyboard;
    savespeed:TIniFile;
begin
  //kb:=GetKeyboard;
  VirtKeyboard.save(false, round(speedM.Value), speedM.Tag);
  savespeed:=Tinifile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  savespeed.WriteInteger('Speeds','averageSpeed',round(speedM.Value));
  savespeed.WriteInteger('Speeds','recordSpeed',speedM.Tag);
  savespeed.WriteInteger('Speeds','count', statistics.PressCount);
  savespeed.Destroy;
  StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  dWin:=FindWindow(nil, 'KeyboardMap');
  if dWin<>0 then
  SendMessage(dWin, WM_DESTROY, 0,0);

end;

procedure TKeyboardForm.FormCreate(Sender: TObject);
var loadparams:TIniFile;   n:longword;
begin

  instantticker:=0;
  VirtKeyboard:=TKeyboard.create;

  Key20.Pressed:=Odd(GetKeyState(VK_CAPITAL));
  Key144.Pressed:=Odd(GetKeyState(VK_NUMLOCK));
  Key145.Pressed:=Odd(GetKeyState(VK_SCROLL));
  loadparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  SpeedM.Value:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
  SpeedM.HighZoneValue:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
  n:=loadparams.ReadInteger('Speeds', 'count', 0);
  Statistics:= TStatistics.Create(n, round(speedM.Value));

  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;
  DataArea^.key:=loadparams.ReadInteger('HotKeys', 'Key', 0);
  DataArea^.ExKey:=loadparams.ReadInteger('HotKeys', 'Ext', 0);
  RunHook;
  loadparams.Destroy;
end;

procedure TKeyboardForm.GetPressing(var msg: TMessage);
var st:string; ScanHex:string; _key:Tkey;
    curspeed: word;
begin

   VirtKeyboard.addPress(msg.WParam, msg.LParam);
   ScanHex:=InttoHex(msg.LParam);
   st:=string.Format('Key = %s; Letter =%s; Virtual = %s; Scan = %s',
   [Chr(msg.WParam), VirtKeyboard.letter, InttoHex(msg.WParam), ScanHex]);
   Memo1.Lines.Clear;
   Memo1.Lines.Add(st);

   _key:=FindKey(ScanHex);
   _key.Pressed:=VirtKeyboard.isPressed;

   if virtkeyboard.isPressed then
   begin
     if instantTimer.Enabled=false then instanttimer.Enabled:=true;
     instSpeedM.Value := Statistics.instantSpeed(instantticker);
     if (_key.KeyType<>ktScroll) and
        (_key.KeyType<>ktSticked) and
        (_key.KeyType<>ktFunc)
      then   //don't count arrows and scroll, functions, shift and other
     begin
       curspeed := round(instSpeedM.Value);
       SpeedM.Value:=Statistics.averageSpeed(curspeed);
       instantticker:=0;
       //memo1.Lines.Add(floattostr(SpeedM.Value));
     end;
   end;
   if statistics.IsShowing then
   begin
      statistics.Init(virtKeyboard.map);
      if sh1=sh2 then
        statistics.ShowStatisticsbyNum(msg.WParam, _key)
      else
        statistics.ShowStatisticsbyGrad(msg.WParam, sh1, sh2, _key) ;
   end;
   if _key.Name='Key20' then  //CapsLock
      _key.Pressed:=Odd(GetKeyState(VK_CAPITAL)) else
   if _Key.Name='Key144' then
      _key.Pressed:=Odd(GetKeyState(VK_NUMLOCK)) else
   if _key.Name='Key145' then
      _key.Pressed:= Odd(GetKeyState(VK_SCROLL));
end;


{$REGION 'MyRegion'}
procedure TKeyboardForm.instantTimerTimer(Sender: TObject);
begin
  inc(instantticker);
  if instantticker>300 then instanttimer.Enabled:=false;

end;

procedure TKeyboardForm.instSpeedMChange(Sender: TObject);
begin
     with (sender as TAnalogMeter) do
     begin
      LowZoneValue:=Value-10;
      if (value>tag) and (value<max) then tag:=round(value);
      HighZoneValue:=tag;
     end;
end;

procedure TKeyboardForm.Key100MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var ShiftDown: boolean;
  begin
  ShiftDown:=key160.Pressed or key161.Pressed or Odd(GetKeyState(VK_CAPITAL));
  KeyClick((sender as TKey), shiftdown);

  end;


  procedure TKeyboardForm.LayoutChange(var msg: TMessage);
begin
  if (DataArea^.key=$38) and (DataArea^.ExKey=$20) then
    LayoutChangeCtrl else
  if (DataArea^.key=$1D) and (DataArea^.ExKey=0) then
    LayoutChangeAlt else
  begin
      LayoutChangeCtrl ; LayoutChangeAlt
  end;
end;

procedure TKeyboardForm.N10Click(Sender: TObject);
begin
    langForm.ShowModal;
end;

procedure TKeyboardForm.N4Click(Sender: TObject);  //open statistics...
  var
      tempKey: TKey;
  begin
       form2.showmodal;
       if mapFile<>'' then
       begin
         mapFile:=ExtractFileDir( Paramstr(0))+'\maps\'+mapFile;
         Statistics.Init(mapFile);
         Statistics.IsEmpty:=false;
         showStatistics;
       end;
       speedM.Value:=statistics.avSpeed;
       speedM.HighZoneValue:=statistics.recordSpeed;
  end;

  procedure TKeyboardForm.N5Click(Sender: TObject);  //close statistics
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
       n5.Enabled:=false;
     end;
  end;

  procedure TKeyboardForm.N6Click(Sender: TObject);
  begin
     VirtKeyboard.save(true, round(speedM.Value), speedM.Tag);  //save current session
     MessageDlg('Статистика сохранена', TMsgDlgType.mtInformation, [mbOK], 0);
  end;

  procedure TKeyboardForm.showStatistics;
  var tempKey: TKey;
  begin
    for var i := Statistics.firstItem to Statistics.lastItem do
         begin
           tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
           if tempKey=nil then continue;
           Statistics.saveKey(i, tempKey);
           if sh1=sh2 then //sh1=sh2 - numbers else gradient
            Statistics.ShowStatisticsByNum(i, tempKey)
           else
            Statistics.ShowStatisticsByGrad(i,sh1,sh2, tempKey );
           n5.Enabled:=true;
         end;

  end;

  procedure TKeyboardForm.N7Click(Sender: TObject);   //curent session's stat
  var
      tempKey: TKey;
  begin
     Statistics.Init(virtKeyboard.map);
         Statistics.IsEmpty:=false;
         showStatistics;
  end;

  procedure TKeyboardForm.N9Click(Sender: TObject);  //statistics summary
  begin
       VirtKeyboard.save(false, round(speedM.Value), speedM.Tag);
       n7click(sender);
  end;

procedure TKeyboardForm.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if MessageDlg('Стереть рекорд и среднюю скорость?', TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes
  then
  begin
    Statistics.resetSpeed;
    speedM.Tag:=0;
    speedM.Value:=0;
  end;
end;

procedure TKeyboardForm.TrayIconDblClick(Sender: TObject);
  begin
     TrayIcon.Visible := False;
    Show();
    WindowState := wsNormal;
    Application.BringToFront();
  end;

  procedure TKeyboardForm.WinMonitorTimer(Sender: TObject);
  var temp:hWnd;
  begin
      temp:=GetForegroundWindow;
      if temp<>self.Handle then
        hWin:=temp;

  end;

{$ENDREGION}
end.
