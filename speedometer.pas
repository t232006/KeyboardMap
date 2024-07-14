unit speedometer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AnalogMeter, Vcl.ExtCtrls, registry,
  Vcl.Menus, Vcl.WinXCtrls;

type
  TSpeedForm = class(TForm)
    speedM: TAnalogMeter;
    instSpeedM: TAnalogMeter;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure instSpeedMChange(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
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
uses backgroundUnit, parentUnit;

procedure TSpeedForm.FormHide(Sender: TObject);
var saveparams:TRegInifile;
begin
  //with keyboardform do
  //begin

    saveparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
    saveparams.WriteInteger('speeds','posX',left);
    saveparams.WriteInteger('speeds','posY',top);
    saveparams.WriteInteger('Speeds','averageSpeed',round(speedM.Value));
    saveparams.WriteInteger('Speeds','recordSpeed',speedM.Tag);
    saveparams.WriteInteger('Speeds','count', backForm.statistics.PressCount);
    saveparams.Destroy;
  //end;
end;

procedure TSpeedForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //pos:=mouse.CursorPos;
  diff.X:=x+(Sender as TControl).Left;
  diff.Y:=y+(Sender as TControl).Top;
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
var saveparams: TRegIniFile;
begin
  saveparams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  move:=false;
  left:=saveparams.ReadInteger('speeds','PosX',0);
  top:=saveparams.ReadInteger('speeds','PosY',0);
  speedM.HighZoneValue:=saveparams.ReadInteger('speeds','recordSpeed',0);
  speedM.Value:=saveparams.ReadInteger('speeds','averageSpeed',0);
  saveparams.Destroy;
end;

procedure TSpeedForm.instSpeedMChange(Sender: TObject);
begin
with (sender as TAnalogMeter) do
     begin
      LowZoneValue:=Value-20;
      if (value>tag) and (value<max) then tag:=round(value);
      HighZoneValue:=tag;
      backForm.Statistics.recordSpeed:=tag;
     end;
end;

procedure TSpeedForm.N1Click(Sender: TObject);
begin
    hide;
    BackForm.activeForm.showSpeed.State:=tssoff;

end;

procedure TSpeedForm.N3Click(Sender: TObject);
begin
if MessageDlg('Стереть рекорд и среднюю скорость?', TMsgDlgType.mtConfirmation,mbYesNo,0)=mrYes
  then
  begin
    BackForm.Statistics.resetSpeed;
    speedform.speedM.Tag:=0;
    speedform.speedM.Value:=0;
  end;
end;

end.
