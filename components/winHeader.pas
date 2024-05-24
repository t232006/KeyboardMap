unit winHeader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  LabSwitch, Vcl.WinXCtrls, speedometer;
const WM_WANT_CLOSE = WM_USER+$345+10;
type
  TFormHeader = class(TFrame)
    Panel1: TPanel;
    WinIcon: TImage;
    CloseBut: TSpeedButton;
    WinCaption: TLabel;
    ImageList: TImageList;
    StatSwitch: TToggleSwitch;
    WinOverride: TToggleSwitch;
    SpeedButton2: TSpeedButton;
    showSpeed: TToggleSwitch;
    SpeedButton3: TSpeedButton;
    playSound: TToggleSwitch;
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseButClick(Sender: TObject);
    function GetParentForm(Component: TComponent): TForm;
    procedure FrameResize(Sender: TObject);
    procedure WinOverrideClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure showSpeedClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure WinIconClick(Sender: TObject);

  private

    diff: TPoint;
  public
    pos: TPoint;
  end;
const
    down:boolean=false;
implementation
uses ParentUnit;
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



procedure TFormHeader.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  down:=true;
  diff.X:=x+(Sender as TControl).left;
  diff.Y:=y;
end;

procedure TFormHeader.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
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

procedure TFormHeader.showSpeedClick(Sender: TObject);
begin
  if tag<>0 then exit;
  if speedform<>nil then
  begin
      if showSpeed.State=tssOff then
          speedform.Close else
      speedform.Show;
  end;
end;



procedure TFormHeader.SpeedButton1Click(Sender: TObject);
begin
sendmessage((GetParentForm(sender as tComponent).Owner as TForm).Handle,WM_WANT_CLOSE,0,0);
end;

procedure TFormHeader.SpeedButton2Click(Sender: TObject);
begin
    GetParentForm(sender as tComponent).Hide;
    (GetParentForm(sender as tComponent).owner as tform).show;
end;

procedure TFormHeader.WinIconClick(Sender: TObject);
var foo: TPoint;
begin
    GetCursorPos(foo);
    WinIcon.PopupMenu.Popup(foo.X, foo.Y);
end;

procedure TFormHeader.WinOverrideClick(Sender: TObject);
begin
if winOverride.State=tssOn then
    GetParentForm(sender as tComponent).FormStyle:=fsStayOnTop
    else
    GetParentForm(sender as tComponent).FormStyle:=fsNormal;
end;

procedure TFormHeader.CloseButClick(Sender: TObject);
//var f: TForm;
begin
 (GetParentForm(sender as tComponent).owner as tform).close;
  //f.close;
end;

end.

