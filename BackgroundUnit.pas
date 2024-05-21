unit BackgroundUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, IniFiles, PressCounter, speedometer;

type
  TBackForm = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenAnotherKeyboard (var msg: TMessage); message WM_WANT_CLOSE;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    avSpeed, MaxSpeed, n: Integer;
    Statistics: TStatistics;
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';

var
  BackForm: TBackForm;
  activeForm: TParentForm;
  saveparams, loadparams: TIniFile;

implementation

{$R *.dfm}

procedure TBackForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //activeform.close; activeform.Free;
  stophook;
end;

procedure TBackForm.FormCreate(Sender: TObject);
var className:string;
begin
   Runhook;
   loadparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
   avSpeed:= loadparams.ReadInteger('Speeds', 'averageSpeed', 0);
   maxSpeed:=loadparams.ReadInteger('Speeds', 'recordSpeed', 0);
   n:=loadparams.ReadInteger('Speeds', 'count', 0);
   Statistics:= TStatistics.Create(n, round(avSpeed));
   className:=loadparams.ReadString('Windows','Kind','TKeyboardFormLarge');
   RegisterClasses([tKeyboardFormSmall, tKeyboardFormlarge, tparentform]);
   activeForm:=TParentForm(TControlClass(GetClass(classname)).Create(self));
   //activeForm:=TKeyboardFormSmall.Create(self);
   activeForm.Left:=loadparams.ReadInteger('Windows', 'PosX', 0);
   activeForm.Top:=loadparams.ReadInteger('Windows', 'PosY', 0);
  activeForm.Show;


end;

procedure TBackForm.FormShow(Sender: TObject);
begin
  speedform.Show;
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
  tempform.Show(activeform.VirtKeyboard);
  activeform.Close;
  activeform:=tempform;
end;

end.
