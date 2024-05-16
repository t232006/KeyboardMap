unit speedometer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AnalogMeter, Vcl.ExtCtrls, inifiles,
  Vcl.Menus;

type
  TSpeedForm = class(TForm)
    speedM: TAnalogMeter;
    instSpeedM: TAnalogMeter;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure instSpeedMChange(Sender: TObject);
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
var saveparams:TInifile;
begin
  //with keyboardform do
  //begin
    saveparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
    saveparams.WriteInteger('speeds','posX',left);
    saveparams.WriteInteger('speeds','posY',top);
    saveparams.WriteInteger('Speeds','averageSpeed',round(speedM.Value));
    saveparams.WriteInteger('Speeds','recordSpeed',speedM.Tag);
    saveparams.WriteInteger('Speeds','count', keyboardform.statistics.PressCount);
    saveparams.Destroy;
  //end;
end;

procedure TSpeedForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
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
var saveparams: TIniFile;
begin
  saveparams:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
  move:=false;
  left:=saveparams.ReadInteger('speeds','PosX',0);
  top:=saveparams.ReadInteger('speeds','PosY',0);
  saveparams.Destroy;
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

end.
