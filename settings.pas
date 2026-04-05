unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  languageFrameUnit, appearanceFrameUnit, soundFrameUnit, scans,
  statisticsFrameUnit, registry, Vcl.ComCtrls, KeyExchangeFrame, keyboardunit;

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
    TabSheet5: TTabSheet;
    KeyExchange1: TKeyExchange;

    procedure LBmenuClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplayButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    reg: TRegIniFile;
    FScans: TScans;
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
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
type TkeyPair=class
  Vk:word;
  KeyName:string;
end;
var KeyFrom, KeyTo: TkeyPair;
const selector: boolean=true;

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
  {StatisticsFrame.SaveParams;
  SoundFrame.SaveParams;
  langFrame.SaveParams;     }

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
  FScans:=TScans.Create;
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

procedure TSettingForm.GetPressing(var msg: TMessage);
var row: integer;
begin
 if pcPanel.ActivePageIndex=4 then

 if selector then
   begin
       KeyFrom:=TKeyPair.Create;
       KeyFrom.Vk:=msg.WParam and 255;
       KeyFrom.KeyName:=FScans.getScan(IntToHex(KeyFrom.Vk));//InttoHex(msg.WParam);
       with KeyExchange1.KeyDict do
       begin
          KeyExchange1.label1.Caption:='Нажмите заменяющую клавишу';

          if FindRow(KeyFrom.KeyName)=-1 then
          begin
             KeyExchange1.NoRows:=true;
               Objects[0,RowCount-1]:=KeyFrom;
               Cells[0,rowcount-1]:=KeyFrom.Keyname;
          end
          else
          begin
            KeyExchange1.NoRows:=false;
            Invalidate;
          end;
       end;
       KeyExchange1.drawTitle(1);

   end

    else
    begin
      KeyTo:=TkeyPair.Create;
      KeyTo.Vk:=msg.WParam and 255;
      KeyTo.KeyName:=FScans.getScan(IntToHex(KeyTo.Vk)); //InttoHex(msg.WParam);
      with KeyExchange1.KeyDict do
      begin
        KeyExchange1.label1.Caption:='Нажмите заменяемую клавишу';
        if KeyExchange1.noRows then
          begin
            Objects[1,RowCount-1]:=KeyTo;
            Cells[1,rowcount-1]:=KeyTo.Keyname;
            RowCount:=RowCount+1;
          end
        else
          begin
            Objects[0,Row]:=KeyTo;
            Cells[1,row]:=KeyTo.Keyname;
          end;
        KeyExchange1.drawTitle(0);
        KeyFrom.KeyName:=''; KeyTo.KeyName:='';

      end;
    end;
    selector:=not(selector);
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
