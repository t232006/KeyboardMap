unit ParentUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, winHeader, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ExtCtrls, Vcl.Menus, Vcl.AppEvnts, Inifiles,
  keyboardUnit, filemapping, LabSwitch, Language, speedometer,
  AnalogMeter, PressCounter, SendKeyPressProc, Vcl.WinXCtrls, Key;
const WM_WANT_CLOSE = WM_USER+$345+10;
type
  TParentForm = class(TForm)
    FormHeader: TFormHeader;
    TrayMenu: TPopupMenu;
    N1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    exit1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N17: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    WinMonitor: TTimer;
    TrayIcon: TTrayIcon;
    ActionManager1: TActionManager;
    Open_statistics: TAction;
    Close_statistics: TAction;
    Save_cur_session: TAction;
    Cur_session_stat: TAction;
    Stat_summary: TAction;
    Layout_change: TAction;
    speedWin: TAction;
    reset: TAction;
    instantTimer: TTimer;
    ImageList: TImageList;
    N21: TMenuItem;
    procedure exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure LayoutChange(var msg: TMessage); message WM_CHANGELANG;
    procedure WinMonitorTimer(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure instantTimerTimer(Sender: TObject);
    procedure CreateParams(var AParams: TCreateParams); override;
    procedure Open_statisticsExecute(Sender: TObject);
    procedure Cur_session_statExecute(Sender: TObject);
    procedure Close_statisticsExecute(Sender: TObject);
    procedure Save_cur_sessionExecute(Sender: TObject);
    procedure Stat_summaryExecute(Sender: TObject);
    procedure Layout_changeExecute(Sender: TObject);
    procedure FormHeaderStatSwitchClick(Sender: TObject);
    procedure speedWinExecute(Sender: TObject);
    procedure resetExecute(Sender: TObject);
    procedure ChangeFormSize; virtual; abstract;
    procedure Show(keyb: TKeyboard); overload;
    procedure FormShow(Sender: TObject);
    function FindKey(ScanCode: string):TKey;
    procedure N1Click(Sender: TObject);
    procedure TrayMenuPopup(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormHeaderSpeedButton3Click(Sender: TObject);
  private

  protected
      LangCode: HKL;
     instantticker:word;
     ScanHex:string;
     procedure showStatistics;
      procedure closeStatistics;
  public
    VirtKeyboard: TKeyboard;
    MapFile: string;
    sh1, sh2: TColor;
    showGradient: boolean;
  end;
  
var
  ParentForm: TParentForm;
  hwin: Hwnd;
implementation
uses MainUnitSmall, MainUnitLarge, BackgroundUnit, StatisticsOptions;
{$R *.dfm}
procedure TParentForm.ApplicationEvents1Minimize(Sender: TObject);
begin
      WindowState:=wsMinimized;
  //TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.ShowBalloonHint;
end;
procedure TParentForm.closeStatistics;
var tempKey: TKey;
  begin
     if BackForm.Statistics.IsEmpty=false then
     begin
       for var i := BackForm.Statistics.firstItem to BackForm.Statistics.lastItem do
         begin
            tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
            if tempKey=nil then continue;
            BackForm.Statistics.HideStatistics(i, tempKey);
         end;
       BackForm.Statistics.IsEmpty:=true;
     end;
end;

procedure TParentForm.Close_statisticsExecute(Sender: TObject);
begin
    closeStatistics;
   formHeader.StatSwitch.Visible:=false;
   Close_statistics.Enabled:=false;
end;
procedure TParentForm.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;
end;
procedure TParentForm.Cur_session_statExecute(Sender: TObject);
begin
        BackForm.Statistics.Init(virtKeyboard.map);
         BackForm.Statistics.IsEmpty:=false;
         showStatistics;
         close_statistics.Enabled:=true;
end;
procedure TParentForm.exit1Click(Sender: TObject);
begin
  close;
end;
procedure TParentForm.GetPressing(var msg: TMessage);
 var _key:Tkey;
    curspeed: word;
begin

   VirtKeyboard.addPress(msg.WParam, msg.LParam, LangCode);
   ScanHex:=InttoHex(msg.LParam);
   if virtkeyboard.isPressed then
   begin
      if instantTimer.Enabled=false then instanttimer.Enabled:=true;
     speedform.instSpeedM.Value := BackForm.Statistics.instantSpeed(instantticker);
   end;
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
       speedform.SpeedM.Value:=BackForm.Statistics.averageSpeed(curspeed);
       instantticker:=0;
       //memo1.Lines.Add(floattostr(SpeedM.Value));
     end;
     if BackForm.statistics.IsShowing then
     begin
        BackForm.statistics.Init(virtKeyboard.map);
        if sh1=sh2 then
          BackForm.statistics.ShowStatisticsbyNum(virtKeyboard.VirtCode, _key)
        else
          BackForm.statistics.ShowStatisticsbyGrad(virtKeyboard.VirtCode, sh1, sh2, _key) ;
     end;
   end;

   if _key.Name='Key20' then  //CapsLock
      _key.Pressed:=Odd(GetKeyState(VK_CAPITAL)) else
   if _Key.Name='Key144' then
      _key.Pressed:=Odd(GetKeyState(VK_NUMLOCK)) else
   if _key.Name='Key145' then
      _key.Pressed:= Odd(GetKeyState(VK_SCROLL));
end;

procedure TParentForm.FormClose(Sender: TObject; var Action: TCloseAction);
//var dWin:Hwnd;
begin
  VirtKeyboard.save(false, round(speedform.speedM.Value), speedform.speedM.Tag);
end;
procedure TParentForm.FormCreate(Sender: TObject);
//var n:longword;  //dWin:Hwnd;
begin
  instantticker:=0;
  VirtKeyboard:=TKeyboard.create;
  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;
  DataArea^.key:=loadparams.ReadInteger('HotKeys', 'Key', 0);
  DataArea^.ExKey:=loadparams.ReadInteger('HotKeys', 'Ext', 0);
  FormHeader.Align:=alTop;
end;

procedure TParentForm.FormHeaderSpeedButton3Click(Sender: TObject);
begin
  //FormHeader.SpeedButton3Click(Sender);
   sendmessage((Owner as TForm).Handle,WM_WANT_CLOSE,0,0);
end;

procedure TParentForm.FormHeaderStatSwitchClick(Sender: TObject);
begin
if formheader.StatSwitch.Tag<>0 then  exit;
begin
  //formheader.StatSwitch.Tag:=0;

end;
  CloseStatistics;
  if FormHeader.StatSwitch.State=tssOn then
    showGradient:=false else showGradient:=true;
  showStatistics;
end;

procedure TParentForm.FormHide(Sender: TObject);
//var saveParam: TIniFile;
begin
   saveparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
   saveparams.WriteInteger('Windows','PosX', left);
   saveparams.WriteInteger('Windows','PosY', top);
   saveparams.WriteString('Windows','Kind', self.ClassName);
   saveparams.Destroy;
end;

procedure TParentForm.FormShow(Sender: TObject);
begin
  (Owner as TForm).visible:=false;
end;
procedure TParentForm.instantTimerTimer(Sender: TObject);
begin
     inc(instantticker);
  if instantticker>300 then instanttimer.Enabled:=false;
end;
procedure TParentForm.LayoutChange(var msg: TMessage);
begin
   if (DataArea^.key=$38) and (DataArea^.ExKey=$20) then
    LayoutChangeCtrl else
  if (DataArea^.key=$1D) and (DataArea^.ExKey=0) then
    LayoutChangeAlt else
  begin
      LayoutChangeCtrl ; LayoutChangeAlt
  end;
end;
procedure TParentForm.Layout_changeExecute(Sender: TObject);
begin
  langForm.ShowModal;
end;
procedure TParentForm.N1Click(Sender: TObject);
begin
  if WindowState=TWindowState.wsMinimized then
    WindowState:=TWindowState.wsNormal
 else
  if WindowState=TWindowState.wsNormal then
    WindowState:=TWindowState.wsMinimized;
end;

procedure TParentForm.Open_statisticsExecute(Sender: TObject);
  var statForm: TForm2;
  begin
       statForm:= Tform2.Create(Self);
       statForm.showmodal;
       if mapFile<>'' then
       begin
         mapFile:=ExtractFileDir( Paramstr(0))+'\maps\'+mapFile;
         BackForm.Statistics.Init(mapFile);
         BackForm.Statistics.IsEmpty:=false;
         showStatistics;
       end else
         Cur_session_statExecute(Sender);
       speedform.speedM.Value:=BackForm.statistics.avSpeed;
       speedform.speedM.HighZoneValue:=BackForm.statistics.recordSpeed;
       close_statistics.Enabled:=true;
       statForm.Destroy;
end;
procedure TParentForm.resetExecute(Sender: TObject);
begin
if MessageDlg('������� ������ � ������� ��������?', TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes
  then
  begin
    BackForm.Statistics.resetSpeed;
    speedform.speedM.Tag:=0;
    speedform.speedM.Value:=0;
  end;
end;
procedure TParentForm.Save_cur_sessionExecute(Sender: TObject);
begin
VirtKeyboard.save(true, round(speedform.speedM.Value), speedform.speedM.Tag);  //save current session
 MessageDlg('���������� ���������', TMsgDlgType.mtInformation, [mbOK], 0);
end;
procedure TParentForm.Show(keyb: TKeyboard);
begin
  VirtKeyboard:=keyb;
  Show;
end;
function TParentForm.FindKey(ScanCode: string): TKey;
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

procedure TParentForm.showStatistics;
var tempKey: TKey;
  begin
    for var i := BackForm.Statistics.firstItem to BackForm.Statistics.lastItem do
         begin
           tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
           if tempKey=nil then continue;
           BackForm.Statistics.saveKey(i, tempKey);
           if showGradient then
            BackForm.Statistics.ShowStatisticsByGrad(i,sh1,sh2, tempKey )
           else
            BackForm.Statistics.ShowStatisticsByNum(i, tempKey);
           //n5.Enabled:=true;
         end;
    FormHeader.StatSwitch.Visible:=true;
    if sh1=sh2 then FormHeader.StatSwitch.Enabled:=false else
                      FormHeader.StatSwitch.Enabled:=true;
    Formheader.StatSwitch.Tag:=1;
    try
    if showGradient then FormHeader.StatSwitch.State:=tssOff else
                        FormHeader.StatSwitch.State:=tssOn;
    finally
      Formheader.StatSwitch.Tag:=0;
    end;
  end;

procedure TParentForm.speedWinExecute(Sender: TObject);
begin
   {if speedWin.Checked then speedform.show else} speedform.Close;
end;
procedure TParentForm.Stat_summaryExecute(Sender: TObject);
begin
      VirtKeyboard.save(false, round(speedform.speedM.Value), speedform.speedM.Tag);
       Cur_session_statExecute(sender);
end;
procedure TParentForm.TrayIconDblClick(Sender: TObject);
begin
    TrayIcon.Visible := False;
    Show();
    WindowState := wsNormal;
    Application.BringToFront();
end;
procedure TParentForm.TrayMenuPopup(Sender: TObject);
begin
  if WindowState=TWindowState.wsNormal then n1.Caption:='��������'
  else
  if WindowState=TWindowState.wsMinimized then n1.Caption:='����������';

end;

procedure TParentForm.WinMonitorTimer(Sender: TObject);
var temp:hWnd;
      threadID:DWord;
  begin
      temp:=GetForegroundWindow;
      if temp<>self.Handle then
        hWin:=temp;
      threadID:=GetWindowThreadProcessID(temp);
      LangCode:=(GetKeyboardLayout(ThreadID));
end;

end.
