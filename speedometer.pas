unit speedometer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AnalogMeter, Vcl.ExtCtrls, inifiles;

type
  TSpeedForm = class(TForm)
    Shape1: TShape;
    speedM: TAnalogMeter;
    instSpeedM: TAnalogMeter;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure instSpeedMChange(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormHide(Sender: TObject);
     private
    move: boolean;
    diff, pos: TPoint;
  public
    { Public declarations }
  end;

var
  SpeedForm: TSpeedForm;

implementation

{$R *.dfm}
uses mainUnit;

procedure TSpeedForm.FormHide(Sender: TObject);
begin
  keyboardform.saveparams.WriteInteger('speeds','posX',left);
  keyboardform.saveparams.WriteInteger('speeds','posY',top);
  keyboardform.saveparams.Destroy;
end;

procedure TSpeedForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var pos: TPoint;
begin
  //pos:=mouse.CursorPos;
  diff.X:=x;
  diff.Y:=y;
  move:=true;
end;

procedure TSpeedForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if move then
  begin
     pos:=mouse.CursorPos;
     Left:=pos.X-diff.X;
     Top:=pos.Y-diff.Y;
  end;
end;

procedure TSpeedForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  move:=false;
end;

procedure TSpeedForm.FormShow(Sender: TObject);
begin
  move:=false;
  left:=keyboardform.saveparams.ReadInteger('speeds','PosX',0);
  top:=keyboardform.saveparams.ReadInteger('speeds','PosY',0);
end;

procedure TSpeedForm.instSpeedMChange(Sender: TObject);
begin
with (sender as TAnalogMeter) do
     begin
      LowZoneValue:=Value-20;
      if (value>tag) and (value<max) then tag:=round(value);
      HighZoneValue:=tag;
     end;
end;

procedure TSpeedForm.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if MessageDlg('������� ������ � ������� ��������?', TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes
  then
  begin
    keyboardform.Statistics.resetSpeed;
    speedform.speedM.Tag:=0;
    speedform.speedM.Value:=0;
  end;
end;

end.
