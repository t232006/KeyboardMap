program KeyboardMap;

uses
  Vcl.Forms,
  Windows,
  MainUnit in 'MainUnit.pas' {KeyboardForm},
  SendKeyPressProc in 'SendKeyPressProc.pas',
  StatisticsOptions in 'StatisticsOptions.pas' {Form2},
  PressCounter in 'PressCounter.pas',
  AnalogMeter in 'components\AnalogMeter.pas',
  auxilary in 'auxilary.pas',
  Language in 'Language.pas' {LangForm},
  speedometer in 'speedometer.pas' {SpeedForm},
  LabSwitch in 'LabSwitch.pas' {Frame1: TFrame};

{$R *.res}
var pbuff: array[0..127] of char;
    dWin: HWnd;
    s: string;
begin

  Application.Initialize;
  Application.Title:='Screen keyboard';
//  Application.MainFormOnTaskbar := True;
  dWin:=GetWindow(Application.Handle, GW_HWNDFIRST);
  while dWin <>0 do
  begin
    if (dWin <> Application.Handle) and
       (GetWindow(dWin, GW_OWNER) = 0) and
       (GetWindowText(dWin, pbuff, sizeOf(pbuff)) <> 0)
    then
    begin
      GetWindowText(dWin, pbuff, sizeof(pbuff));
      s:=string(pbuff);
      if s = Application.Title then
      begin
        s:='Приложение уже запущено';
        Application.MessageBox(Pchar(s),'',MB_OK);
        exit;
      end;

    end;
    dWin:=GetWindow(dwin, GW_HWNDNEXT);

  end;
  Application.CreateForm(TKeyboardForm, KeyboardForm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TLangForm, LangForm);
  //Application.CreateForm(TSpeedForm, SpeedForm);
  Application.Run;
end.
