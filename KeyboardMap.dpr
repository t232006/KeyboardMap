program KeyboardMap;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  saver in 'saver.pas',
  SendKeyPressProc in 'SendKeyPressProc.pas',
  FilesListUnit in 'FilesListUnit.pas' {Form2},
  PressCounter in 'PressCounter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
