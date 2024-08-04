unit winHeader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  Vcl.WinXCtrls, MyAuxProc;
const WM_WANT_CLOSE = WM_USER+$345+10;
type
  TFormHeader = class(TFrame)
    Panel1: TPanel;
    WinIcon: TImage;
    CloseBut: TSpeedButton;
    WinCaption: TLabel;
    ImageList: TImageList;
    SpeedButton2: TSpeedButton;
    sbSetting: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseButClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure WinIconClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);

  private

    diff: TPoint;
  public
    pos: TPoint;
  end;
const
    down:boolean=false;
implementation
uses ParentUnit, backgroundUnit;
{$R *.dfm}

procedure TFormHeader.FrameResize(Sender: TObject);
begin
winIcon.Canvas.FloodFill(1,1,clActiveCaption,fsBorder);
WinIcon.Canvas.Draw(0,0,Application.Icon);
     WinCaption.Caption:=GetParentForm(sender as tControl).Caption;
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
    GetParentForm(sender as tControl).Left:=pos.X-diff.X;
    GetParentForm(sender as tControl).top:=pos.Y-diff.Y;
   end;
end;

procedure TFormHeader.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  down:=false;
end;

procedure TFormHeader.SpeedButton1Click(Sender: TObject);
begin
sendmessage((GetParentForm(sender as tControl).Owner as TForm).Handle,WM_WANT_CLOSE,0,0);
end;

procedure TFormHeader.SpeedButton2Click(Sender: TObject);
begin
    GetParentForm(sender as tControl).Hide;
    (GetParentForm(sender as tControl).owner as tform).show;
end;

procedure TFormHeader.SpeedButton5Click(Sender: TObject);
begin
  backform.settingform.showmodal;
end;

procedure TFormHeader.WinIconClick(Sender: TObject);
var foo: TPoint;
begin
    GetCursorPos(foo);
    WinIcon.PopupMenu.Popup(foo.X, foo.Y);
end;

procedure TFormHeader.CloseButClick(Sender: TObject);
//var f: TForm;
begin
 (GetParentForm(sender as tControl).owner as tform).close;
  //f.close;
end;

end.

