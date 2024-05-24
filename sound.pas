unit sound;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.WinXCtrls, MMSystem, inifiles, IOUtils, Types, strutils;

type
  TsoundSetting = class(TForm)
    playSound: TToggleSwitch;
    SoundFolder: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SoundFolderCloseUp(Sender: TObject);
    procedure playSoundClick(Sender: TObject);
  private
    currentScheme: byte;
    loadParams: TIniFile;
    path: string;
  public
    procedure playClick(button: string);
  end;

var
  soundSetting: TsoundSetting;
  playSoundB: boolean;

implementation
uses backgroundUnit;

{$R *.dfm}

procedure TsoundSetting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   loadParams:=TIniFile.Create(path+'\params.ini');
  currentScheme:=loadParams.ReadInteger('sounds','curScheme',0);
  loadparams.WriteInteger('sounds', 'curScheme', currentScheme);
  loadParams.Destroy;
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
  loadParams:=TIniFile.Create(path+'\params.ini');
  folderslist:=TDirectory.GetDirectories(path+'\sounds');
  for st in folderslist do soundfolder.Items.Add(getdir(st));

  currentScheme:=loadParams.ReadInteger('sounds','curScheme',0);
  playSoundB:=loadParams.ReadBool('sounds','playSound', false);
  if playSoundB then playSound.State:=tssOn else playSound.State:=tssoff;

  loadParams.Destroy;
  soundfolder.ItemIndex:=currentScheme;

end;

procedure TsoundSetting.playClick(button: string);
var sPath: string;
begin
  sPath:=ExtractFileDir(Paramstr(0))+'\sounds\'+soundFolder.Items[currentScheme]+'\';
  button:=copy(button,2,length(button)-2);
  if FileExists(sPath+button+'.wav') then
    sPath:=sPath+button+'.wav' else
    sPath:=sPath+'rem.wav';
  sndPlaySound(pchar(sPath), SND_ASYNC or SND_NODEFAULT);

end;

procedure TsoundSetting.playSoundClick(Sender: TObject);
begin
  //if playsound.Tag<>0 then exit;
  Backform.activeForm.FormHeader.playSound.State:=playsound.state;
end;

procedure TsoundSetting.SoundFolderCloseUp(Sender: TObject);
begin
  currentScheme:=soundFolder.ItemIndex;
end;

end.
