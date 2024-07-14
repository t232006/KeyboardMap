unit SettingPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls,
  Vcl.ExtCtrls, speedometer,  MyAuxProc;

type
  TSettingForm = class(TFrame)
    playSound: TToggleSwitch;
    showSpeed: TToggleSwitch;
    WinOverride: TToggleSwitch;
    StatSwitch: TToggleSwitch;
    LogToggle: TToggleSwitch;
    ToggleSwitch5: TToggleSwitch;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure showSpeedClick(Sender: TObject);
    procedure WinOverrideClick(Sender: TObject);
  private
    const
    toExtend:boolean=true;
  public
    procedure Extend;
    procedure Retract;
  end;

implementation

{$R *.dfm}

{ TFrame1 }

procedure TSettingForm.Extend;
begin
   toExtend:=true;
   timer.Enabled:=true;
   visible:=true;
end;

procedure TSettingForm.Retract;
begin
   toExtend:=false;
   timer.Enabled:=true;
   visible:=false;
end;

procedure TSettingForm.showSpeedClick(Sender: TObject);
begin
if tag<>0 then exit;
  if speedform<>nil then
  begin
      if showSpeed.State=tssOff then
          speedform.Close else
      speedform.Show;
  end;
end;

procedure TSettingForm.TimerTimer(Sender: TObject);
begin
    if toExtend then
      begin
        if height<143 then height:=height+40 else timer.Enabled:=false;
      end else
      begin
        if height>0 then height:=height-40 else timer.Enabled:=false;
      end;

end;

procedure TSettingForm.WinOverrideClick(Sender: TObject);
begin
if winOverride.State=tssOn then
    GetParentForm(sender as tComponent).FormStyle:=fsStayOnTop
    else
    GetParentForm(sender as tComponent).FormStyle:=fsNormal;
end;

end.
