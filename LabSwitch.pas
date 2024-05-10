unit LabSwitch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls,
  Vcl.StdCtrls;

type
  TFrame1 = class(TFrame)
    Switch: TToggleSwitch;
    Label1: TLabel;
    procedure SwitchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.SwitchClick(Sender: TObject);
begin
  if Switch.State=tssOn then label1.Font.Color:=clGreen else
  label1.Font.Color:=clRed;

end;

end.
