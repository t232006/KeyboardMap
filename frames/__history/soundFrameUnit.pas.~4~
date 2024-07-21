unit soundFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.WinXCtrls, InterfaceMyFrame, Types, Strutils, Registry, IOUtils, BackgroundUnit;

type
  TSoundFrame = class(TFrame, IMyFrame)
    Label1: TLabel;
    playSound: TToggleSwitch;
    SoundFolder: TComboBox;
    procedure FrameEnter(Sender: TObject);
    procedure SoundFolderCloseUp(Sender: TObject);
  private
    currentScheme: byte;
    loadParams: TRegIniFile;
    path: string;
  public
    procedure Applay;
  end;
  var
   playSoundB: boolean;
    sPath: string;

implementation

{$R *.dfm}

procedure TSoundFrame.Applay;
begin
    if playsound.Tag<>0 then exit;
  Backform.activeForm.playSound.State:=playsound.state;
end;

procedure TSoundFrame.FrameEnter(Sender: TObject);
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

procedure TSoundFrame.SoundFolderCloseUp(Sender: TObject);
begin
  currentScheme:=soundFolder.ItemIndex;
end;

end.
