unit MainUnit;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.Menus, KeyboardUnit, Key, SendKeyPressProc, StatisticsOptions, PressCounter,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, IniFiles,
  AnalogMeter, FileMapping, Language, speedometer, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.WinXCtrls, LabSwitch;
type
  TKeyboardForm = class(TForm)
    Memo1: TMemo;
    ApplicationEvents1: TApplicationEvents;
    TrayMenu: TPopupMenu;
    exit1: TMenuItem;
    N1: TMenuItem;
    WinMonitor: TTimer;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    TrayIcon: TTrayIcon;
    instantTimer: TTimer;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    ActionManager1: TActionManager;
    Open_statistics: TAction;
    Close_statistics: TAction;
    Save_cur_session: TAction;
    Cur_session_stat: TAction;
    Stat_summary: TAction;
    Layout_change: TAction;
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
    WinStyle: TSpeedButton;
    ImageList: TImageList;
    Key223: TKey;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    StatMode: TFrame1;
    procedure exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure LayoutChange(var msg: TMessage); message WM_CHANGELANG;
    procedure WinMonitorTimer(Sender: TObject);
    procedure Key100MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure CreateParams(var AParams: TCreateParams); override;

    procedure TrayIconDblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure instantTimerTimer(Sender: TObject);
    procedure CreateParams(var AParams: TCreateParams); override;
    procedure Open_statisticsExecute(Sender: TObject);
    procedure Close_statisticsExecute(Sender: TObject);
    procedure Save_cur_sessionExecute(Sender: TObject);
    procedure Cur_session_statExecute(Sender: TObject);
    procedure Stat_summaryExecute(Sender: TObject);
    procedure Layout_changeExecute(Sender: TObject);
    procedure WinStyleClick(Sender: TObject);
    procedure StatModeSwitchClick(Sender: TObject);
  private
    instantticker:word;
    LangCode: HKL;
    function FindKey(ScanCode: string):TKey;
    procedure showStatistics;
    procedure closeStatistics;
  public
    MapFile: string;
    sh1, sh2: TColor;
    showGradient: boolean;
    Statistics: TStatistics;
    saveparams:TIniFile;
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
  //function GetKeyboard: TKeyboard stdcall; external 'KeyboardHook.dll';

var
  KeyboardForm: TKeyboardForm;
  VirtKeyboard: TKeyboard;
  hwin: Hwnd;
implementation

{$R *.dfm}

procedure TKeyboardForm.closeStatistics;
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

procedure TKeyboardForm.Close_statisticsExecute(Sender: TObject);
begin
   closeStatistics;
   StatMode.Visible:=false;
   Close_statistics.Enabled:=false;
end;

procedure TKeyboardForm.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;

end;

procedure TKeyboardForm.Cur_session_statExecute(Sender: TObject);
begin
   Statistics.Init(virtKeyboard.map);
         Statistics.IsEmpty:=false;
         showStatistics;
         close_statistics.Enabled:=true;
end;

procedure TKeyboardForm.ApplicationEvents1Minimize(Sender: TObject);
begin
  WindowState:=wsMinimized;
  //TrayIcon.Visible := True;
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

procedure TKeyboardForm.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
    //kb:Tkeyboard;

begin
  //kb:=GetKeyboard;
  VirtKeyboard.save(false, round(speedform.speedM.Value), speedform.speedM.Tag);
  //saveparams:=Tinifile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  saveparams.WriteInteger('Speeds','averageSpeed',round(speedform.speedM.Value));
  saveparams.WriteInteger('Speeds','recordSpeed',speedform.speedM.Tag);
  saveparams.WriteInteger('Speeds','count', statistics.PressCount);

  StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  dWin:=FindWindow(nil, 'KeyboardMap');
  if dWin<>0 then
  SendMessage(dWin, WM_DESTROY, 0,0);

end;

procedure TKeyboardForm.FormCreate(Sender: TObject);
var n:longword;
begin
  speedform:=TSpeedForm.Create(self);
  instantticker:=0;
  VirtKeyboard:=TKeyboard.create;

  Key20.Pressed:=Odd(GetKeyState(VK_CAPITAL));
  Key144.Pressed:=Odd(GetKeyState(VK_NUMLOCK));
  Key145.Pressed:=Odd(GetKeyState(VK_SCROLL));
  saveparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  speedform.SpeedM.Value:= saveparams.ReadInteger('Speeds', 'averageSpeed', 0);
  speedform.SpeedM.HighZoneValue:=saveparams.ReadInteger('Speeds', 'recordSpeed', 0);
  n:=saveparams.ReadInteger('Speeds', 'count', 0);
  Statistics:= TStatistics.Create(n, round(speedform.speedM.Value));

  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;
  DataArea^.key:=saveparams.ReadInteger('HotKeys', 'Key', 0);
  DataArea^.ExKey:=saveparams.ReadInteger('HotKeys', 'Ext', 0);
  RunHook;
  speedform.show;
end;

procedure TKeyboardForm.GetPressing(var msg: TMessage);
var st:string; ScanHex:string; _key:Tkey;
    curspeed: word;
begin

   VirtKeyboard.addPress(msg.WParam, msg.LParam, LangCode);
   ScanHex:=InttoHex(msg.LParam);
   st:=string.Format('Key = %s; Letter =%s; Virtual = %s; Scan = %s',
   [VirtKeyboard.button, VirtKeyboard.letter, InttoHex(msg.WParam), ScanHex]);
   {Memo1.Lines.Clear;
   Memo1.Lines.Add(st);}

   _key:=FindKey(ScanHex);
   _key.Pressed:=VirtKeyboard.isPressed;

   if virtkeyboard.isPressed then
   begin
     if instantTimer.Enabled=false then instanttimer.Enabled:=true;
     speedform.instSpeedM.Value := Statistics.instantSpeed(instantticker);
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
procedure TKeyboardForm.instantTimerTimer(Sender: TObject);
begin
  inc(instantticker);
  if instantticker>300 then instanttimer.Enabled:=false;

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

procedure TKeyboardForm.Layout_changeExecute(Sender: TObject);
begin
    langForm.ShowModal;
end;

procedure TKeyboardForm.showStatistics;
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
           n5.Enabled:=true;
         end;
    StatMode.Visible:=true;
    if sh1=sh2 then statmode.Enabled:=false else
                      statmode.Enabled:=true;
    if showGradient then statmode.Switch.State:=tssOn else
                        statmode.Switch.State:=tssOff;



  end;

procedure TKeyboardForm.StatModeSwitchClick(Sender: TObject);
begin
  StatMode.SwitchClick(Sender);
  CloseStatistics;
  if statMode.Switch.State=tssOff then
    showGradient:=false else showGradient:=true;
  showStatistics;

end;

procedure TKeyboardForm.Stat_summaryExecute(Sender: TObject);
begin
   VirtKeyboard.save(false, round(speedform.speedM.Value), speedform.speedM.Tag);
       Cur_session_statExecute(sender);
end;
procedure TKeyboardForm.Open_statisticsExecute(Sender: TObject);
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
       end else
         Cur_session_statExecute(Sender);
       speedform.speedM.Value:=statistics.avSpeed;
       speedform.speedM.HighZoneValue:=statistics.recordSpeed;
       close_statistics.Enabled:=true;
end;

procedure TKeyboardForm.Save_cur_sessionExecute(Sender: TObject);
begin
 VirtKeyboard.save(true, round(speedform.speedM.Value), speedform.speedM.Tag);  //save current session
 MessageDlg('Статистика сохранена', TMsgDlgType.mtInformation, [mbOK], 0);
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
      threadID:DWord;

  begin
      temp:=GetForegroundWindow;
      if temp<>self.Handle then
        hWin:=temp;
      threadID:=GetWindowThreadProcessID(temp);
      LangCode:=(GetKeyboardLayout(ThreadID));

  end;

procedure TKeyboardForm.WinStyleClick(Sender: TObject);
begin
     if winStyle.Down then
    self.FormStyle:=fsStayOnTop else self.FormStyle:=fsNormal;
end;

{$ENDREGION}
end.
