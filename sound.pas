unit sound;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.WinXCtrls, MMSystem,
  registry, IOUtils, Types, strutils;

type
  TsoundSetting = class(TForm)
    playSound: TToggleSwitch;
    SoundFolder: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SoundFolderCloseUp(Sender: TObject);
    procedure playSoundClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    currentScheme: byte;
    loadParams: TRegIniFile;
    path: string;
  public

  end;


var
  soundSetting: TsoundSetting;
  playSoundB: boolean;
  sPath: string;

implementation
uses backgroundUnit;

{$R *.dfm}




procedure TsoundSetting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //loadParams:=TIniFile.Create(path+'\params.ini');
  //currentScheme:=loadParams.ReadInteger('sounds','curScheme',0);
  loadparams.WriteInteger('sounds', 'curScheme', currentScheme);
  //
end;

procedure TsoundSetting.FormCreate(Sender: TObject);
var folderslist: TStringDynArray;  st: string;
function GetDir(fullDir: string): string;
var count: integer;// s:string;
begin
    count:=Pos('\',reverseString(fullDir));
    result:=ansiRightStr(fullDir,count-1);
end;

begin
  path:=ExtractFileDir(Paramstr(0));
  loadParams:=TReginifile.Create('Software\'+ChangeFileExt(ExtractFileName(Paramstr(0)),''));
  folderslist:=TDirectory.GetFiles(path+'\sounds');
  for st in folderslist do
    soundfolder.Items.Add(TPath.GetFileNameWithoutExtension(st));

  currentScheme:=loadParams.ReadInteger('sounds','curScheme',0);
  playSoundB:=loadParams.ReadBool('sounds','playSound', false);

  playSound.Tag:=1;
  try
    if playSoundB then
    playSound.State:=tssOn else playSound.State:=tssoff;
    finally
    playSound.Tag:=0;
  end;
  //loadParams.Destroy;
  soundfolder.ItemIndex:=currentScheme;
  sPath:=ExtractFileDir(Paramstr(0))+'\sounds\'+soundFolder.Items[currentScheme]+'\';

end;

procedure TsoundSetting.FormDestroy(Sender: TObject);
begin
    loadParams.Destroy;
end;

procedure TsoundSetting.playSoundClick(Sender: TObject);
begin
  if playsound.Tag<>0 then exit;
  Backform.activeForm.TogplaySound.State:=playsound.state;
end;

procedure TsoundSetting.SoundFolderCloseUp(Sender: TObject);
begin
  currentScheme:=soundFolder.ItemIndex;
end;

end.
