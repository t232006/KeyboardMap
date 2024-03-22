unit saver;

interface
uses KeyboardUnit, sysutils;
procedure savetext(filename, sometext:string);
procedure savemap(filename: string; map:TKeyboardMap);
procedure cleanMap(var map:TKeyboardMap);

implementation

procedure cleanMap(var map:TKeyboardMap);
begin
  for var i := Low(map) to High(map) do
    map[i]:=0;
end;

procedure savetext(filename, sometext:string);
var f:textfile;
begin
  assignfile(f, filename);
  try
    append(f);
    writeln(f,sometext);
  except
    rewrite(f);
  end;
  closefile(f);
end;

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
