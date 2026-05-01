unit statisticsFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.FileCtrl, Vcl.WinXCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrame3 = class(TFrame)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ToggleSwitch: TToggleSwitch;
    fileslist: TFileListBox;
    ColorDialog1: TColorDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
