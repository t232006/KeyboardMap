program KeyboardSpy;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  saver in 'saver.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
