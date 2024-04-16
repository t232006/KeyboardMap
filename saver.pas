unit saver;

interface
uses KeyboardUnit, sysutils, strutils, dateutils;
procedure savetext(filename, sometext:string);
procedure savemap(filename: string; map:TKeyboardMap);
procedure cleanMap(var map:TKeyboardMap);
procedure save(newFile:boolean; keyboard: TKeyboard);

implementation









procedure savemap(filename: string; map:TKeyboardMap);
var f: file of word;
    tempmap: TKeyboardMap;
    i:word;
begin
    i:=0;
    cleanmap(tempmap);
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
   for I := Low(map) to High(map) do
     begin
       inc(map[i],tempmap[i]);
       Write(f, map[i]);
     end;
   closefile(f);

end;

end.
