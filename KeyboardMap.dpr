program KeyboardMap;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  saver in 'saver.pas',
  SendKeyPressProc in 'SendKeyPressProc.pas',
  PressCounter in 'PressCounter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
