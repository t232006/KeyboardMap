unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  languageFrameUnit, appearanceFrameUnit, soundFrameUnit, statisticsFrameUnit, registry;

type
  TSettingForm = class(TForm)
    LBmenu: TListBox;
    Panel1: TPanel;
    OKButton: TButton;
    CancelButton: TButton;
    ApplayButton: TButton;

    procedure LBmenuClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TSettingForm.CancelButtonClick(Sender: TObject);
begin
  close;
end;

procedure TSettingForm.FormCreate(Sender: TObject);
begin
  reg:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  LBmenu.ItemIndex:=0;
  LBmenuClick(sender);
end;

{procedure TSettingForm.Includeframe<T>(MyFrame: Tframe);
begin
    if MyFrame=nil then
    MyFrame:=T.Create(self) else
    if (MyFrame as TFrame).Owner = nil then


end; }

procedure TSettingForm.LBmenuClick(Sender: TObject);
begin
if panel1.ControlCount>0 then panel1.Controls[0].Free;
case lbmenu.ItemIndex of
0: begin
    if (settingFrame=nil) then
      settingFrame:=TSettingFrame.Create(self) else
    if (settingFrame.Owner=nil) then
    begin
      settingFrame.Destroy;
      settingFrame:=TSettingFrame.Create(self)
    end;
    settingFrame.Parent:=panel1;
    settingFrame.reg:=self.reg;
    end;
1: begin
    if (soundFrame=nil) or (soundFrame.Owner=nil) then
     soundFrame:=TSoundFrame.Create(self);
     soundFrame.Parent:=panel1;
     soundFrame.reg:=self.reg;
    end;

2: begin
      if (langFrame=nil) or (langFrame=nil) then
        langFrame:=TlangFrame.Create(self);
        langFrame.Parent:=panel1;
    end;

3: begin
        if (statisticsFrame=nil) or (statisticsFrame=nil) then
          statisticsFrame:=TStatisticsFrame.Create(self);
        statisticsFrame.Parent:=panel1;
    end;
end;

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
