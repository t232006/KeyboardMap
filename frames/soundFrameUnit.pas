unit soundFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.WinXCtrls;

type
  TFrame2 = class(TFrame)
    Label1: TLabel;
    playSound: TToggleSwitch;
    SoundFolder: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
