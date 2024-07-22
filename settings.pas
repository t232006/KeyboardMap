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
    LangFrame1: TLangFrame;
    StatisticsFrame1: TStatisticsFrame;

    procedure LBmenuClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplayButtonClick(Sender: TObject);
  private
    reg: TRegIniFile;
   // procedure Includeframe<T>(MyFrame: Tframe);
  public
    { Public declarations }
  end;

var
  SettingForm: TSettingForm;
   settingFrame: TsettingFrame;
    soundFrame: TSoundFrame;
    langFrame: TLangFrame;
    statisticsFrame: TStatisticsFrame;

implementation

{$R *.dfm}

procedure TSettingForm.ApplayButtonClick(Sender: TObject);
begin
  settingFrame.SaveParams;
  SettingFrame.Applay;
  Close;
end;

procedure TSettingForm.CancelButtonClick(Sender: TObject);
begin
  settingFrame.LoadParams;
  settingFrame.Applay;
  close;
end;

procedure TSettingForm.FormCreate(Sender: TObject);
begin
  reg:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  for var p := 0 to pcPanel.PageCount-1 do
    pcpanel.Pages[p].TabVisible:=false;
  LBmenu.ItemIndex:=0;
  LBmenuClick(sender);
end;

procedure TSettingForm.LBmenuClick(Sender: TObject);
begin
    pcPanel.ActivePageIndex:=lbMenu.ItemIndex;
    case pcpanel.ActivePageIndex of
0: begin
   settingFrame.reg:=self.reg;
   settingFrame.LoadParams;
  end;
1:begin
   SoundFrame.reg:=self.reg;
  soundFrame.LoadParams;
  end;
end;

    //(pcPanel.Pages[pcPanel.ActivePageIndex].Controls[0] as TFrame).reg:=self.reg;
end;

procedure TSettingForm.OKButtonClick(Sender: TObject);
begin
 case lbmenu.ItemIndex of
 0: Settingframe.Applay;
 1: soundFrame.Applay;
 2: langframe.Applay;
 3: statisticsFrame.Applay;

  end;
end;

end.
