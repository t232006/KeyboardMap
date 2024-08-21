unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  languageFrameUnit, appearanceFrameUnit, soundFrameUnit,
  statisticsFrameUnit, registry, Vcl.ComCtrls;

type
  TSettingForm = class(TForm)
    LBmenu: TListBox;
    OKButton: TButton;
    CancelButton: TButton;
    ApplayButton: TButton;
    pcPanel: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    settingFrame: TsettingFrame;
    SoundFrame: TSoundFrame;
    LangFrame: TLangFrame;
    StatisticsFrame: TStatisticsFrame;

    procedure LBmenuClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplayButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    reg: TRegIniFile;
   // procedure Includeframe<T>(MyFrame: Tframe);
  public
    procedure ApplayAll;
  end;

//var
  //SettingForm: TSettingForm;
   {settingFrame: TsettingFrame;
    soundFrame: TSoundFrame;
    langFrame: TLangFrame;
    statisticsFrame: TStatisticsFrame; }

implementation
uses BackgroundUnit;

{$R *.dfm}

procedure TSettingForm.ApplayButtonClick(Sender: TObject);
begin
  //settingFrame.SaveParams;
  tag:=1;
  case LBmenu.ItemIndex of
  0: SettingFrame.Applay;
  1: SoundFrame.Applay;
  3: begin
       statisticsFrame.Applay;
       BackForm.activeForm.AfterStaticsForm(sender, tag);
      end;

  end;

  Close;
end;

procedure TSettingForm.CancelButtonClick(Sender: TObject);
begin
  case LBmenu.ItemIndex of
  0:begin
       settingFrame.LoadParams;
       settingFrame.Applay;
    end;
  3:begin
       BackForm.activeForm.Close_statisticsExecute(Sender);
    end;

  end;
  tag:=2;
  close;
end;

procedure TSettingForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if tag=1 then settingFrame.SaveParams;
  StatisticsFrame.SaveParams;
  SoundFrame.SaveParams;

end;

procedure TSettingForm.FormCreate(Sender: TObject);
begin
  reg:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  for var p := 0 to pcPanel.PageCount-1 do
    pcpanel.Pages[p].TabVisible:=false;

  settingFrame.reg:=self.reg;
  SoundFrame.reg:=self.reg;
  LangFrame.reg:=self.reg;
  StatisticsFrame.reg:=self.reg;
  LBmenu.ItemIndex:=0;
  LBmenuClick(sender);
end;

procedure TSettingForm.FormShow(Sender: TObject);
begin
  tag:=0;
  case pcpanel.ActivePageIndex of
  3:  begin
      StatisticsFrame.OnShow;
      end;
    end;

end;

procedure TSettingForm.LBmenuClick(Sender: TObject);
begin
    pcPanel.ActivePageIndex:=lbMenu.ItemIndex;
    case pcpanel.ActivePageIndex of
  3:  begin
      StatisticsFrame.OnShow;
      end;
    end;
{1:begin
    soundFrame.LoadParams;
  end;
end;}

    //(pcPanel.Pages[pcPanel.ActivePageIndex].Controls[0] as TFrame).reg:=self.reg;
end;

procedure TSettingForm.OKButtonClick(Sender: TObject);
begin
  tag:=1;
   case lbmenu.ItemIndex of
   0: Settingframe.Applay;
   1: soundFrame.Applay;
   2: langframe.Applay;
   3: begin
      statisticsFrame.Applay;
      BackForm.activeForm.AfterStaticsForm(sender, tag);
      end;

    end;

end;

procedure TSettingForm.ApplayAll;
begin
    settingFrame.LoadParams;
    Settingframe.Applay;
    SoundFrame.LoadParams;
    SoundFrame.Applay;
    LangFrame.LoadParams;
    //LangFrame.Applay;
    StatisticsFrame.LoadParams;
    //StatisticsFrame.Applay;


end;

end.
