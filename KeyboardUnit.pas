unit KeyboardUnit;

interface
uses Sharemem, SysUtils, windows, messages;
const WM_MYKEYPRESS = WM_USER+136;
      LO=8;
type
TKeyboardMap=array[LO..222] of word;

TKeyboard=class
   private
    Fmap: TKeyboardMap ;
    Flog, Ftext:string;
    Fletter:char;
    FisPressed:boolean;
    fPath: string;
    procedure SaveText(filename, sometext:string);
    procedure SaveMap(filename:string);
    procedure CleanMap(var temp:TKeyboardMap);
   public
     procedure addPress(ws:word; ls: longint);
     procedure save(newFile:boolean);
     property map:TKeyboardMap read Fmap;
     property isPressed:boolean read FisPressed;
     property letter:char read Fletter;
     property     log:string read Flog;
     property text:string read FText;
     constructor create;
end;

implementation

function IfThen(AValue: boolean; const ATrue:string; const AFalse:string):string;
begin
  if AValue then result:=ATrue else result:=AFalse;
end;

procedure TKeyboard.addPress(ws:word; ls: longint);
var ss:string;
    myHKL: HKL;
    KS: TKeyboardState;
    SC: integer;
begin
   //evenbit:=not(evenbit);
    myHKL:=GetKeyboardLayout(GetCurrentThreadID);
    SC:=MapVirtualKeyEx(WS, MAPVK_VK_TO_VSC, MyHKL);
    GetKeyboardState(KS);
    ToUnicodeEx(WS, SC, KS, @fletter, sizeof(fletter), 0, MyHKL);
   if byte(LS shr 24)<$80 then fisPressed:=true else fisPressed:=false;

   ss:=string.Format('Key = %s; Letter = %s; Scan = %s; %s; Time: %s; %s',
   [Chr(ws), fletter, IntToHex(ls), IfThen(isPressed,'Down',' Up '), TimeToStr(now), chr(13)]);
   //if evenbit then
   begin
     Flog:=Flog+ss;
     if isPressed and (ws <= high(fmap)) then
     begin
        inc(Fmap[ws]);
        //if ord(letter)<>0 then
        Ftext:=Ftext+fletter;
     end;
   end;
end;

constructor TKeyboard.create;
begin
  cleanMap(FMap);
  fPath:=ExtractFileDir( Paramstr(0));
  //_WM_MYKEYPRESS:=RegisterWindowMessage('{3998262C-C7A6-43AC-8392-B6293EE0488C}');
end;

procedure TKeyboard.savetext(filename, sometext:string);
var f:textfile;
begin
  assignfile(f, filename);
  try
    append(f);
  except
    rewrite(f);
  end;
  writeln(f, sometext);
  closefile(f);
end;

procedure TKeyboard.cleanMap(var temp:TKeyboardMap);
begin
  for var i := Low(temp) to High(temp) do
    temp[i]:=0;
end;

procedure TKeyboard.savemap(filename: string);
var f: file of word;
    tempMap:TKeyboardMap;
    i:word;
begin
    i:=LO;
    cleanmap(tempMap);
   assignfile(f, filename);
   if fileexists(filename) then
   begin
     reset(f);
     while not(eof(f)) do
     begin
      read(f, tempmap[i]);
      inc(i);
     end;
   end;
   rewrite(f);
   for I := Low(fmap) to High(fmap) do
     begin
       inc(fmap[i],tempmap[i]);
       Write(f, fmap[i]);
     end;
   closefile(f);

end;

procedure TKeyboard.save(newFile: boolean);
//=============================
    function GetLastFile:string;
    var sr: TSearchRec;
        fdPath: string;
        CurFileTime, LatestTime: TDateTime;
    begin
        fdPath:=fPath+'\maps\*map.b';

        if FindFirst(fdPath, faNormal,SR)=0 then
        begin
           result:=fPath+'\maps\'+SR.Name;
           LatestTime:=FileDateToDateTime(FileAge(result));
           repeat
              CurFileTime:=FileDateToDateTime(FileAge(fPath+'\maps\'+SR.Name));
              if CurFileTime < LatestTime then
                begin
                  result:=fPath+'\maps\'+sr.Name;
                  LatestTime:=CurFileTime;
                end;
           until FindNext(SR)<>0;
        end;

    end;
 //=============================
    function GetMapFilename: string;
    var curDateTime: TDateTime;
    begin
       curDateTime:=now;
       result:=FormatDateTime('dd-mm-yyyy-hh-nn-ss',curDateTime);
       result:=ExtractFileDir(Paramstr(0))+'\maps\'+result+'map.b';
    end;
 //=============================

var textname, logname, mapname: string;
begin
    textname:=fPath+'\text.txt' ;
    logname:=fPath+'\log.txt';
    if newFile then
      mapname:=GetMapFilename
    else
      mapname:=GetLastFile;
    savetext(logname,flog);
    savetext(textname, ftext);
    savemap(mapname);
end;


end.
