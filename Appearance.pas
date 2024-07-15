unit Appearance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TColScheme = (Dark, Light, Classic);
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBColScheme: TComboBoxEx;
    CBKeyRad: TComboBox;
    Button1: TButton;
    FontDialog1: TFontDialog;
    OKButton: TButton;
    CancelButton: TButton;
    ApplayButton: TButton;
    Label4: TLabel;
    Label5: TLabel;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure CBColSchemeDropDown(Sender: TObject);
    procedure CBKeyRadDropDown(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ApplayButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    ColScheme: TColScheme;
    KeyRadius: byte;
    KeyFont1, KeyFont2: TFont;
    CommonTransp, KeyboardTransp: byte;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses BackgroundUnit;

procedure TForm1.ApplayButtonClick(Sender: TObject);
begin
   //BackForm.activeForm.Appearance(ColScheme,KeyRadius,KeyFont1, KeyFont2,CommonTransp, KeyboardTransp);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if FontDialog1.Execute then KeyFont1:=FontDialog1.Font;

end;

procedure TForm1.CancelButtonClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if FontDialog1.Execute then KeyFont2:=FontDialog1.Font;
end;

procedure TForm1.CBColSchemeDropDown(Sender: TObject);
begin
  case CBColScheme.ItemIndex of
  0: ColScheme:=Dark;
  1: ColScheme:=Light;
  2: ColScheme:=Classic;
  end;
end;

procedure TForm1.CBKeyRadDropDown(Sender: TObject);
begin
  KeyRadius:=CBKeyRad.ItemHeight;
end;

procedure TForm1.OKButtonClick(Sender: TObject);
begin
//BackForm.activeForm.Appearance(ColScheme,KeyRadius,KeyFont1, KeyFont2,CommonTransp, KeyboardTransp);
Close;
end;

end.

