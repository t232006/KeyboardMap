unit KeyboardUnit;

interface
uses Sharemem, SysUtils, windows, messages, inifiles,
    System.Generics.Collections;
const WM_MYKEYPRESS = WM_USER+$0400+10;
      WM_CHANGELANG = WM_USER+$115+15;
      LO=8;
      AV=14;
      REC=17;
type
TKeyboardMap=array[LO..222] of word;
TplayClick = procedure (button: pchar);

TKeyboard=class
   private
    Fmap: TKeyboardMap ;
    Flog, Ftext:string;
    Fletter:char;
    FButton: string;
    FisPressed:boolean;
    FVirtCode: word;
    LibHandle: LongWord;
    playClick: TplayClick;
    fPath: string;
    FScans: TDictionary<string, string>;
    procedure SaveText(filename, sometext:string);
    procedure SaveMap(filename:string);
    procedure CleanMap(var temp:TKeyboardMap);
    procedure LoadScans;
   public
     //const CURRENTMAP='\maps\CurrentMap.h';
     function CURRENTMAP: string;
     procedure addPress(ws:word; ls: longint; langcode:HKL; playsound: boolean);
     procedure save(newFile:boolean; avSpeed, recSpeed:word);
     //function GetLastFile:string;
     procedure SetSoundLibrary(soundLib: string);
     property VirtCode: word read FVirtCode;
     property map:TKeyboardMap read Fmap;
     property isPressed:boolean read FisPressed;
     property button:string read FButton;
     property letter:char read Fletter;
     property     log:string read Flog;
     property text:string read FText;
     constructor create(soundLib: string);
     destructor destroy;
end;
//procedure playClick(button: pchar); stdcall; external 'Sounds\cherrymxBlack.dll';

implementation

destructor TKeyboard.destroy;
begin
    FreeLibrary(libhandle);
end;

{$REGION 'GetLastFile'}
  {function TKeyboard.GetLastFile:string;
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
                if CurFileTime > LatestTime then
                  begin
                    result:=fPath+'\maps\'+sr.Name;
                    LatestTime:=CurFileTime;
                  end;
             until FindNext(SR)<>0;
          end;

      end;    }
{$ENDREGION}


function IfThen(AValue: boolean; const ATrue:string; const AFalse:string):string;
begin
  if AValue then result:=ATrue else result:=AFalse;
end;

procedure TKeyboard.addPress(ws:word; ls: longint; langcode:HKL; playsound:boolean);
var Scancode, ss:string; but: pchar;
    KS: TKeyboardState;
    SC: integer;

begin
    SC:=MapVirtualKeyEx(WS, MAPVK_VK_TO_VSC, langcode);
    GetKeyboardState(KS);
    ToUnicodeEx(WS, SC, KS, @fletter, sizeof(fletter), 0, langcode);
   if byte(LS shr 24)<$80 then fisPressed:=true else fisPressed:=false;
   scancode:=IntToHex(ls);
   FScans.TryGetValue(scancode, fbutton);



   FVirtCode:=WS;
   ss:=string.Format('Key = %s; Letter = %s; Virt = %u; Scan = %s; %s; Time: %s; %s',
   [fbutton, fletter, fVirtCode, scancode, IfThen(isPressed,'Down',' Up '), TimeToStr(now), chr(13)]);
   //if evenbit then
   Flog:=Flog+ss;
   if isPressed and (FVirtCode <= high(fmap)) then
   begin
      if playsound then
      begin
        but:=pchar('e'+copy(fbutton,2,length(fbutton)-2));
        playClick(but);
      end;
      if fbutton<>'' then
      case FVirtCode of
        16: if byte(ls shr 16)=$36 then FVirtCode:=161 else FVirtCode:=160; //shift
        18: if byte(ls shr 24)=$21 then FVirtCode:=165 else FVirtCode:=164; //alt
        17: if byte(ls shr 24)=$01 then FVirtCode:=163 else FVirtCode:=162; //ctrl
      end;
      if (WS=13) and (byte(ls shr 24)=$01) then inc(Fmap[12]) else //for right Enter
      inc(Fmap[FVirtCode]);
      if ord(letter)<>0 then
      Ftext:=Ftext+fletter else
      Ftext:=Ftext+fbutton;
   end
end;

constructor TKeyboard.create(soundLib: string);
begin
  cleanMap(FMap);
  fPath:=ExtractFileDir( Paramstr(0));
  FScans:=TDictionary<string,string>.create;
  LoadScans;
  SetSoundLibrary(soundLib);
end;

function TKeyboard.CURRENTMAP: string;
begin
  result:=fPath+'\maps\CurrentMap.b';
end;

procedure TKeyboard.LoadScans;
var t:textfile; scancode, button, s :string;
begin
   s:=ExtractFileDir( Paramstr(0))+'\Auxilary\Scans.dict';
   assignfile(t,s);
   reset(t);
   while not(eof(t)) do
   begin
     readln(t,s);
     scancode:=copy(s,1,8); delete(s,1,9);
     button:=trimright(s);
     FScans.Add(scancode,button);
   end;
   closefile(t);

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

procedure TKeyboard.SetSoundLibrary(soundLib: string);
var s: string;
begin
    if (@playClick<>nil) then FreeLibrary(libhandle);
    //if length(soundLib)>13 then s:='Sounds\'+soundLib+'1.dll' else

    s:='Sounds\'+soundLib+'.dll' ;
    LibHandle:= LoadLibrary(Pchar(s));
     @playClick:= GetProcAddress(LibHandle,'playClick');
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
   if tempmap[AV]>0 then      //don't average if write only
      fmap[AV]:=fmap[AV] div 2;
   seek(f,6);
   write(f,fmap[AV]);
   closefile(f);

end;

procedure TKeyboard.save(newFile: boolean; avSpeed, recSpeed:word);
//=============================

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
   // savespeed: TInifile;
begin
    textname:=fPath+'\text.txt' ;
    logname:=fPath+'\log.txt';
    if newFile then
      mapname:=GetMapFilename
    else
      mapname:=CURRENTMAP; //GetLastFile;
    if mapname='' then
    begin
      save(true, avSpeed, recSpeed);
      exit;
    end;

    savetext(logname,flog);
    savetext(textname, ftext);

    Fmap[AV]:=avSpeed;
    Fmap[REC]:=recSpeed;


    savemap(mapname);
end;


end.
