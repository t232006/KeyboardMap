unit BackgroundUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Registry, PressCounter, speedometer,
  Vcl.WinXCtrls, MyAuxProc, shlObj, sound;
  const WM_WANT_CLOSE = WM_USER+$345+10;
type
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
    { Private declarations }
  public
    avSpeed, MaxSpeed, n: Integer;
    Statistics: TStatistics;
    activeForm: TParentForm;
    showSpeed, playSound: boolean;
    //settingFolder: string;
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
var
  BackForm: TBackForm;
  loadparams, saveparams: TRegIniFile;
  soundSetting: TsoundSetting;
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
var className:string;
begin
   //settingFolder:= GetSpecialPath(CSIDL_APPDATA)+'\Individual dictionary';
   Runhook;
   Application.OnDeactivate:=FormDeactivate;
   loadparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
   avSpeed:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
   maxSpeed:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
   n:=loadparams.ReadInteger('Speeds', 'count', 0);
   Statistics:= TStatistics.Create(n, round(avSpeed));
   className:=loadparams.ReadString('Windows','Kind','TKeyboardFormLarge');
   RegisterClasses([tKeyboardFormSmall, tKeyboardFormlarge, tparentform]);
   soundSetting:=TSoundSetting.Create(Application);
   activeForm:=TParentForm(TControlClass(GetClass(classname)).Create(self));
   //activeForm:=TKeyboardFormSmall.Create(self);
   activeForm.Left:=loadparams.ReadInteger('Windows', 'PosX', 0);
   activeForm.Top:=loadparams.ReadInteger('Windows', 'PosY', 0);
   showSpeed:=loadparams.ReadBool('Windows','showSpeed', false);
   playSound:=loadparams.ReadBool('Sounds','playSound', false);
   try
   if className='TKeyboardFormLarge' then
    activeForm.boardSize.State:=tssOff else
    activeForm.boardSize.State:=tssOn;
   finally
     activeForm.boardSize.tag:=0;
   end;
   if showSpeed then activeForm.showSpeed.State:=tssOn
                      else
                      activeForm.showSpeed.State:=tssOff;
   if playSound then activeForm.playSound.State:=tssOn
                      else
                      activeForm.playSound.State:=tssOff;
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
     if playSound.State=tssOn then
      saveparams.WriteBool('Sounds','playSound', true)
     else
      saveparams.WriteBool('Sounds','playSound', false);
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
  else
     tempform:= TKeyboardFormLarge.Create(self);
  tempform.VirtKeyboard:=activeform.VirtKeyboard;
  tempform.showSpeed:=activeform.showSpeed;
  tempform.playSound:=activeform.playSound;
  tempform.Show;//(activeform.VirtKeyboard);
  activeform.Close;
  activeform.TrayIcon.Visible:=false;
  activeform:=tempform;
end;
end.
