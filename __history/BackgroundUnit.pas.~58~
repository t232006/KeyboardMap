unit BackgroundUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Registry, PressCounter, speedometer,
  Vcl.WinXCtrls, MyAuxProc, shlObj, settings, Vcl.Menus, System.Actions,
  Vcl.ActnList;
  const WM_WANT_CLOSE = WM_USER+$345+10;
type
  //TColScheme = (Dark, Light, Classic, Custom);
  TBackForm = class(TForm)
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action11: TMenuItem;
    Action21: TMenuItem;
    TrayIcon: TTrayIcon;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenAnotherKeyboard (var msg: TMessage); message WM_WANT_CLOSE;
    procedure FormShow(Sender: TObject);
    procedure CloseMessage(var TMessage); message WM_QUERYENDSESSION;
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
  private
    FClassName: string;
    fDown: boolean;
    fmoved: boolean;
    diff: TPoint;
    pos: TPoint;
  public
    avSpeed, MaxSpeed, n: Integer;
    Statistics: TStatistics;
    activeForm: TParentForm;
    settingform: TSettingForm;
    showSpeed, playSound: boolean;
    property ClassNameOfActiveForm: string read FClassName;
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
var
  BackForm: TBackForm;
  loadparams, saveparams: TRegIniFile;

  //soundSetting: TsoundSetting;
implementation
{$R *.dfm}
procedure TBackForm.Action1Execute(Sender: TObject);
begin
  ShowWindow(Handle,SW_HIDE);  // Скрываем программу
  ShowWindow(Application.Handle,SW_HIDE);  // Скрываем кнопку с TaskBar'а
  SetWindowLong(Application.Handle, GWL_EXSTYLE,
  GetWindowLong(Application.Handle, GWL_EXSTYLE) or (not WS_EX_APPWINDOW));
  TrayIcon.Visible := True;
  Application.MainForm.Hide;
  ActiveForm.WinOverride.State:=tssOff;
  Trayicon.ShowBalloonHint; // показываем наше уведомление
  Trayicon.balloontitle:=('Keyboard Map');
  Trayicon.balloonhint:=('Version');
end;

procedure TBackForm.Action2Execute(Sender: TObject);
begin
   close;
end;

procedure TBackForm.CloseMessage(var TMessage);
begin
  close;
end;
procedure TBackForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //activeform.close; activeform.Free;
  loadparams.Destroy;
  stophook;
end;
procedure TBackForm.FormCreate(Sender: TObject);
begin
   //settingFolder:= GetSpecialPath(CSIDL_APPDATA)+'\Individual dictionary';
   Runhook;
   fdown:=false; fmoved:=false;
   Application.OnDeactivate:=FormDeactivate;
   loadparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
   avSpeed:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
   maxSpeed:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
   n:=loadparams.ReadInteger('Speeds', 'count', 0);
   Statistics:= TStatistics.Create(n, round(avSpeed));
   FclassName:=loadparams.ReadString('Windows','Kind','TKeyboardFormLarge');
   RegisterClasses([tKeyboardFormSmall, tKeyboardFormlarge, tparentform]);
   settingForm:= TSettingForm.Create(Application);
   activeForm:=TParentForm(TControlClass(GetClass(Fclassname)).Create(self));
   settingForm.ApplayAll;
   activeForm.Left:=loadparams.ReadInteger('Windows', 'PosX', 0);
   activeForm.Top:=loadparams.ReadInteger('Windows', 'PosY', 0);
   showSpeed:=loadparams.ReadBool('Windows','showSpeed', false);
   if showSpeed then activeForm.showSpeed.State:=tssOn
                      else
                      activeForm.showSpeed.State:=tssOff;
end;
procedure TBackForm.FormDeactivate(Sender: TObject);
begin  //nessesary to be on top
  if activeForm.WinOverride.State=tsson then
  if activeForm.Visible then activeForm.SetFocus else
  self.SetFocus;
end;
procedure TBackForm.FormDestroy(Sender: TObject);
begin
   with activeForm do
   begin
     VirtKeyboard.save(false, round(backform.Statistics.avSpeed), backform.Statistics.recordSpeed);
     saveparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
     saveparams.WriteInteger('Windows','PosX', left);
     saveparams.WriteInteger('Windows','PosY', top);
     saveparams.WriteString('Windows','Kind', ClassName);
     if showSpeed.State=tssOn then
      saveparams.WriteBool('Windows','showSpeed', true)
     else
      saveparams.WriteBool('Windows','showSpeed', false);
     saveparams.Destroy;
   end;
end;

procedure TBackForm.FormShow(Sender: TObject);
begin
  if showSpeed then speedform.Show;
   left:=0;
  top:=screen.Height-self.Height-30;
  //borderStyle:=bsnone;
end;

procedure TBackForm.Image1Click(Sender: TObject);
begin
 if not(fmoved) then   activeform.Show;
end;
procedure TBackForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    fdown:=true;
    diff.X:=x+left;
    diff.Y:=y;
end;

procedure TBackForm.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if fdown then
   begin
      fmoved:=true;
      pos:=mouse.CursorPos;
      Left:=pos.X-diff.X;
      top:=pos.Y-diff.Y;
   end;
end;

procedure TBackForm.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    fdown:=false;
    fmoved:=false;
end;

procedure TBackForm.OpenAnotherKeyboard(var msg: TMessage);
var tempform: TParentForm;
begin
  if (activeform is TKeyboardFormlarge) then
     tempform:= TKeyboardFormSmall.Create(self)
  else
     tempform:= TKeyboardFormLarge.Create(self);
  tempform.VirtKeyboard:=activeform.VirtKeyboard;
  tempform.boardSize.State:=activeform.boardSize.State;
  tempform.Show;
  activeform.Close;
  TrayIcon.Visible:=false;
  activeform:=tempform;
  settingForm.ApplayAll;
end;

procedure TBackForm.TrayIconDblClick(Sender: TObject);
begin
TrayIcon.Visible := False;
    Show();
    WindowState := wsNormal;
    Application.BringToFront();
end;

end.
