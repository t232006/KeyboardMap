unit scans;

interface
uses System.Generics.Collections, SysUtils, strUtils;
type TScans=class

  constructor Create;
  destructor Destroy;
  public
  function getScan(scancode:string):string;
  function getVirt(virtcode:byte):string;
  private
  FScans: TDictionary<byte,string>;
end;

implementation

constructor TScans.Create;
var t:textfile; scancode, button, s, dir :string;
begin
   dir:=ExtractFileDir( Paramstr(0))+'\Auxilary\Virt.dict';
   FScans:=TDictionary<byte,string>.create;
   assignfile(t,dir);
   reset(t);
   while not(eof(t)) do
   begin
     readln(t,s);
     scancode:=copy(s,1,4); delete(s,1,5);
     button:=trimright(s);
     FScans.Add(strtoint(scancode),button);
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
  if length(scancode)>4 then scancode:=rightStr(scancode,4);

  FScans.TryGetValue(strtoint('$'+scancode), fbutton);
  result:=fbutton;
end;

function TScans.getVirt(virtcode: byte): string;
var fbutton:string;
begin
  //if length(virtcode)>4 then virtcode:=rightStr(virtcode,4);

  FScans.TryGetValue(virtcode, fbutton);
  result:=fbutton;
end;

end.
