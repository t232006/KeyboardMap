unit soundFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.WinXCtrls, InterfaceMyFrame, Types, Strutils, Registry, IOUtils ;

type
  TSoundFrame = class(TFrame, IMyFrame)
    Label1: TLabel;
    playSound: TToggleSwitch;
    SoundFolder: TComboBox;
    procedure SoundFolderCloseUp(Sender: TObject);
  private
    currentSchemeNum: byte;
    currentScheme: string;

    path: string;
  public
    reg: TRegIniFile;
    procedure Applay;
    procedure SaveParams;
    procedure LoadParams;
  end;
  var
   playSoundB: boolean;
    //sPath: string;

implementation
uses BackgroundUnit;
{$R *.dfm}

procedure TSoundFrame.Applay;
begin
    if playsound.Tag<>0 then exit;
    try
      playSound.Tag:=1;
      Backform.activeForm.TogPlaySound.State:=playsound.state;
    finally
      playSound.Tag:=0;
    end;
    if currentScheme<>'' then
    backform.activeForm.VirtKeyboard.SetSoundLibrary(currentScheme);

end;

procedure TSoundFrame.LoadParams;
  var folderslist: TStringDynArray;  st: string;

begin
  path:=ExtractFileDir(Paramstr(0));

  folderslist:=TDirectory.GetFiles(path+'\sounds');
  for st in folderslist do
    soundfolder.Items.Add(TPath.GetFileNameWithoutExtension(st));

  currentSchemeNum:=reg.ReadInteger('sounds','curSchemeNum',0);
  currentScheme:=reg.ReadString('sounds','curScheme','');
  playSoundB:=reg.ReadBool('sounds','playSound', false);

  playSound.Tag:=1;
  try
    if (playSoundB) and (currentScheme<>'') then
    playSound.State:=tssOn else playSound.State:=tssoff;
    finally
    playSound.Tag:=0;
  end;
  //reg.Destroy;
  soundfolder.ItemIndex:=currentSchemeNum;
  //sPath:=ExtractFileDir(Paramstr(0))+'\sounds\'+soundFolder.Items[currentSchemeNum]+'\';

end;

procedure TSoundFrame.SaveParams;
begin
   currentSchemeNum:=soundFolder.ItemIndex;
   currentScheme:=soundFolder.Text;
   reg.WriteInteger('sounds', 'curSchemeNum', currentSchemeNum);
   reg.WriteString('sounds', 'curScheme', currentScheme);
   if playSound.State=tssOn then
   reg.WriteBool('sounds','playSound',true) else
   reg.WriteBool('sounds','playSound',false);
end;

procedure TSoundFrame.SoundFolderCloseUp(Sender: TObject);
begin
  currentSchemeNum:=soundFolder.ItemIndex;
  currentScheme:=soundFolder.Items[soundFolder.ItemIndex];
end;

end.
