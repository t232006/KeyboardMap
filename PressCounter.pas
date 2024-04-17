unit PressCounter;

interface

uses Graphics, key, sysutils, KeyboardUnit;
const LO=8; //FIRST ELEMENT
type
TMyLabel = record
    Caption: string;
    Font: TFont;
    PosX: Integer;
  end;


TKeyImage=record
  color: TColor;
  //UpLabel: TMyLabel;
  UpText, DownText: string;
  MidLabel: TMyLabel;
  //DownLabel: TMyLabel;
end;

TkeyMas = array[LO..222] of TKeyImage;

TStatistics = class
  private
  fkeyMas: TKeyMas;
  fpressMap: TKeyboardMap;
  f:file of Word;
  n: LongWord;
  prevspeed: word;
  FisShowing: boolean;
  procedure SetEmpty(Value: boolean);
  function GetEmpty:boolean;
  function GetHigh:byte;
  function GetLow:byte;
  //procedure resetStatistics;
  public
  property IsShowing: boolean read fIsShowing;
  property IsEmpty: boolean read GetEmpty write SetEmpty;
  property firstItem: byte read getLow;
  property lastItem: byte read getHigh;
  procedure saveKey(item: byte; var MyKey: TKey);
  procedure ShowStatistics(item: byte; var MyKey: Tkey);
  procedure HideStatistics(item: byte; var MyKey: Tkey);
  procedure Init(mapPath: string); overload;
  procedure Init(Amap:TKeyboardMap); overload;
  function total: word;
  function instantSpeed(tick:word): word;
  function averageSpeed(vn:word): longword;
  constructor Create;
  destructor Destroy;
end;

implementation

{ TKeysSaver }

function TStatistics.averageSpeed(vn: word): longword;
begin
   inc(n);
   if n>1 then
      prevspeed := round(prevspeed * (n-1) / n+vn / n)
   else
      prevspeed := vn;
   result:= prevspeed;
end;

constructor TStatistics.Create;
begin
  n := 0;
  prevspeed := 0;
  fkeymas[10].MidLabel.posX:=-1; //sign of empty array
end;

destructor TStatistics.Destroy;
begin
  close(f);
end;

function TStatistics.GetEmpty:boolean;
begin
    if fkeymas[10].MidLabel.posx=-1 then result:=true else
    result:=false;
end;

function TStatistics.GetHigh: byte;
begin
    result:=High(fkeyMas);
end;

function TStatistics.GetLow: byte;
begin
    result:=low(FkeyMas);
end;

procedure TStatistics.HideStatistics(item: byte; var MyKey: Tkey);
begin
    fisShowing:=false;
    with MyKey do
    begin
      HidePicture:=false;
       color:=fKeymas[item].color;
       Uptext:=fKeymas[item].UpText;
       MiddleText:=fKeymas[item].MidLabel.Caption;
       MiddleFont:=fKeymas[item].MidLabel.Font;
       MidPosX:= fKeymas[item].MidLabel.PosX ;
       DownText:= fKeymas[item].DownText  ;

       MyKey.active:=true;
    end;
end;

procedure TStatistics.Init(Amap: TKeyboardMap);
begin
  fpressMap:=Amap;
end;

procedure TStatistics.Init(mapPath: string);
var i:byte;
begin
  i:=LO;
  assignfile(f,mapPath);
  reset(f);
  while not(eof(f)) do
  begin
    read(f, fpressMap[i]);
    inc(i);
  end;
  closefile(f);

end;

function TStatistics.instantSpeed(tick: word): word;
begin
  if tick>0 then result:=6000 div tick;
end;

{
  procedure TStatistics.resetStatistics;
  begin
    for var i := Low(fkeyMas) to High(fkeymas) do
      fkeyMas[i].MidLabel.PosX:=-1;    //-1 the sign of empty cell
  end;
}

procedure TStatistics.saveKey(item: byte; var MyKey: TKey);
begin
    //resetStatistics;
    Fkeymas[10].MidLabel.posx:=0;  //not empty
    with MyKey do
    begin
      FKeymas[item].color:=Color;
      FKeymas[item].UpText:=UpText;
      //UpLabel.Font:=MyKey.UpFont;
      //UpLabel.PosX:=MyKey.UpPosX;
      FKeymas[item].MidLabel.Caption:=MiddleText;
      FKeymas[item].MidLabel.Font:=MiddleFont;
      FKeymas[item].MidLabel.PosX:=MidPosX;
      FKeymas[item].DownText:=DownText;
      //DownLabel.Font:=MyKey.DownFont;
      //DownLabel.PosX:=MyKey.DownPosX;
      UpText:='';
      DownText:='';
      HidePicture:=true;
      Mykey.active:=false;
    end;
end;

procedure TStatistics.SetEmpty(value: boolean);
begin
    if value=true then
    fkeymas[10].MidLabel.posx:=-1 else
        fkeymas[10].MidLabel.posx:=0;
end;

procedure TStatistics.ShowStatistics(item: byte; var MyKey: Tkey);
begin
   fIsShowing:=true;
   MyKey.MiddleText:=inttostr(fPressMap[item]);
end;

function TStatistics.total: word;
var sum:word;
begin
  sum:=0;
  for var i := Low(fkeymas) to High(fkeymas) do
    sum:=sum+fpressmap[i];
  result:=sum;
end;

end.
