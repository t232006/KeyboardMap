unit appearanceFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, interfaceMyFrame, BackgroundUnit, ParentUnit;

type

  TsettingFrame = class(TFrame, IMyFrame)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CBColScheme: TComboBoxEx;
    CBKeyRad: TComboBox;
    Button1: TButton;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Button2: TButton;
    FontDialog1: TFontDialog;
    Label6: TLabel;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Shape2: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBColSchemeChange(Sender: TObject);
    procedure CBKeyRadChange(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    ColScheme: TColScheme;
    KeyRadius: byte;
    KeyFont1, KeyFont2: TFont;
    //ButtonColor, ClickColor: TColor;
    CommonTransp, KeyboardTransp: byte;
  public
    procedure Applay;
  end;

implementation

{$R *.dfm}

procedure TsettingFrame.Applay;
begin
  BackForm.activeForm.Appearance(ColScheme, KeyRadius,
  KeyFont1, KeyFont2,
  Shape1.Brush.Color, Shape2.Brush.Color,
  CommonTransp, KeyboardTransp);
end;

procedure TsettingFrame.Button1Click(Sender: TObject);
begin
  if FontDialog1.Execute then KeyFont1:=FontDialog1.Font;
end;

procedure TsettingFrame.Button2Click(Sender: TObject);
begin
  if FontDialog1.Execute then KeyFont2:=FontDialog1.Font;
end;

procedure TsettingFrame.CBColSchemeChange(Sender: TObject);
begin
case CBColScheme.ItemIndex of
  0: begin ColScheme:=Dark; shape1.Brush.Color:=RGB(49,49,49); end;
  1: begin ColScheme:=Light; shape1.Brush.Color:=CLWhite; end;
  2: ColScheme:=Classic;
  3: ColScheme:=Custom;
  end;
end;

procedure TsettingFrame.CBKeyRadChange(Sender: TObject);
begin
KeyRadius:=CBKeyRad.ItemHeight;
end;

procedure TsettingFrame.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if colorDialog1.Execute then shape1.Brush.Color:=colorDialog1.Color;
  CBColScheme.ItemIndex:=3;
end;

procedure TsettingFrame.Shape2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if colorDialog1.Execute then shape2.Brush.Color:=colorDialog1.Color;
end;

end.
