unit ParentUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, winHeader, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ExtCtrls, Vcl.Menus, Vcl.AppEvnts, Inifiles,
  keyboardUnit, filemapping, LabSwitch, Language, speedometer,
  AnalogMeter, PressCounter, SendKeyPressProc, Vcl.WinXCtrls;

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
  private


  protected
      LangCode: HKL;
     instantticker:word;

     ScanHex:string;
     procedure showStatistics; virtual; abstract;
      procedure closeStatistics; virtual; abstract;
  public
    VirtKeyboard: TKeyboard;
    MapFile: string;
    sh1, sh2: TColor;
    showGradient: boolean;
    Statistics: TStatistics;
    saveparams, loadparams:TIniFile;
  end;
  

var
  ParentForm: TParentForm;

  hwin: Hwnd;
implementation
uses StatisticsOptions,
  MainUnitSmall, MainUnitLarge;

{$R *.dfm}

procedure TParentForm.ApplicationEvents1Minimize(Sender: TObject);
begin
      WindowState:=wsMinimized;
  //TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.ShowBalloonHint;
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
   Statistics.Init(virtKeyboard.map);
         Statistics.IsEmpty:=false;
         showStatistics;
         close_statistics.Enabled:=true;
end;

procedure TParentForm.exit1Click(Sender: TObject);
begin
  close;
end;

procedure TParentForm.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
begin
  VirtKeyboard.save(false, round(speedform.speedM.Value), speedform.speedM.Tag);
  saveparams:=Tinifile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  //StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  dWin:=FindWindow(nil, 'KeyboardMap');
  if dWin<>0 then
  SendMessage(dWin, WM_DESTROY, 0,0);
  {if speedform<>nil then
  speedform.free; }
  saveparams.Destroy;
end;

procedure TParentForm.FormCreate(Sender: TObject);
var n:longword;  //dWin:Hwnd;

begin
   speedform:=TSpeedForm.Create(self);
   //backgroundhandle:=Owner as
  instantticker:=0;
  VirtKeyboard:=TKeyboard.create;
  loadparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  speedform.SpeedM.Value:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
  speedform.SpeedM.HighZoneValue:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
  n:=loadparams.ReadInteger('Speeds', 'count', 0);
  Statistics:= TStatistics.Create(n, round(speedform.speedM.Value));

  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;
  DataArea^.key:=loadparams.ReadInteger('HotKeys', 'Key', 0);
  DataArea^.ExKey:=loadparams.ReadInteger('HotKeys', 'Ext', 0);
  //dWin:=
  //RunHook;
  FormHeader.Align:=alTop;
  speedForm:= TSpeedForm.Create(self);
  speedform.show;
end;

procedure TParentForm.FormHeaderStatSwitchClick(Sender: TObject);
begin
if formheader.Tag<>0 then exit;
  CloseStatistics;
  if FormHeader.StatSwitch.State=tssOff then
    showGradient:=false else showGradient:=true;
  showStatistics;
end;

procedure TParentForm.FormShow(Sender: TObject);
begin
  (Owner as TForm).visible:=false;
end;

procedure TParentForm.GetPressing(var msg: TMessage);
var
    curspeed: word;
begin
   VirtKeyboard.addPress(msg.WParam, msg.LParam, LangCode);
   ScanHex:=InttoHex(msg.LParam);
   if virtkeyboard.isPressed then
   begin
      if instantTimer.Enabled=false then instanttimer.Enabled:=true;
     speedform.instSpeedM.Value := Statistics.instantSpeed(instantticker);
   end;

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

procedure TParentForm.Open_statisticsExecute(Sender: TObject);
  var statForm: TForm2;
  begin
       statForm:= Tform2.Create(Self);
       statForm.showmodal;
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
       statForm.Destroy;
end;

procedure TParentForm.resetExecute(Sender: TObject);
begin
if MessageDlg('������� ������ � ������� ��������?', TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes
  then
  begin
    Statistics.resetSpeed;
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

procedure TParentForm.speedWinExecute(Sender: TObject);
begin
   if speedWin.Checked then speedform.show else speedform.Close;
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
