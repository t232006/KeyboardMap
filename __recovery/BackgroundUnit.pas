unit BackgroundUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ParentUnit, MainUnitLarge, MainUnitSmall,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, language;

type
  TBackgroundForm = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpenAnotherKeyboard (var msg: TMessage); message WM_WANT_CLOSE;
    procedure FormShow(Sender: TObject);
    procedure FormAlignPosition(Sender: TWinControl; Control: TControl;
      var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect;
      AlignInfo: TAlignInfo);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure RunHook stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';

var
  BackgroundForm: TBackgroundForm;
  activeForm: TParentForm;

implementation

{$R *.dfm}

procedure TBackgroundForm.FormAlignPosition(Sender: TWinControl;
  Control: TControl; var NewLeft, NewTop, NewWidth, NewHeight: Integer;
  var AlignRect: TRect; AlignInfo: TAlignInfo);
begin
activeform.Show;
end;

procedure TBackgroundForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  stophook;
end;

procedure TBackgroundForm.FormCreate(Sender: TObject);
begin
   Runhook;
   activeform:=KeyboardFormLarge;
//   KeyboardFormSmall.Show;
end;

procedure TBackgroundForm.FormResize(Sender: TObject);
begin
activeform.Show;
end;

procedure TBackgroundForm.FormShow(Sender: TObject);
begin
   left:=0;
  top:=screen.Height-self.Height-30;
end;

procedure TBackgroundForm.Image1Click(Sender: TObject);
begin
   activeform.Show;
   //keyboardFormLarge.Show;
end;

procedure TBackgroundForm.OpenAnotherKeyboard(var msg: TMessage);
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
