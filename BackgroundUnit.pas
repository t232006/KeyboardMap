unit BackgroundUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Registry, PressCounter, speedometer,
  Vcl.WinXCtrls, MyAuxProc, shlObj, settings;
  const WM_WANT_CLOSE = WM_USER+$345+10;
type
  //TColScheme = (Dark, Light, Classic, Custom);
  TBackForm = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenAnotherKeyboard (var msg: TMessage); message WM_WANT_CLOSE;
    procedure FormShow(Sender: TObject);
    procedure CloseMessage(var TMessage); message WM_QUERYENDSESSION;
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FClassName: string;
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
   Application.OnDeactivate:=FormDeactivate;
   loadparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
   avSpeed:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
   maxSpeed:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
   n:=loadparams.ReadInteger('Speeds', 'count', 0);
   Statistics:= TStatistics.Create(n, round(avSpeed));
   FclassName:=loadparams.ReadString('Windows','Kind','TKeyboardFormLarge');
   RegisterClasses([tKeyboardFormSmall, tKeyboardFormlarge, tparentform]);
   //soundSetting:=TSoundSetting.Create(Application);
   //Application.CreateForm(TSettingForm, SettingForm);
   settingForm:= TSettingForm.Create(Application);
   activeForm:=TParentForm(TControlClass(GetClass(Fclassname)).Create(self));
   settingForm.ApplayAll;
   //activeForm:=TKeyboardFormSmall.Create(self);
   activeForm.Left:=loadparams.ReadInteger('Windows', 'PosX', 0);
   activeForm.Top:=loadparams.ReadInteger('Windows', 'PosY', 0);
   showSpeed:=loadparams.ReadBool('Windows','showSpeed', false);
   //playSound:=loadparams.ReadBool('Sounds','playSound', false);

   if showSpeed then activeForm.showSpeed.State:=tssOn
                      else
                      activeForm.showSpeed.State:=tssOff;
   {if playSound then activeForm.TogPlaySound.State:=tssOn
                      else
                      activeForm.TogPlaySound.State:=tssOff;}

   //loadparams.Destroy;
   //activeForm.Show;
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
     {if playSound.State=tssOn then
      saveparams.WriteBool('Sounds','playSound', true)
     else
      saveparams.WriteBool('Sounds','playSound', false); }
     saveparams.Destroy;
   end;
end;

procedure TBackForm.FormShow(Sender: TObject);
begin
  if showSpeed then speedform.Show;
   left:=0;
  top:=screen.Height-self.Height-30;
end;
procedure TBackForm.Image1Click(Sender: TObject);
begin
   activeform.Show;
end;
procedure TBackForm.OpenAnotherKeyboard(var msg: TMessage);
var tempform: TParentForm;
begin
  if (activeform is TKeyboardFormlarge) then
     tempform:= TKeyboardFormSmall.Create(self)
      //tempform.boardSize.State:=tssOn
  else
     tempform:= TKeyboardFormLarge.Create(self);
     //tempform.boardSize.State:=tssOff;
  tempform.VirtKeyboard:=activeform.VirtKeyboard;
  //tempform.showSpeed.State:=activeform.showSpeed.State;
  //tempform.TogPlaySound.State:=activeform.TogPlaySound.State;
  tempform.boardSize.State:=activeform.boardSize.State;

  tempform.Show;//(activeform.VirtKeyboard);

  activeform.Close;
  activeform.TrayIcon.Visible:=false;
  //settingform.ApplayAll;
  activeform:=tempform;
  settingForm.ApplayAll;
end;
end.
