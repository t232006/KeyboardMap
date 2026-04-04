unit scans;

interface
uses System.Generics.Collections, SysUtils;
type TScans=class

  constructor Create;
  destructor Destroy;
  public
  function getScan(scancode:string):string;
  private
  FScans: TDictionary<string,string>;
end;

implementation

constructor TScans.Create;
var t:textfile; scancode, button, s, dir :string;
begin
   dir:=ExtractFileDir( Paramstr(0))+'\Auxilary\Scans.dict';
   FScans:=TDictionary<string,string>.create;
   assignfile(t,dir);
   reset(t);
   while not(eof(t)) do
   begin
     readln(t,s);
     scancode:=copy(s,1,4); delete(s,1,5);
     button:=trimright(s);
     FScans.Add(scancode,button);
   end;
   closefile(t);
end;



destructor TScans.Destroy;
begin
  FScans.Destroy;
end;

function TScans.getScan(scancode: string): string;
var fbutton:string;
begin
  FScans.TryGetValue(scancode, fbutton);
  result:=fbutton;
end;

end.
