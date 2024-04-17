program KeyboardMap;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {KeyboardMap},
  SendKeyPressProc in 'SendKeyPressProc.pas',
  FilesListUnit in 'FilesListUnit.pas' {Form2},
  PressCounter in 'PressCounter.pas',
  AnalogMeter in 'components\AnalogMeter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TKeyboardMap, Keyboard);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
