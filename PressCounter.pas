unit PressCounter;

interface

uses Graphics, key, sysutils;
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

TStatistic = class
  private
  fkeyMas: TKeyMas;
  fpressMap: array [LO..222] of word;
  f:file of Word;
  procedure SetEmpty(Value: boolean);
  function GetEmpty:boolean;
  function GetHigh:byte;
  function GetLow:byte;
  //procedure resetStatistic;
  public
  property IsEmpty: boolean read GetEmpty write SetEmpty;
  property firstItem: byte read getLow;
  property lastItem: byte read getHigh;
  procedure saveKey(item: byte; var MyKey: TKey);
  procedure ShowStatistic(item: byte;var MyKey: Tkey);
  procedure HideStatistic(item: byte; var MyKey: Tkey);
  procedure Init(mapPath: string);
  function total: word;
  constructor Create;
  destructor Destroy;
end;

implementation

{ TKeysSaver }

constructor TStatistic.Create;
begin
  fkeymas[10].MidLabel.posX:=-1; //sign of empty array
end;

destructor TStatistic.Destroy;
begin
  close(f);
end;

function TStatistic.GetEmpty:boolean;
begin
    if fkeymas[10].MidLabel.posx=-1 then result:=true else
    result:=false;
end;

function TStatistic.GetHigh: byte;
begin
    result:=High(fkeyMas);
end;

function TStatistic.GetLow: byte;
begin
    result:=low(FkeyMas);
end;

procedure TStatistic.HideStatistic(item: byte; var MyKey: Tkey);
begin
    with MyKey do
    begin
       color:=fKeymas[item].color;
       Uptext:=fKeymas[item].UpText;
       MiddleText:=fKeymas[item].MidLabel.Caption;
       MiddleFont:=fKeymas[item].MidLabel.Font;
       MidPosX:= fKeymas[item].MidLabel.PosX ;
       DownText:= fKeymas[item].DownText  ;
       HidePicture:=false;
       MyKey.active:=true;
    end;
end;

procedure TStatistic.Init(mapPath: string);
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

{
  procedure TStatistic.resetStatistic;
  begin
    for var i := Low(fkeyMas) to High(fkeymas) do
      fkeyMas[i].MidLabel.PosX:=-1;    //-1 the sign of empty cell
  end;
}

procedure TStatistic.saveKey(item: byte; var MyKey: TKey);
begin
    //resetStatistic;
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

procedure TStatistic.SetEmpty(value: boolean);
begin
    if value=true then
    fkeymas[10].MidLabel.posx:=-1 else
        fkeymas[10].MidLabel.posx:=0;
end;

procedure TStatistic.ShowStatistic(item: byte; var MyKey: Tkey);
var n:word;
begin
   MyKey.MiddleText:=inttostr(fPressMap[item]);
end;

function TStatistic.total: word;
var sum:word;
begin
  sum:=0;
  for var i := Low(fkeymas) to High(fkeymas) do
    sum:=sum+fpressmap[i];
  result:=sum;
end;

end.
