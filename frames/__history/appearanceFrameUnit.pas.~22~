unit appearanceFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, interfaceMyFrame, BackgroundUnit, ParentUnit, Registry;

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
    commonTrack: TTrackBar;
    keyboardTrack: TTrackBar;
    Button2: TButton;
    FontDialog1: TFontDialog;
    Label6: TLabel;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Shape4: TShape;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CBColSchemeChange(Sender: TObject);
  private
    //ColScheme: TColScheme;
    //KeyRadius: byte;
    KeyFont1, KeyFont2: TFont;
    //ButtonColor, ClickColor: TColor;
    //CommonTransp, KeyboardTransp: byte;
    //procedure SaveFontToRegistry(key: string; f: Tfont);
  public
    reg: TRegIniFile;
    procedure Applay;
    procedure LoadParams;
    procedure SaveParams;
  end;

implementation

{$R *.dfm}

procedure TsettingFrame.Applay;
var ColScheme: TColScheme;
    KeyRadius: byte;
    //KeyFont1, KeyFont2: TFont;
    //ButtonColor, ClickColor: TColor;
    CommonTransp, KeyboardTransp: byte;
begin
  case CBColScheme.ItemIndex of
  0: begin ColScheme:=Dark; shape1.Brush.Color:=RGB(49,49,49); end;
  1: begin ColScheme:=Light; shape1.Brush.Color:=CLWhite; end;
  2: ColScheme:=Classic;
  3: ColScheme:=Custom;
  end;
  KeyRadius:=CBKeyRad.ItemIndex;
  CommonTransp:=commonTrack.Position;
  KeyboardTransp:=keyboardTrack.Position;
  BackForm.activeForm.Appearance(ColScheme, KeyRadius, shape4.Brush.Color,
  KeyFont1, KeyFont2,
  Shape1.Brush.Color, Shape2.Brush.Color, Shape3.Brush.Color,
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
  0: begin
    shape4.Brush.Color:=RGB(32,32,32);
    shape1.Brush.Color:=RGB(49,49,49);
    shape3.Brush.Color:=$00FFFFFF;
  end;
  1: begin
    shape4.Brush.Color:=$00FFFFFF;
    shape1.Brush.Color:=$00FFFFFF;
    shape3.Brush.Color:=RGB(49,49,49);
  end;
  2: begin
    shape4.Brush.Color:=RGB(239,232,203);
    shape1.Brush.Color:=RGB(234,226,217);
    shape3.Brush.Color:=RGB(49,49,49);
  end;

  end;
end;

procedure TsettingFrame.SaveParams;
procedure SaveFontToRegistry(key: string; f: Tfont);
var FS: TFontStyles; FontStyleInt: byte;
begin
    fs:=font.Style;
    Move(FS, FontStyleInt, 1);
   reg.WriteString(key, 'fontName', f.Name);
   reg.WriteInteger(key, 'fontColor', f.Color);
   reg.WriteInteger(key, 'fontCharSet', f.Charset);
   reg.WriteInteger(key, 'fontSize', f.Size);
   reg.WriteInteger(key, 'fontStyle', fontStyleint)

end;
begin
  reg.WriteInteger('appearance','Scheme',CBColScheme.ItemIndex);
  reg.WriteInteger('appearance','Round',CBKeyRad.ItemIndex);
  if BackForm.activeForm.ClassName='TKeyboardFormLarge' then
  begin
    if keyfont1<>nil then SaveFonttoRegistry('font1', keyfont1);
    if keyfont2<>nil then SaveFonttoRegistry('font2', keyfont2);
  end else
  begin
    if keyfont1<>nil then SaveFonttoRegistry('font3', keyfont1);
    if keyfont2<>nil then SaveFonttoRegistry('font4', keyfont2);
  end;
  reg.WriteInteger('appearance','ButtonColor',Shape1.Brush.Color);
  reg.WriteInteger('appearance','PressColor', Shape2.Brush.Color);
  reg.WriteInteger('appearance','HoverColor',Shape3.Brush.Color);
  reg.WriteInteger('appearance','CommonTransp',Commontrack.position);
  reg.WriteInteger('appearance','KeyboardTransp', keyboardTrack.Position);
end;


{$REGION 'MyRegion'}
  procedure TsettingFrame.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  begin
    if colorDialog1.Execute then (sender as Tshape).Brush.Color:=colorDialog1.Color;
    CBColScheme.ItemIndex:=3;
  end;
  
  procedure TsettingFrame.Shape2MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  begin
    if colorDialog1.Execute then (Sender as TShape).Brush.Color:=colorDialog1.Color;
  end;

{$ENDREGION}

procedure TsettingFrame.LoadParams;
function LoadFontFromRegistry(key: string): Tfont;
var t:TFont;  FS: TfontStyles; fontStyleInt: byte;
begin
   t:=tfont.Create;
   t.Name:=reg.ReadString(key, 'fontName', 'Segoe UI');
   t.Color:=reg.ReadInteger(key,'fontColor', $00FFFFFF);
   t.Charset:=reg.ReadInteger(key, 'fontCharSet', 1);
   t.Size:=reg.ReadInteger(key, 'fontSize', 8);
   fontStyleInt:=reg.ReadInteger(key, 'fontStyle', 0);
   Move(fontStyleInt, FS, 1);
   t.Style:=FS;
   result:=t;
end;
begin
  CBColScheme.ItemIndex:=reg.ReadInteger('appearance','Scheme',3);
  CBKeyRad.ItemIndex:=reg.ReadInteger('appearance','Round',3);
  if BackForm.activeForm.ClassName='TKeyboardFormLarge' then
  begin
    keyfont1:=LoadFontFromRegistry('font1');
    keyfont2:=loadFontFromRegistry('font2');
  end else
  begin
    keyfont1:=LoadFontFromRegistry('font3');
    keyfont2:=loadFontFromRegistry('font4');
  end;
  Shape1.Brush.Color:=reg.ReadInteger('appearance', 'ButtonColor', $00313031);
  Shape2.Brush.Color:=reg.ReadInteger('appearance', 'PressColor', $008CBAD6);
  Shape3.Brush.Color:=reg.ReadInteger('appearance', 'HoverColor', $00FFFFFF);
  CommonTrack.Position:=reg.ReadInteger('appearance', 'CommonTransp', 0);
  keyboardTrack.Position:=reg.ReadInteger('appearance', 'KeyboardTransp', 0);

end;

end.
