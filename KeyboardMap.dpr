program KeyboardMap;

uses
  Vcl.Forms,
  Windows,
  MainUnitSmall in 'MainUnitSmall.pas' {KeyboardFormSmall},
  StatisticsOptions in 'StatisticsOptions.pas' {Form2},
  AnalogMeter in 'components\AnalogMeter.pas',
  Language in 'Language.pas' {LangForm},
  speedometer in 'speedometer.pas' {SpeedForm},
  LabSwitch in 'LabSwitch.pas' {Frame1: TFrame},
  auxilary in 'units\auxilary.pas',
  PressCounter in 'units\PressCounter.pas',
  SendKeyPressProc in 'units\SendKeyPressProc.pas',
  Utilites in 'units\Utilites.pas',
  FileMapping in 'HookProject\FileMapping.pas',
  KeyboardUnit in 'HookProject\KeyboardUnit.pas',
  winHeader in 'components\winHeader.pas' {FormHeader: TFrame},
  sound in 'sound.pas' {Form1},
  ParentUnit in 'ParentUnit.pas' {ParentForm},
  BackgroundUnit in 'BackgroundUnit.pas' {BackForm},
  MainUnitLarge in 'MainUnitLarge.pas' {KeyboardFormLarge};

{$R *.res}
//var //pbuff: array[0..127] of char;
    //dWin: HWnd;
    //s: string;
begin

  Application.Initialize;
  Application.Title:='Screen keyboard';
//  Application.MainFormOnTaskbar := True;
  {dWin:=GetWindow(Application.Handle, GW_HWNDFIRST);
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
        s:='���������� ��� ��������';
        Application.MessageBox(Pchar(s),'',MB_OK);
        exit;
      end;

    end;
    dWin:=GetWindow(dwin, GW_HWNDNEXT);

  end;   }
   Application.CreateForm(TBackForm, BackForm);
  //Application.CreateForm(TKeyboardFormLarge, KeyboardFormLarge);
  //Application.CreateForm(TKeyboardFormSmall, KeyboardFormSmall);
  //Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TLangForm, LangForm);
  Application.CreateForm(TSpeedForm, SpeedForm);
  Application.Run;
end.
