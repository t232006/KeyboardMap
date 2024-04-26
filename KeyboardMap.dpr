program KeyboardMap;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {KeyboardForm},
  SendKeyPressProc in 'SendKeyPressProc.pas',
  StatisticsOptions in 'StatisticsOptions.pas' {Form2},
  PressCounter in 'PressCounter.pas',
  AnalogMeter in 'components\AnalogMeter.pas',
  auxilary in 'auxilary.pas',
  Language in 'Language.pas' {LangForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TKeyboardForm, KeyboardForm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TLangForm, LangForm);
  Application.Run;
end.
