program KeyboardMap;



uses
  Vcl.Forms,
  Windows,
  MainUnitSmall in 'MainUnitSmall.pas' {KeyboardFormSmall},
  StatisticsOptions in 'StatisticsOptions.pas' {Form2},
  AnalogMeter in 'components\AnalogMeter.pas',
  speedometer in 'speedometer.pas' {SpeedForm},
  PressCounter in 'units\PressCounter.pas',
  SendKeyPressProc in 'units\SendKeyPressProc.pas',
  FileMapping in 'HookProject\FileMapping.pas',
  KeyboardUnit in 'HookProject\KeyboardUnit.pas',
  winHeader in 'components\winHeader.pas' {FormHeader: TFrame},
  sound in 'sound.pas' {soundSetting},
  ParentUnit in 'ParentUnit.pas' {ParentForm},
  BackgroundUnit in 'BackgroundUnit.pas' {BackForm},
  MainUnitLarge in 'MainUnitLarge.pas' {KeyboardFormLarge},
  key in 'components\key.pas',
  MyAuxProc in '..\..\myComponents\MyAuxProc.pas',
  Appearance in 'Appearance.pas' {Form1},
  SettingPanel in 'units\SettingPanel.pas' {SettingForm: TFrame},
  languageFrameUnit in 'frames\languageFrameUnit.pas' {LangFrame: TFrame},
  soundFrameUnit in 'frames\soundFrameUnit.pas' {Frame2: TFrame},
  statisticsFrameUnit in 'frames\statisticsFrameUnit.pas' {StatisticsFrame: TFrame},
  appearanceFrameUnit in 'frames\appearanceFrameUnit.pas' {Frame4: TFrame},
  settings in 'settings.pas' {Form3},
  Language in 'Language.pas' {LangForm};

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
        s:='Приложение уже запущено';
        Application.MessageBox(Pchar(s),'',MB_OK);
        exit;
      end;

    end;
    dWin:=GetWindow(dwin, GW_HWNDNEXT);

  end;   }
   Application.CreateForm(TBackForm, BackForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  //Application.CreateForm(TKeyboardFormLarge, KeyboardFormLarge);
  //Application.CreateForm(TKeyboardFormSmall, KeyboardFormSmall);
  //Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TLangForm, LangForm);
  Application.CreateForm(TSpeedForm, SpeedForm);
  //Application.CreateForm(TsoundSetting, soundSetting);
  Application.Run;
end.
