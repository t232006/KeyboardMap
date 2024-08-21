unit PressCounter;

interface

uses Graphics, key, sysutils, KeyboardUnit, MyAuxProc;
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

TStatType=(st_current, st_summary);

TkeyMas = array[LO..222] of TKeyImage;

TStatistics = class
  private
  fkeyMas: TKeyMas;
  fpressMap, fsummaryMap: TKeyboardMap;
  f:file of Word;
  n: LongWord;
  prevspeed: word;
  FisShowing: boolean;
  FMax, FMin: word;
  procedure GetMinMax(fmap: TKeyboardMap);
  procedure resetMap;
  procedure SetEmpty(Value: boolean);
  function GetEmpty:boolean;
  function GetHigh:byte;
  function GetLow:byte;
  //procedure resetStatistics;
  public
  {property avSpeed: word read fpressMap[AV] write fpressMap[AV];
  property recordSpeed: word read fpressMap[REC] write fpressMap[REC];}
  avSpeed, recordSpeed: word;
  property PressCount: longword read n;
  property IsShowing: boolean read fIsShowing;
  property IsEmpty: boolean read GetEmpty write SetEmpty;
  property firstItem: byte read getLow;
  property lastItem: byte read getHigh;
  procedure resetSpeed;
  procedure saveKey(item: byte; var MyKey: TKey);
  procedure ShowStatisticsByNum(statType: TstatType; item: byte; var MyKey: Tkey);
  procedure ShowStatisticsByGrad(statType: TstatType; item: byte; y1,y2:TColor; var MyKey: Tkey);
  procedure HideStatistics(item: byte; var MyKey: Tkey);
  procedure Init(mapPath: array of string); overload;    //files of statistics
  procedure Init(Amap:TKeyboardMap); overload;  //current
  procedure Init(Amap:TKeyboardMap; mapPath: string); overload; //current+last
  function total: word;
  function instantSpeed(tick:word): word;
  function averageSpeed(vn:word): longword;
  constructor Create(An:longword; APrevSpeed: word);
  destructor Destroy;
end;

implementation

{ TKeysSaver }

function TStatistics.averageSpeed(vn: word): longword;
begin
   inc(n);
   if n>1 then
      prevspeed := round(prevspeed * (n - 1) / n + vn / n)
   else
      prevspeed := vn;
   avSpeed:= prevspeed;
   result:= prevspeed;
end;

procedure TStatistics.GetMinMax(fmap: TKeyboardMap);
begin
  FMax:=fmap[LO]; FMin:=fmap[LO];
  for var i := Low(fmap) to High(fmap) do
    begin
      if (i=AV) or (i=REC) then continue;        //14 - speed!!!
      if fmap[i]>FMax then FMax:=fmap[i];
      if fmap[i]<FMin then FMin:=fmap[i];
    end;
end;
constructor TStatistics.Create(An:longword; APrevSpeed: word);
begin
  n := An;
  prevspeed := APrevSpeed;
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

procedure TStatistics.Init(Amap: TKeyboardMap; mapPath: string);
var i, j:byte; k:word;
begin
   fpressMap:=Amap;
   assignfile(f, mapPath);
   reset(f);
   //if True then

   i:=LO;
   //for j := Low(fPressMap) to High(fPressMap) do
    fsummaryMap:=fpressMap;

   recordSpeed:=fpressMap[REC];
   while not(eof(f)) do
   begin
     read(f, k);
     inc(fsummaryMap[i], k);
     inc(i);
   end;
   closefile(f);
   avSpeed:= fsummaryMap[AV] div 2;
   if fSummaryMap[REC]-recordSpeed>recordSpeed then recordSpeed:=fSummaryMap[REC]-recordSpeed;

end;

procedure TStatistics.Init(Amap: TKeyboardMap);
begin
  fpressMap:=Amap;
  avSpeed:=fPressMap[AV];
  recordSpeed:=fPressMap[REC];
end;

procedure TStatistics.Init(mapPath: array of string);
var i, j:byte; k, prerecord:word;
begin
  for j := Low(fsummaryMap) to High(fsummaryMap) do
    fsummaryMap[j]:=0;
  for j := Low(mapPath) to High(mapPath) do
    begin
      i:=LO;
      recordspeed:=0;
      assignfile(f,mapPath[j]);
       //--------recordSpeed------------
      reset(f);
      seek(f, REC-LO);
      read(f, prerecord);
      if prerecord>recordSpeed then recordSpeed:=prerecord;
       //--------recordSpeed------------
      reset(f);
      while not(eof(f)) do
      begin
        read(f, k);
        inc(fsummaryMap[i], k);
        inc(i);
      end;
      closefile(f);
    end;
    avSpeed:=fSummaryMap[AV] div (High(mapPath)+1);
    //fsummaryMap[AV]:=fSummaryMap[AV] div High(mapPath); //average


end;

function TStatistics.instantSpeed(tick: word): word;
begin
  if tick>0 then result:=6000 div tick;
end;

procedure TStatistics.resetMap;
begin

end;

procedure TStatistics.resetSpeed;
begin
  n:=0;
  prevspeed:=0;
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
    //Fkeymas[10].MidLabel.posx:=0;  //not empty
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
      MiddleText:='';
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

procedure TStatistics.ShowStatisticsByGrad(statType: TstatType; item: byte; y1, y2:TColor; var MyKey: Tkey);
begin
   fIsShowing:=true;

   if statType=st_current then
   begin
      GetMinMax(fpressMap);
      MyKey.Color:=gradient(y1,y2, fmin, fmax, fpressMap[item]);
   end
   else
   begin
      GetMinMax(fsummaryMap);
      MyKey.Color:=gradient(y1,y2, fmin, fmax, fsummaryMap[item]);
   end;
end;

procedure TStatistics.ShowStatisticsByNum(statType: TstatType; item: byte; var MyKey: Tkey);
begin
   fIsShowing:=true;
   if statType=st_current then
   MyKey.MiddleText:=inttostr(fPressMap[item]) else
   MyKey.MiddleText:=inttostr(fSummaryMap[item])
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
