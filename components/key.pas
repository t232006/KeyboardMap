unit Key;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, windows,
  Graphics, messages, stdctrls, strUtils;

type
  TKeyType = (ktFunc, ktScroll, ktNum, ktTrippleLetters, ktExNum, ktLetters, ktSticked, ktOthers);

  TMyLabel = record
    Caption: string;
    Font: TFont;
    PosX: Integer;
  end;

  TPicturePos = class(TPersistent)
    private
      ALeft: word;
      ATop: word;
      ARight: word;
      ABottom: word;
      FOnChange: TNotifyEvent;
      procedure SetBottom(const Value: word);
      procedure SetLeft(const Value: word);
      procedure SetRight(const Value: word);
      procedure SetTop(const Value: word);
    public
      property OnChange: TNotifyEvent read FOnChange write FOnChange;
    published
      property Left: word read ALeft write SetLeft;
      property Top: word read ATop write SetTop;
      property Right: word read ARight write SetRight;
      property Bottom: word read ABottom write SetBottom;
  end;


  TKey = class(TGraphicControl)
  private
    FKeyType: TKeyType;
    hover: boolean;
    FPressed: boolean;
    FRound: byte;
    FPicture: TBitmap;
    FPicturePos: TPicturePos;

    FUpLabel: TMyLabel;
    FDownLabel: TMyLabel;
    FMidLabel: TMyLabel;
    FSaveUpCol: Tcolor;
    FSaveDoCol: Tcolor;
    FSaveMiCol: Tcolor;
    FPressColor: Tcolor;
    FHoverColor: Tcolor;
    FColor: TColor;
    FCurrentColor: TColor;
    FInvertPicture: TBitmap;
    FScanCodes: TStringList;
    FPictureColor: TColor;
    FOnColorChange: TNotifyEvent;
    //FPictureRect: TRect;
    FPictureColorEnable: boolean;
    procedure MakeBlack;
    procedure ReturnColors;
    procedure DrawPicture;
    procedure DrawText;
    procedure SaveFontColors;
    procedure SetPicture(Value: TBitmap);
    procedure Paint; override;
    function ContrastColor(AColor: TColor): TColor;
    function GetText(const Index: Integer): string;
    procedure SetText(const Index: Integer; const Value: string);
    function GetFont(const Index: Integer): TFont;
    procedure SetFont(const Index: Integer; const Value: TFont);
    function GetPosX(const Index: Integer): Integer;
    procedure SetPosX(const Index: Integer; const Value: Integer);
    procedure SetColor(const Index: Integer; const Value: TColor);
    procedure FontChange(Sender: TObject);
    procedure SetRound(const Value: byte);
    function SetPictureRect: TRect;
    procedure SetPicturePos(const Value: TPicturePos);
    procedure SetScanCodes(const Value: TStringList);
    procedure SetPressed(const Value: Boolean);
    procedure SetPictureColor(Value: TColor);
    property PictureRect: TRect read SetPictureRect;
    property OnColorChange: TNotifyEvent read FOnColorChange write FOnColorChange;
  protected
    procedure MouseEnter(var Msg: TMessage); message CM_MOUSEENTER ;
    procedure MouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
    procedure MouseDown(var Msg: TMessage); overload; message WM_LBUTTONDOWN;
    procedure MouseUp(var Msg: TMessage); overload; message WM_LBUTTONUP;

  public

    SaveMiddleText: string;
    HidePicture: boolean;
    active: boolean;
    constructor Create(AOwner: TComponent);  override;
    destructor Destroy; override;
    property Pressed: Boolean read FPressed write SetPressed;
    procedure DoConstrast;
    procedure SetNewFont(curFontSize: byte; const newFont: TFont);


  published
    property OnClick;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseDown;
    property OnMouseUp;
    property ScanCodes: TStringList read FScanCodes write SetScanCodes;
    property Picture: TBitmap read FPicture write SetPicture;
    property PicturePos: TPicturePos read FPicturePos write SetPicturePos stored true;

    property UpText: string index 0 read GetText write SetText;
    property DownText: string index 1 read GetText  write SetText;
    property MiddleText: string index 2 read GetText write SetText;
    property UpFont: TFont index 0 read GetFont write SetFont;
    property DownFont: TFont index 1 read GetFont write SetFont;
    property MiddleFont: TFont index 2 read GetFont write SetFont;
    property Color: TColor index 2 read FColor write SetColor;
    property PressColor: TColor read FPressColor write FPressColor;
    property HoverColor: TColor read FHoverColor write FHoverColor;
    property CurrentColor: TColor index 1 write SetColor;
    property Round: byte read FRound write SetRound default 4;
    property KeyType: TKeyType read FKeyType write FKeyType default ktOthers;
    property UpPosX: Integer index 0 read GetPosX write SetPosX default 5;
    property DownPosX: Integer index 1 read GetPosX write SetPosX;
    property MidPosX: Integer index 2 read GetPosX write SetPosX;
    property PictureColor: TColor read FPictureColor write SetPictureColor;
    property PictureColorOn: boolean read FPictureColorEnable write FPictureColorEnable default false;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TKey]);
end;

{ TKey }

function TKey.ContrastColor(AColor: TColor): TColor;
const TolerSq = 16 * 16;
begin
 if Sqr(GetRValue(AColor) - $80) + Sqr(GetGValue(AColor) - $80)
  + Sqr(GetBValue(AColor) - $80) < TolerSq then
  Result := (AColor + $7F7F7F) and $FFFFFF
 else
  Result := AColor xor $FFFFFF;
end;

constructor TKey.Create(AOwner: TComponent);
begin
  inherited;
  FInvertPicture:=TBitmap.Create;
  hover:=false;
  active:=true;
  hidePicture:=false;
  Fpressed:=false;
  FPicture:=TBitmap.Create;
  FUpLabel.Font:=TFont.Create;
  FDownLabel.Font:=TFont.Create;
  FMidLabel.Font:=TFont.Create;
  FScanCodes:=TStringList.Create;
  height:=42; width:=42;
  Fround:=4;
  FPicturePos:=TPicturePos.Create;
  FPicturePos.Left:=Fround; FPicturePos.Top:=FRound;
  FPicturePos.Right:=Width-Fround; FPicturePos.Bottom:=Height-FRound;
  FColor:= RGB(49,48,49);
  FPressColor:=RGB(214,186,140);
  FHoverColor:=clWhite;
  CurrentColor:=FColor;
  PictureColor:=ClWhite;
  //FMidLabel.Caption:='Esc';
  with FUpLabel do
  begin
    Font.Size:=14; Font.Color:=clWhite; Font.Style:=[fsItalic];
    PosX:=5;
  end;
  with FMidLabel do
  begin
    Font.Size:=14; Font.Color:=clWhite; Font.Style:=[fsItalic];
    PosX:=5;
  end;
  with FDownLabel do
  begin
    Font.Size:=12; Font.Color:=clRed; Font.Style:=[];
    PosX:= self.Width-font.Size-5;
  end;
  //FMidLabel.Font:=FUpLabel.Font;
  FKeyType:=ktLetters;

  FUpLabel.Font.OnChange := Self.FontChange;
  FMidLabel.Font.OnChange := Self.FontChange;
  FDownLabel.Font.OnChange := Self.FontChange;
  FPicturePos.OnChange := Self.FontChange;
end;

destructor TKey.Destroy;
begin
  FPicture.Destroy;
  FPicturePos.Destroy;
  FInvertPicture.Destroy;
  FScanCodes.Destroy;
  inherited;
end;

procedure TKey.DoConstrast;
begin
  UpFont.Color:=ContrastColor(Color);
  MiddleFont.Color:=ContrastColor(Color);
  DownFont.Color:=ContrastColor(Color);
end;

procedure TKey.DrawPicture;
//var FInvertPicture: TBitmap;
begin
if (FPicture<>nil) and (FPicture.Height>0) then
  begin
    //canvas.copyrect(canvas.ClipRect, FPicture.Canvas, FPicture.Canvas.ClipRect);
    if hover then
    begin
         FInvertPicture:=TBitmap.Create;
         with FInvertPicture.Canvas do
         begin
           FInvertPicture.width:=FPicture.Width;
           FInvertPicture.height:=FPicture.Height;
           CopyMode:=cmNotSrcCopy;
           CopyRect(ClipRect, FPicture.Canvas, FPicture.Canvas.ClipRect);
         end;
            canvas.CopyRect(PictureRect,
                            FInvertPicture.Canvas,
                            FPicture.Canvas.ClipRect);
      if (FCurrentColor=FPressColor) or (FCurrentColor=FHoverColor) then
        canvas.FloodFill(PicturePos.ALeft, PicturePos.ATop, clWhite, fsSurface);
    end
      else
    canvas.BrushCopy(PictureRect,
                     FPicture,
                     FPicture.Canvas.ClipRect,
                     FPicture.Canvas.Pixels[1,1]);
    //SetPictureColor(FPictureColor);
  end;
end;

procedure TKey.DrawText;
var midpos:ShortInt; TextSize: TSize;
    s, s1: string; p:integer;
begin
    with Canvas do
    begin

      font:=FMidLabel.Font;
      TextSize:=TextExtent(FMidLabel.Caption);
      if FMidLabel.Caption<>'' then
      if (keyType<>ktNum) and (TextSize.cx<Width) then
          begin
            midPos:=(height div 2) - (font.Size);
            TextOut(FMidLabel.PosX, midPos, FMidLabel.Caption);
          end
      else
          begin
            midPos:=((height div 2) + (2 * font.Height));
            if midPos<0 then midPos:=0;

            s:=FMidLabel.Caption;
            p:= pos(' ',s);
            s1:=copy(s,1,p-1);
            delete(s,1,p);
            TextOut(FMidLabel.PosX, midPos+1, trim(s1));
            midPos:=(height div 2);
            TextOut(FMidLabel.PosX, midPos-1, trim(s));
          end;
      if FUpLabel.Caption<>'' then
      begin
        font:=FupLabel.Font;
        TextOut(FUpLabel.PosX, 1, FUpLabel.Caption);
      end;

      if FDownLabel.Caption<>'' then
      begin
        font:=FDownLabel.Font;
        TextOut(FDownLabel.PosX, Height-font.Size-10, FDownLabel.Caption);
      end;
    end;
end;

procedure TKey.FontChange(Sender: TObject);
begin
   Paint;
end;

procedure TKey.SetText(const Index: Integer; const Value: string);
begin
   case index of
      0:   //up
      begin
        FUpLabel.Caption:=Value;
      end;
      1:    //down
      begin
         FDownLabel.Caption:=Value;
      end;
      2:
      begin
         FMidLabel.Caption:=Value;
      end;
    end;
    Paint;//(Color);
end;

function TKey.GetFont(const Index: Integer): TFont;
begin
   case Index of
  0: result:=FUpLabel.Font;
  1: result:= FDownLabel.Font;
  2: result:=FMidLabel.Font;
  end;
end;

function TKey.GetPosX(const Index: Integer): Integer;
begin
   case Index of
  0: result:=FupLabel.PosX;
  1: result:=FDownLabel.PosX;
  2: result:=FMidLabel.PosX;
  end;
end;

function TKey.GetText(const Index: Integer): string;
begin
   case index of
   0: result:=FUpLabel.Caption;
   1: result:= FDownLabel.Caption;
   2: result:=FMidLabel.Caption;
   end;
end;

procedure TKey.MouseDown(var Msg: TMessage);
begin
   if active then
   begin
     inherited;
     if KeyType<>ktSticked then Pressed:=true else
     begin
       pressed:=not(pressed); ReturnColors;
       if pressed=false then
        begin
         SaveFontColors;
         MakeBlack;
        end;
     end;
   end;
end;

procedure TKey.MouseUp(var Msg: TMessage);
begin
   if active then
   begin
     inherited;
     if keytype<>ktSticked then pressed:=false
   end;


end;

procedure TKey.MouseEnter(var Msg: TMessage);
begin
   if active then
   begin
     inherited;
      SaveFontColors;
     if not(Pressed) then
     begin
       hover:=true;
       MakeBlack;
     end;
   end;

end;

procedure TKey.MouseLeave(var Msg: TMessage);
begin
  if active then
   begin
    inherited; hover:=false;
    if not(Pressed) then
     begin

       ReturnColors;
       CurrentColor:=FColor;
       Paint;
     end
   end;
end;

procedure TKey.Paint;
begin
    canvas.RoundRect(0,0,width,height,FRound,FRound);

    if Assigned(FPicture) and HidePicture=false then
    DrawPicture;
    DrawText;
end;

procedure TKey.ReturnColors;
begin
   FUpLabel.Font.Color := FSaveUpCol;
   FDownLabel.Font.Color := FSaveDoCol;
   FMidLabel.Font.Color := FSaveMiCol;
end;

procedure TKey.SaveFontColors;
begin
    FSaveDoCol:=FDownLabel.Font.Color;
     FSaveMiCol:=FMidLabel.Font.Color;
     FSaveUpCol:=FUpLabel.Font.Color;
end;

procedure TKey.SetColor(const Index: Integer; const Value: TColor);
begin
    case Index of
    1: FCurrentColor := Value;
    2: FColor:=value;
    end;
    if Assigned(FOnColorChange) then OnColorChange(self);

    canvas.Brush.Color:=value;
    repaint;
end;

procedure TKey.SetFont(const Index: Integer; const Value: TFont);
begin
  case Index of
     0:
     begin
        FUpLabel.Font.Assign(Value);
        FSaveUpCol:=Value.Color;
     end;
     1:
     begin
        FDownLabel.Font.Assign(Value);
        FSaveDoCol:=Value.Color;
     end;
     2:
     begin
       FMidLabel.Font.Assign(Value);
       FSaveMiCol:=Value.Color;
     end;
   end;
   Paint;//(Color);
end;

procedure TKey.SetNewFont(curFontSize: byte; const newFont: TFont);
var diff:shortInt; buffer:byte;
begin
  buffer:=newFont.Size;
  diff:=curFontSize-UpFont.Size; Upfont:=newFont; Upfont.Size:=upfont.Size-diff; newFont.Size:=buffer;
  diff:=curFontSize-MiddleFont.Size; Middlefont:=newFont; Middlefont.Size:=Middlefont.Size-diff; newFont.Size:=buffer;
  diff:=curFontSize-downFont.Size; downfont:=newFont; downfont.Size:=downfont.Size-diff; newFont.Size:=buffer;
end;

procedure TKey.SetPicture(Value: TBitmap);
begin
   FPicture.Assign(Value);
   invalidate;
end;

procedure TKey.SetPictureColor(Value: TColor);
var i,j:word;
begin
    if FPictureColorEnable then
    begin
      if Value=clBlack then value:=RGB(1,1,1);

      with FPicture.Canvas do
      begin
      for i := 0 to FPicture.Width do
      for j := 0 to FPicture.Height do
        if Pixels[i,j]=clBlack then Continue else
        Pixels[i,j]:=Value;

      //Brush.Color:=ResColor;
      //FloodFill(i,j, clWhite, fsSurface);
      end;
      DrawPicture;
      FPictureColor := Value;
    end;

end;

procedure TKey.SetPicturePos(const Value: TPicturePos);
begin
  if Assigned(Value) then
  begin
    FreeAndNil(FPicturePos);
    FPicturePos:=Value;
  end;
end;

function TKey.SetPictureRect: TRect;
begin
   result := Rect(FPicturePos.Left, FPicturePos.Top, FPicturePos.Right, FPicturePos.Bottom);
end;

procedure TKey.SetPosX(const Index, Value: Integer);
begin
    case Index of
      0: FUpLabel.PosX:=Value;
      1: FDownLabel.PosX:=Value;
      2: FMidLabel.PosX:=Value;
    end;
    Paint;
end;

procedure TKey.SetPressed(const Value: Boolean);
begin
  if FPressed<>Value then
  begin
    FPressed := Value;
    if FPressed=true then
    CurrentColor:=FPressColor
    else if hover then MakeBlack else CurrentColor:=Color;

    Paint;
  end;
end;

procedure TKey.SetRound(const Value: byte);
begin
   FRound:=Value;
   invalidate;
end;

procedure TKey.SetScanCodes(const Value: TStringList);
begin
  FScanCodes.Assign(Value);
end;

procedure TKey.MakeBlack;
begin
   CurrentColor:=FHoverColor;
   FUpLabel.Font.Color:=clBlack;
   FDownLabel.Font.Color:=clBlack;
   FMidLabel.Font.Color:=clBlack;
   Paint;//(ClWhite);
end;

{ TPicturePos }

procedure TPicturePos.SetBottom(const Value: word);
begin
  ABottom:=Value;
  if Assigned(FOnChange) then OnChange(self);

end;

procedure TPicturePos.SetLeft(const Value: word);
begin
   ALeft:=Value;
   if Assigned(FOnChange) then OnChange(self);
end;

procedure TPicturePos.SetRight(const Value: word);
begin
   ARight:=Value;
   if Assigned(FOnChange) then OnChange(self);
end;

procedure TPicturePos.SetTop(const Value: word);
begin
  ATop:=Value;
   if Assigned(FOnChange) then OnChange(self);
end;

end.

