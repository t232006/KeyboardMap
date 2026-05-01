unit speedForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AnalogMeter, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    speedM: TAnalogMeter;
    instSpeedM: TAnalogMeter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
