unit BackgroundUnit;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, IniFiles, PressCounter, speedometer,
  Vcl.WinXCtrls, MyAuxProc, shlObj, sound;
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
  saveparams, loadparams: TIniFile;
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
   loadparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
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

   if showSpeed then activeForm.FormHeader.showSpeed.State:=tssOn
                      else
                      activeForm.FormHeader.showSpeed.State:=tssOff;
   if playSound then activeForm.FormHeader.playSound.State:=tssOn
                      else
                      activeForm.FormHeader.playSound.State:=tssOff;

   //loadparams.Destroy;
   activeForm.Show;

end;
procedure TBackForm.FormDeactivate(Sender: TObject);
begin
  if activeForm.FormHeader.WinOverride.State=tsson then

  activeForm.SetFocus;
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
  tempform.FormHeader.showSpeed:=activeform.FormHeader.showSpeed;
  tempform.FormHeader.playSound:=activeform.FormHeader.playSound;
  tempform.Show;//(activeform.VirtKeyboard);

  activeform.Close;
  activeform.TrayIcon.Visible:=false;
  activeform:=tempform;
end;
end.
