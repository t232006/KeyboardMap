unit appearanceFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrame4 = class(TFrame)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CBColScheme: TComboBoxEx;
    CBKeyRad: TComboBox;
    Button1: TButton;
    OKButton: TButton;
    CancelButton: TButton;
    ApplayButton: TButton;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Button2: TButton;
    FontDialog1: TFontDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
