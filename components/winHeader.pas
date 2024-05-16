unit winHeader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, LabSwitch;

type
  TFormHeader = class(TFrame)
    Panel1: TPanel;
    WinIcon: TImage;
    CloseBut: TSpeedButton;
    MinimBut: TSpeedButton;
    WinCaption: TLabel;
    WinStyle: TSpeedButton;
    ImageList: TImageList;
    Frame11: TFrame1;
    SpeedButton1: TSpeedButton;
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseButClick(Sender: TObject);
    function GetParentForm(Component: TComponent): TForm;
    procedure WinStyleClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure MinimButClick(Sender: TObject);
  private

    diff:TPoint;
  public
    { Public declarations }
  end;
const
    down:boolean=false;
implementation

{$R *.dfm}

procedure TFormHeader.FrameResize(Sender: TObject);
begin
winIcon.Canvas.FloodFill(1,1,clActiveCaption,fsBorder);
WinIcon.Canvas.Draw(0,0,Application.Icon);
     WinCaption.Caption:=GetParentForm(sender as TComponent).Caption;
end;

function TFormHeader.GetParentForm(Component: TComponent): TForm;
var
  C: TComponent;
begin
  Result := nil;
  if Component = nil then
    exit;
  C := Component;
  repeat
    Component := C;
    try
    C := Component.Owner except C := Component;
    end;
  until (C is TForm) or (C = Component);
  if C is TForm then
    Result := C as TForm;
end;

procedure TFormHeader.MinimButClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFormHeader.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  down:=true;
  diff.X:=x; diff.Y:=y;
end;

procedure TFormHeader.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var pos:TPoint;
begin
  if down then
   begin
    pos:=mouse.CursorPos;
    GetParentForm(sender as tComponent).Left:=pos.X-diff.X;
    GetParentForm(sender as tComponent).top:=pos.Y-diff.Y;
   end;
end;

procedure TFormHeader.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  down:=false;
end;

procedure TFormHeader.CloseButClick(Sender: TObject);
begin
  GetParentForm(sender as tComponent).close;
end;

procedure TFormHeader.WinStyleClick(Sender: TObject);
begin
if winStyle.Down then
    GetParentForm(sender as tComponent).FormStyle:=fsStayOnTop
    else
    GetParentForm(sender as tComponent).FormStyle:=fsNormal;
end;

end.

