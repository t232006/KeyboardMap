unit ParentUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  winHeader, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.AppEvnts, Registry, keyboardUnit, filemapping, Language, speedometer,
  AnalogMeter, PressCounter, SendKeyPressProc, Vcl.WinXCtrls, Key, sound,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.XPStyleActnCtrls, Vcl.StdActns;

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
    procedure Show(keyb: TKeyboard); overload;
    procedure FormShow(Sender: TObject);
    function FindKey(VirtCode: Word): TKey;
    procedure N1Click(Sender: TObject);
    procedure TrayMenuPopup(Sender: TObject);
    procedure FormHeaderSpeedButton3Click(Sender: TObject);
    procedure Show_sounds_panelExecute(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHeaderSpeedButton1Click(Sender: TObject);
    procedure FormHeaderCloseButClick(Sender: TObject);
    procedure extendTimerTimer(Sender: TObject);
    procedure WinOverrideClick(Sender: TObject);
    procedure showSpeedClick(Sender: TObject);
    procedure TogPlaySoundClick(Sender: TObject);
    procedure FormHeaderSpeedButton5Click(Sender: TObject);
    procedure LogToggleClick(Sender: TObject);

  private
    statType: TStatType;
    baseHeight: Integer;
    const toExtend: Boolean = True;

    procedure Extend;
    procedure Retract;
    procedure showStatistics(statType: TStatType);
    procedure closeStatistics;

  protected
    LangCode: HKL;
    instantticker: Word;
    ScanHex: string;

  public
    VirtKeyboard: TKeyboard;
    MapFile: array of string;
    sh1, sh2: TColor;
    showGradient: Boolean;

    procedure AfterStaticsForm(Sender: TObject; tag: byte);
    procedure Appearance(ColScheme: TColScheme;
                         KeyRad: byte;
                         backgroundColor: TColor;
                         const KeyFont1, KeyFont2: TFont;
                         AButtonColor, APressColor, AHoverColor: TColor;
                         CommonTransp, KeybTransp: byte);
  end;

var
  ParentForm: TParentForm;
  hwin: HWND;

implementation

uses
  MainUnitSmall, MainUnitLarge, StatisticsOptions, BackgroundUnit;

{$R *.dfm}

procedure TParentForm.Appearance(ColScheme: TColScheme;
  KeyRad: byte; backgroundColor: TColor; const KeyFont1, KeyFont2: TFont;
  AButtonColor, APressColor, AHoverColor: TColor;
  CommonTransp, KeybTransp: byte);
var
  k: byte;
  key: TKey;
  curCol: TColor;
  curFontSize, diff: ShortInt;
begin
  Self.AlphaBlendValue := 255 - CommonTransp;

  // ============== Background Color ===============
  case ColScheme of
    Dark:    Color := RGB(32, 32, 32);
    Light:   Color := clWhite;
    Classic: Color := RGB(239, 232, 203);
    Custom:  Color := backgroundColor;
  end;

  // ============== Board Transparent ==============
  if KeybTransp > 0 then
  begin
    Self.TransparentColor := True;
    Self.TransparentColorValue := Color;
  end
  else
    Self.TransparentColor := False;

  // ============== Keys Appearance ===============
  key := FindComponent('Key27') as TKey;
  if Assigned(key) then
  begin
    curCol := key.MiddleFont.Color;
    curFontSize := key.MiddleFont.Size;
  end;

  for k := 1 to 222 do
  begin
    key := FindComponent('Key' + IntToStr(k)) as TKey;
    if not Assigned(key) then
      Continue;

    case ColScheme of
      Dark:
        with key do
        begin
          if not(key.Pressed) then Color := RGB(49, 49, 49);
          if UpFont.Color = curCol then UpFont.Color := clWhite;
          if DownFont.Color = curCol then DownFont.Color := clWhite;
          if MiddleFont.Color = curCol then MiddleFont.Color := clWhite;
          PictureColor := clWhite;
          KeyFont1.Color := clWhite;
        end;

      Light:
        with key do
        begin
          if not(key.Pressed) then Color := clWhite;
          if UpFont.Color = curCol then UpFont.Color := clBlack;
          if DownFont.Color = curCol then DownFont.Color := clBlack;
          if MiddleFont.Color = curCol then MiddleFont.Color := clBlack;
          PictureColor := clBlack;
          KeyFont1.Color := clBlack;
        end;

      Classic:
        with key do
        begin
          case k of
            27, 116..119, 44..46, 33..40, 160..165, 145, 16, 8, 220,
            13, 20, 9, 32, 12, 107, 109, 106, 111, 144, 91..93:
              Color := RGB(185, 177, 166)
          else
            if not(key.Pressed) then Color := RGB(234, 226, 217);
          end;

          if UpFont.Color = curCol then UpFont.Color := clBlack;
          if DownFont.Color = curCol then DownFont.Color := clBlack;
          if MiddleFont.Color = curCol then MiddleFont.Color := clBlack;
          PictureColor := clBlack;
          KeyFont1.Color := clBlack;
        end;

      Custom:
        if not(key.Pressed) then key.Color := AButtonColor;
    end;

    // Настройка шрифтов и скругления
    with key do
    begin
      Round := KeyRad;

      // UpFont
      diff := curFontSize - UpFont.Size;
      if keyType = ktNum then
        UpFont := KeyFont2
      else
        UpFont := KeyFont1;
      UpFont.Size := UpFont.Size - diff;

      // MiddleFont
      diff := curFontSize - MiddleFont.Size;
      MiddleFont := KeyFont1;
      MiddleFont.Size := MiddleFont.Size - diff;

      // DownFont
      diff := curFontSize - DownFont.Size;
      if (keyType = ktLetters) or (keyType = ktTrippleLetters) then
        DownFont := KeyFont2
      else
      begin
        DownFont := KeyFont1;
        DownFont.Size := DownFont.Size - diff;
      end;

      PressColor := APressColor;
      HoverColor := AHoverColor;
    end;
  end;
end;

procedure TParentForm.ApplicationEvents1Minimize(Sender: TObject);
begin
  WindowState := wsMinimized;
  backform.TrayIcon.Animate := True;
  backform.TrayIcon.ShowBalloonHint;
end;

procedure TParentForm.closeStatistics;
var
  tempKey: TKey;
  i: Integer;
begin
  if not BackForm.Statistics.IsEmpty then
  begin
    for i := BackForm.Statistics.firstItem to BackForm.Statistics.lastItem do
    begin
      tempKey := FindComponent('Key' + IntToStr(i)) as TKey;
      if Assigned(tempKey) then
        BackForm.Statistics.HideStatistics(i, tempKey);
    end;
    BackForm.Statistics.IsEmpty := True;
  end;
end;

procedure TParentForm.Close_statisticsExecute(Sender: TObject);
begin
  closeStatistics;
  StatSwitch.Visible := False;
  Close_statistics.Enabled := False;
  SpeedForm.speedM.Value := backform.Statistics.avSpeed;
  SpeedForm.speedM.HighZoneValue := speedform.speedM.Tag;
end;

procedure TParentForm.CreateParams(var AParams: TCreateParams);
begin
  inherited CreateParams(AParams);
  AParams.ExStyle := AParams.ExStyle or WS_EX_NOACTIVATE;
end;

procedure TParentForm.Cur_session_statExecute(Sender: TObject);
begin
  Close_statisticsExecute(Sender);
  statType := st_current;
  BackForm.Statistics.Init(virtKeyboard.map);
  showStatistics(st_current);
  BackForm.Statistics.IsEmpty := False;
  close_statistics.Enabled := True;
end;

procedure TParentForm.exit1Click(Sender: TObject);
begin
  (Owner as TForm).Close;
end;

procedure TParentForm.Extend;
begin
  toExtend := True;
  ExtendTimer.Enabled := True;
  SettingPanel.Visible := True;
end;

procedure TParentForm.GetPressing(var msg: TMessage);
var
  _key: TKey;
  curspeed: Word;
  plSound: Boolean;
begin
  plSound := (TogPlaySound.State = tssOn);

  VirtKeyboard.addPress(msg.WParam, msg.LParam, LangCode, plSound);

  if virtkeyboard.isPressed then
  begin
    if not instantTimer.Enabled then
      instantTimer.Enabled := True;
    speedform.instSpeedM.Value := BackForm.Statistics.instantSpeed(instantticker);
  end;

  if ((msg.WParam shr 8) = 13) and (msg.LParam > 1) then
    _key := FindKey(12)   // Right Enter
  else
    _key := FindKey(msg.WParam shr 8);

  _key.Pressed := VirtKeyboard.isPressed;

  if VirtKeyboard.isPressed then
  begin
    if not (_key.KeyType in [ktScroll, ktSticked, ktFunc]) then
    begin
      curspeed := Round(speedform.instSpeedM.Value);
      speedform.SpeedM.Value := BackForm.Statistics.averageSpeed(curspeed);
      instantticker := 0;
    end;

    if BackForm.statistics.IsShowing then
    begin
      BackForm.statistics.Init(virtKeyboard.map);
      if sh1 = sh2 then
        BackForm.statistics.ShowStatisticsbyNum(st_current, virtKeyboard.VirtCode, _key)
      else
        BackForm.statistics.ShowStatisticsbyGrad(st_current, virtKeyboard.VirtCode, sh1, sh2, _key);
    end;
  end;

  // Специальная обработка индикаторов
  if _key.Name = 'Key20' then      // CapsLock
    _key.Pressed := Odd(GetKeyState(VK_CAPITAL))
  else if _key.Name = 'Key144' then // NumLock
    _key.Pressed := Odd(GetKeyState(VK_NUMLOCK))
  else if _key.Name = 'Key145' then // ScrollLock
    _key.Pressed := Odd(GetKeyState(VK_SCROLL));
end;

procedure TParentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  backForm.Close;
end;

procedure TParentForm.FormCreate(Sender: TObject);
var
  reg: TRegIniFile;
  curScheme: string;
begin
  reg := TRegIniFile.Create('Software\' + ChangeFileExt(ExtractFileName(ParamStr(0)), ''));
  try
    curScheme := reg.ReadString('Sounds', 'curScheme', '');
  finally
    reg.Free;
  end;

  instantticker := 0;
  VirtKeyboard := TKeyboard.Create(curScheme);

  FillChar(DataArea^, SizeOf(DataArea^), 0);
  DataArea^.FormHandle:=self.Handle;

  FormHeader.Align := alTop;
  SettingPanel.Align := alTop;
  baseHeight := Height;

  boardSize.Tag := 0;
  try
    if ClassName = 'TKeyboardFormLarge' then
      boardSize.State := tssOff
    else
      boardSize.State := tssOn;
  finally
    boardSize.Tag := 1;
  end;
end;

procedure TParentForm.FormHeaderCloseButClick(Sender: TObject);
begin
  FormHeader.CloseButClick(Sender);
end;

procedure TParentForm.FormHeaderSpeedButton1Click(Sender: TObject);
begin
  if FormHeader.sbSetting.Down then
    Extend
  else
    Retract;
end;

procedure TParentForm.FormHeaderSpeedButton3Click(Sender: TObject);
begin
  if boardSize.Tag = 0 then Exit;
  SendMessage((Owner as TForm).Handle, WM_WANT_CLOSE, 0, 0);
end;

procedure TParentForm.FormHeaderSpeedButton5Click(Sender: TObject);
begin
  FormHeader.SpeedButton5Click(Sender);
end;

procedure TParentForm.FormHeaderStatSwitchClick(Sender: TObject);
begin
  if StatSwitch.Tag <> 0 then Exit;

  CloseStatistics;
  showGradient := (StatSwitch.State = tssOff);
  showStatistics(statType);
end;

procedure TParentForm.FormHide(Sender: TObject);
begin
  // TrayIcon logic if needed
end;

procedure TParentForm.FormShow(Sender: TObject);
begin
  (Owner as TForm).Visible := False;
end;

procedure TParentForm.instantTimerTimer(Sender: TObject);
begin
  Inc(instantticker);
  if instantticker > 300 then
    instantTimer.Enabled := False;
end;

procedure TParentForm.LayoutChange(var msg: TMessage);
begin
  if (DataArea^.key = $38) and (DataArea^.ExKey = $20) then
    LayoutChangeCtrl
  else if (DataArea^.key = $1D) and (DataArea^.ExKey = 0) then
    LayoutChangeAlt
  else
  begin
    LayoutChangeCtrl;
    LayoutChangeAlt;
  end;
end;

procedure TParentForm.Layout_changeExecute(Sender: TObject);
begin
  langForm.ShowModal;
end;

procedure TParentForm.LogToggleClick(Sender: TObject);
begin
  virtKeyboard.KeepLog := LogToggle.IsOn;
end;

procedure TParentForm.N1Click(Sender: TObject);
begin
  if WindowState = wsMinimized then
    WindowState := wsNormal
  else if WindowState = wsNormal then
    WindowState := wsMinimized;
end;

procedure TParentForm.AfterStaticsForm(Sender: TObject; tag: byte);
begin
  if Tag = 1 then
  begin
    if Length(mapFile) > 0 then
    begin
      BackForm.Statistics.Init(mapFile);
      showStatistics(st_summary);
      BackForm.Statistics.IsEmpty := False;
    end
    else
      Cur_session_statExecute(Sender);

    speedform.speedM.Value := BackForm.statistics.avSpeed;
    speedform.speedM.HighZoneValue := BackForm.statistics.recordSpeed;
    close_statistics.Enabled := True;
  end;
end;

procedure TParentForm.Open_statisticsExecute(Sender: TObject);
var
  statForm: TForm2;
begin
  Close_statisticsExecute(Sender);
  statType := st_summary;
  statForm := TForm2.Create(Self);
  try
    statForm.ShowModal;
    AfterStaticsForm(Sender, statForm.Tag);
  finally
    statForm.Free;
  end;
end;

procedure TParentForm.TogPlaySoundClick(Sender: TObject);
begin
  with BackForm.settingform.SoundFrame do
  begin
    if playSound.Tag <> 0 then Exit;
    playSound.Tag := 1;
    try
      playSound.State := TogPlaySound.State;
    finally
      playSound.Tag := 0;
    end;
  end;
end;

procedure TParentForm.Retract;
begin
  toExtend := False;
  ExtendTimer.Enabled := True;
end;

procedure TParentForm.Save_cur_sessionExecute(Sender: TObject);
begin
  VirtKeyboard.save(True, Round(backform.Statistics.avSpeed), backform.Statistics.recordSpeed);
  MessageDlg('Статистика успешно сохранена', mtInformation, [mbOK], 0);
end;

procedure TParentForm.Show(keyb: TKeyboard);
begin
  VirtKeyboard := keyb;
  Show;
end;

function TParentForm.FindKey(VirtCode: Word): TKey;
var
  key: TKey;
begin
  key := FindComponent('Key' + IntToStr(VirtCode)) as TKey;
  if not Assigned(key) then
    Result := FindComponent('Key223') as TKey
  else
    Result := key;
end;

procedure TParentForm.showSpeedClick(Sender: TObject);
begin
  if Assigned(speedform) then
  begin
    if showSpeed.State = tssOff then
      speedform.Close
    else
      speedform.Show;
  end;
end;

procedure TParentForm.showStatistics(statType: TStatType);
var
  tempKey: TKey;
  i: Integer;
begin
  for i := BackForm.Statistics.firstItem to BackForm.Statistics.lastItem do
  begin
    tempKey := FindComponent('Key' + IntToStr(i)) as TKey;
    if not Assigned(tempKey) then Continue;

    if BackForm.Statistics.IsEmpty then
      BackForm.Statistics.saveKey(i, tempKey);

    if showGradient then
      BackForm.Statistics.ShowStatisticsByGrad(statType, i, sh1, sh2, tempKey)
    else
      BackForm.Statistics.ShowStatisticsByNum(statType, i, tempKey);
  end;

  StatSwitch.Visible := True;
  StatSwitch.Enabled := (sh1 <> sh2);
  StatSwitch.Tag := 1;
  try
    if showGradient then
      StatSwitch.State := tssOff
    else
      StatSwitch.State := tssOn;
  finally
    StatSwitch.Tag := 0;
  end;
end;

procedure TParentForm.Show_sounds_panelExecute(Sender: TObject);
begin
  soundsetting.ShowModal;
  VirtKeyboard.SetSoundLibrary(soundsetting.SoundFolder.Text);
end;

procedure TParentForm.speedWinExecute(Sender: TObject);
begin
  speedform.Close;
end;

procedure TParentForm.Stat_summaryExecute(Sender: TObject);
begin
  Close_statisticsExecute(Sender);
  statType := st_summary;
  BackForm.Statistics.Init(virtKeyboard.map, virtKeyboard.CURRENTMAP);
  showStatistics(st_summary);
  BackForm.Statistics.IsEmpty := False;
  close_statistics.Enabled := True;
end;

procedure TParentForm.extendTimerTimer(Sender: TObject);
begin
  if toExtend then
  begin
    if SettingPanel.Height < 105 then
      SettingPanel.Height := SettingPanel.Height + 40
    else
      ExtendTimer.Enabled := False;
  end
  else
  begin
    if SettingPanel.Height > 0 then
      SettingPanel.Height := SettingPanel.Height - 40
    else
    begin
      ExtendTimer.Enabled := False;
      SettingPanel.Visible := False;
    end;
  end;
end;

procedure TParentForm.TrayMenuPopup(Sender: TObject);
begin
  if WindowState = wsNormal then
    N1.Caption := 'Свернуть'
  else if WindowState = wsMinimized then
    N1.Caption := 'Развернуть';
end;

procedure TParentForm.WinMonitorTimer(Sender: TObject);
var
  temp: HWND;
  threadID: DWORD;
begin
  temp := GetForegroundWindow;
  if temp <> Self.Handle then
    hWin := temp;

  threadID := GetWindowThreadProcessID(temp, nil);
  LangCode := GetKeyboardLayout(threadID);
end;

procedure TParentForm.WinOverrideClick(Sender: TObject);
begin
  if WinOverride.State = tssOn then
    FormStyle := fsStayOnTop
  else
    FormStyle := fsNormal;
end;

end.
