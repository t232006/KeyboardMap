unit ParentUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, winHeader, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Vcl.ExtCtrls, Vcl.Menus, Vcl.AppEvnts, Registry,
  keyboardUnit, filemapping, Language, speedometer,
  AnalogMeter, PressCounter, SendKeyPressProc, Vcl.WinXCtrls, Key, sound,
  Vcl.Buttons,
  Vcl.StdCtrls, Vcl.XPStyleActnCtrls, Vcl.StdActns;
//const WM_WANT_CLOSE = WM_USER+$345+10;
type
  TColScheme = (Dark, Light, Classic, Custom);
  TParentForm = class(TForm)
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
    N21: TMenuItem;
    Show_sounds_panel: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    FormHeader: TFormHeader;
    SettingPanel: TPanel;
    boardSize: TToggleSwitch;
    LogToggle: TToggleSwitch;
    TogPlaySound: TToggleSwitch;
    showSpeed: TToggleSwitch;
    StatSwitch: TToggleSwitch;
    extendTimer: TTimer;
    WinOverride: TToggleSwitch;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowClose1: TWindowClose;
    procedure exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure LayoutChange(var msg: TMessage); message WM_CHANGELANG;
    procedure WinMonitorTimer(Sender: TObject);
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
    //procedure ChangeFormSize; virtual; abstract;
    procedure Show(keyb: TKeyboard); overload;
    procedure FormShow(Sender: TObject);
    function FindKey(ScanCode: string):TKey;
    procedure N1Click(Sender: TObject);
    procedure TrayMenuPopup(Sender: TObject);
    procedure FormHeaderSpeedButton3Click(Sender: TObject);
    procedure Show_sounds_panelExecute(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHeaderSpeedButton1Click(Sender: TObject);
    procedure FormHeaderCloseButClick(Sender: TObject);
    //procedure SettingFormResize(Sender: TObject);
    procedure extendTimerTimer(Sender: TObject);
    procedure WinOverrideClick(Sender: TObject);
    procedure showSpeedClick(Sender: TObject);
    procedure TogPlaySoundClick(Sender: TObject);
  private
    statType: TStatType;
    baseHeight: Integer;
    const toExtend:boolean=true;
    procedure Extend;
    procedure Retract;

  protected
      LangCode: HKL;
     instantticker:word;
     ScanHex:string;
     procedure showStatistics(statType: TStattype);
      procedure closeStatistics;
  public
    VirtKeyboard: TKeyboard;
    MapFile: array of string;
    sh1, sh2: TColor;
    showGradient: boolean;
    procedure AfterStaticsForm(Sender: TObject; tag: byte);
    procedure Appearance(ColScheme: TColScheme;
                         KeyRad:byte; backgroundColor: Tcolor;
                         const KeyFont1, KeyFont2:TFont;
                         AButtonColor, APressColor, AHoverColor: TColor;
                         CommonTransp, KeybTransp:byte);
  end;

var
  ParentForm: TParentForm;
  hwin: Hwnd;
implementation
uses MainUnitSmall, MainUnitLarge, StatisticsOptions, BackgroundUnit;
{$R *.dfm}

procedure TParentForm.Appearance(ColScheme: TColScheme;
  KeyRad: byte; backgroundColor: Tcolor;  const KeyFont1,
  KeyFont2: TFont; AButtonColor, APressColor, AHoverColor: TColor;
  CommonTransp, KeybTransp: byte);
var k:byte; key:TKey;
  {pan: TBevel;}  curCol:Tcolor;
  curFontSize, diff: shortInt;


begin
    self.AlphaBlendValue:=255-CommonTransp;
    //==============boardColor===============

     //pan:=FindComponent('Panel1') as TBevel;
     case ColScheme of
        Dark:    Color:=RGB(32,32,32);
        Light:   Color:=clWhite;
        Classic: Color:=RGB(239,232,203);
        Custom: Color:=backgroundColor;
     end;
          {$REGION 'boardTransparent'}
       //============boardTransparent==========
            if KeybTransp>0 then
           begin
              self.TransparentColor:=true;
              self.TransparentColorValue:=Color;
           end else
             self.TransparentColor:=false;
     {$ENDREGION}
    //============keysColor==================
      key:=FindComponent('Key27') as TKey;
      curCol:=key.MiddleFont.Color; //find color to change (another don't change)
      CurFontSize:=key.MiddleFont.Size;
      for k := 1 to 222 do
      begin
        key:=FindComponent('Key'+inttostr(k))as Tkey;
        if key=nil then continue;
        case ColScheme of
          Dark: with key do
          begin
             Color:=RGB(49,49,49);
             if UpFont.Color=curCol then UpFont.Color:=clWhite;
             if DownFont.Color=curCol then DownFont.Color:=clWhite;
             if MiddleFont.Color=curCol then MiddleFont.Color:=clWhite;
             PictureColor:=clWhite;
             KeyFont1.Color:=clWhite;
          end;
          Light: with key do
          begin
            Color:=Clwhite;
            if UpFont.Color=curCol then UpFont.Color:=clBlack;
            if DownFont.Color=curCol then DownFont.Color:=clBlack;
            if MiddleFont.Color=curCol then MiddleFont.Color:=clBlack;
            PictureColor:=clBlack;
            KeyFont1.Color:=clBlack;
          end;
          Classic: with key do
          begin
            case k of
            27, 116..119, 44..46, 33..40, 160..165, 145, 16, 8,220,13,20,9,32,12,107,109,106,111,144,91..93:
            Color:=RGB(185,177,166)
            else
            color:=RGB(234,226,217);
            end;
            if UpFont.Color=curCol then UpFont.Color:=clBlack;
            if DownFont.Color=curCol then DownFont.Color:=clBlack;
            if MiddleFont.Color=curCol then MiddleFont.Color:=clBlack;
            PictureColor:=clBlack;
            KeyFont1.Color:=clBlack;
          end;
          Custom: key.Color:=AButtonColor;
        end;

          with key do
          begin
            Round:=KeyRad;
          //diff:=curFontSize-UpFont.Size; UpFont:=keyFont1; UpFont.Size:=UpFont.Size-diff;

            diff:=curFontSize-UpFont.Size;
            if (keyType=ktNum) then
            begin
                Upfont:=keyfont2;
                Upfont.Size:=upfont.Size-diff;
            end else
            begin
              Upfont:=keyfont1;
              Upfont.Size:=upfont.Size-diff;
            end;


            diff:=curFontSize-MiddleFont.Size;
            Middlefont:=keyfont1;
            {if (k>=37) and (k<=40) or (k=8) or (k=9)
            or (k=160) or (k=161) or (k=93) or (k=98)
            or (k=100) or (k=102) or (k=104) then
              PictureColor:=keyfont1.Color;}
            Middlefont.Size:=Middlefont.Size-diff;

            diff:=curFontSize-downFont.Size;
            if (keyType=ktLetters)or (keyType=ktTrippleLetters) then
              downfont:=keyfont2
            else
            begin
              downfont:=keyfont1;   //for exNumKey
              downfont.Size:=downfont.Size-diff;
            end;
            key.PressColor:=APressColor;
            key.HoverColor:=AHoverColor;
        end;

        end;

end;

procedure TParentForm.ApplicationEvents1Minimize(Sender: TObject);
begin
      WindowState:=wsMinimized;
  //TrayIcon.Visible := True;
  backform.TrayIcon.Animate := True;
  backform.TrayIcon.ShowBalloonHint;
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
   StatSwitch.Visible:=false;
   Close_statistics.Enabled:=false;
   SpeedForm.speedM.Value:=backform.Statistics.avSpeed;
   SpeedForm.speedM.HighZoneValue:=speedform.speedM.Tag;

end;
procedure TParentForm.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle:=AParams.ExStyle or WS_EX_NOACTIVATE;
end;


procedure TParentForm.Cur_session_statExecute(Sender: TObject);
begin
        Close_statisticsExecute(Sender);
        statType:=st_current;
        BackForm.Statistics.Init(virtKeyboard.map);

         showStatistics(st_current);
         BackForm.Statistics.IsEmpty:=false;
         close_statistics.Enabled:=true;
end;
procedure TParentForm.exit1Click(Sender: TObject);
begin
   (Owner as TForm).close;
end;

procedure TParentForm.Extend;
begin
   toExtend:=true;
   Extendtimer.Enabled:=true;
   SettingPanel.visible:=true;
end;

procedure TParentForm.GetPressing(var msg: TMessage);
 var _key:Tkey;
    curspeed: word;
    plSound: boolean;
begin
   if TogPlaySound.State=tssOn then plSound:=true else plSound:=false;
   VirtKeyboard.addPress(msg.WParam, msg.LParam, LangCode, plSound);
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
          BackForm.statistics.ShowStatisticsbyNum(st_current, virtKeyboard.VirtCode, _key)
        else
          BackForm.statistics.ShowStatisticsbyGrad(st_current, virtKeyboard.VirtCode, sh1, sh2, _key) ;
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
begin
  backForm.Close;
end;

procedure TParentForm.FormCreate(Sender: TObject);
//var n:longword;  //dWin:Hwnd;
var reg: TRegIniFile; curScheme: string;
begin
  reg:=TRegIniFile.create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  curScheme:=reg.ReadString('Sounds','curScheme','');
  instantticker:=0;
  VirtKeyboard:=TKeyboard.create(curScheme);
  {
  {DataArea^.key:=loadparams.ReadInteger('HotKeys', 'Key', 0);
  DataArea^.ExKey:=loadparams.ReadInteger('HotKeys', 'Ext', 0);}
  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;
  FormHeader.Align:=alTop;
  SettingPanel.Align:=alTop;
  baseHeight:=Height;
  //basePanelTop:=(FindComponent('panel1') as TBevel).Top;
  //SettingPanel.Height:=0;
  try
    boardSize.Tag:=0;
   if classname='TKeyboardFormLarge' then
    boardSize.State:=tssOff else
    boardSize.State:=tssOn;
   finally
      boardSize.Tag:=1;
   end;
end;

procedure TParentForm.FormHeaderCloseButClick(Sender: TObject);
begin
  FormHeader.CloseButClick(Sender);

end;

procedure TParentForm.FormHeaderSpeedButton1Click(Sender: TObject);
begin
    if formheader.sbSetting.Down then
    Extend else
    Retract;

end;

procedure TParentForm.FormHeaderSpeedButton3Click(Sender: TObject);
begin
  //FormHeader.SpeedButton3Click(Sender);
  if boardSize.Tag=0 then exit;
    sendmessage((Owner as TForm).Handle,WM_WANT_CLOSE,0,0);
  //SettingPanel.Tag:=1;
end;

procedure TParentForm.FormHeaderStatSwitchClick(Sender: TObject);
begin
if StatSwitch.Tag<>0 then  exit;

  CloseStatistics;
  if StatSwitch.State=tssOn then
    showGradient:=false else showGradient:=true;
  showStatistics(statType);
end;

procedure TParentForm.FormHide(Sender: TObject);
begin
  //trayIcon.Visible:=true;
end;

procedure TParentForm.FormShow(Sender: TObject);
begin
  (Owner as TForm).visible:=false;
  //TrayIcon.Visible:=false;
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

procedure TParentForm.AfterStaticsForm(Sender: TObject; tag: byte);
begin
  if Tag=1 then  //if applay button is pressed
       begin
         if mapFile<>nil then
         begin
           //mapFile:=ExtractFileDir( Paramstr(0))+'\maps\'+mapFile;
           //if BackForm.Statistics.IsEmpty then
             BackForm.Statistics.Init(mapFile);
             showStatistics(st_summary);
             BackForm.Statistics.IsEmpty:=false;
         end else
           Cur_session_statExecute(Sender);
         speedform.speedM.Value:=BackForm.statistics.avSpeed;
         speedform.speedM.HighZoneValue:=BackForm.statistics.recordSpeed;
         close_statistics.Enabled:=true;
       end;
end;

procedure TParentForm.Open_statisticsExecute(Sender: TObject);
  var statForm: TForm2;
  begin
       Close_statisticsExecute(Sender);
       statType:=st_summary;
       statForm:= Tform2.Create(Self);
       statForm.showmodal;
       AfterStaticsForm(Sender, statForm.Tag);
       statForm.Destroy;
end;

procedure TParentForm.TogPlaySoundClick(Sender: TObject);
begin

  with BackForm.settingform.SoundFrame do
  begin
    if playSound.Tag<>0 then exit;
    playSound.Tag:=1;
    try
    playsound.state:=TogPlaySound.State;
    finally
    playSound.Tag:=0;
    end;
  end;
end;

procedure TParentForm.Retract;
begin
   toExtend:=false;
   Extendtimer.Enabled:=true;
end;

procedure TParentForm.Save_cur_sessionExecute(Sender: TObject);
begin
VirtKeyboard.save(true, round(backform.Statistics.avSpeed), backform.Statistics.recordSpeed);  //save current session
 MessageDlg('Статистика сохранена', TMsgDlgType.mtInformation, [mbOK], 0);
end;
{procedure TParentForm.SettingFormResize(Sender: TObject);
begin
  (BackForm.activeForm.FindComponent('panel1') as TBevel).Top:=basePanelTop+
  SettingPanel.Height;
  Height:=baseHeight+SettingPanel.Height;
end;  }

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

procedure TParentForm.showSpeedClick(Sender: TObject);
begin
//if showSpeed.tag<>0 then exit;
  if speedform<>nil then
  begin
      if showSpeed.State=tssOff then
          speedform.Close else
      speedform.Show;
  end;
end;

procedure TParentForm.showStatistics(statType: TStatType);
var tempKey: TKey;
  begin
    for var i := BackForm.Statistics.firstItem to BackForm.Statistics.lastItem do
         begin
           tempKey:=FindComponent('Key'+inttostr(i)) as TKey;
           if tempKey=nil then continue;
           if BackForm.Statistics.IsEmpty then
            BackForm.Statistics.saveKey(i, tempKey);
           if showGradient then
            BackForm.Statistics.ShowStatisticsByGrad(statType, i,sh1,sh2, tempKey )
           else
            BackForm.Statistics.ShowStatisticsByNum(stattype, i, tempKey);
           //n5.Enabled:=true;
          end;
    StatSwitch.Visible:=true;
    if sh1=sh2 then StatSwitch.Enabled:=false else
                      StatSwitch.Enabled:=true;
    StatSwitch.Tag:=1;
    try
    if showGradient then StatSwitch.State:=tssOff else
                        StatSwitch.State:=tssOn;
    finally
      StatSwitch.Tag:=0;
    end;
  end;

procedure TParentForm.Show_sounds_panelExecute(Sender: TObject);
begin
  soundsetting.showModal;
  VirtKeyboard.SetSoundLibrary(soundsetting.SoundFolder.Text);
end;

procedure TParentForm.speedWinExecute(Sender: TObject);
begin
   {if speedWin.Checked then speedform.show else} speedform.Close;
end;
procedure TParentForm.Stat_summaryExecute(Sender: TObject);
begin
      Close_statisticsExecute(Sender);
      statType:=st_summary;
      //VirtKeyboard.save(false, round(backform.Statistics.avSpeed), backform.Statistics.recordSpeed);
//       BackForm.Statistics.Init(virtKeyboard.map, virtKeyboard.GetLastFile);
        BackForm.Statistics.Init(virtKeyboard.map, virtKeyboard.CURRENTMAP);

         showStatistics(st_summary);
         BackForm.Statistics.IsEmpty:=false;
         close_statistics.Enabled:=true;
       //Cur_session_statExecute(sender);
end;
procedure TParentForm.extendTimerTimer(Sender: TObject);
begin
if toExtend then
      //with SettingPanel do
      begin
        if SettingPanel.height<105 then SettingPanel.height:=SettingPanel.height+40
        else Extendtimer.Enabled:=false;
      end else
      begin
        if SettingPanel.height>0 then SettingPanel.height:=SettingPanel.height-40 else
        begin
          extendtimer.Enabled:=false;
          SettingPanel.visible:=false;
        end;
      end;
end;

procedure TParentForm.TrayMenuPopup(Sender: TObject);
begin
  if WindowState=TWindowState.wsNormal then n1.Caption:='Свернуть'
  else
  if WindowState=TWindowState.wsMinimized then n1.Caption:='Развернуть';

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

procedure TParentForm.WinOverrideClick(Sender: TObject);
begin
if winOverride.State=tssOn then
    FormStyle:=fsStayOnTop
    else
    FormStyle:=fsNormal;
end;

end.
