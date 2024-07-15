unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  languageFrameUnit, appearanceFrameUnit, soundFrameUnit, statisticsFrameUnit;

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
  private
    { Private declarations }
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

procedure TSettingForm.LBmenuClick(Sender: TObject);
begin
case lbmenu.ItemIndex of
0: begin
    if settingFrame=nil then
      settingFrame:=TSettingFrame.Create(self);
    settingFrame.parent:=panel1;
    end;
1: begin
    if soundFrame=nil then
     soundFrame:=TSoundFrame.Create(self);
    soundFrame.parent:=panel1;
    end;

2: begin
      if langFrame=nil then
        langFrame:=TlangFrame.Create(self);
     langFrame.Parent:=panel1;
    end;

3: begin
        if statisticsFrame=nil then
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
