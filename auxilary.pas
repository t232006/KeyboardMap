unit auxilary;

interface
uses Graphics, windows;
function Gradient(y1,y2:Tcolor; min,max, xk:word):TColor;

implementation
function Gradient(y1,y2:Tcolor; min,max, xk:word):TColor;
var g3,g2,g1,r3,r2 ,r1,b3,b2,b1, x1,x2:integer;
    //y1,y2:Tcolor;
begin
  x1:=min; x2:=Max;
  if x1<>x2 then
  begin
    g1:=getGvalue(y1);
    g2:=getGvalue(y2);
    r1:=getRvalue(y1);
    r2:=getRvalue(y2);
    b1:=getBvalue(y1);
    b2:=getBvalue(y2);
    g3:=round((g2-g1)*xk/(x2-x1));
    if g3<0 then g3:=g1+g3;
    r3:=round((r2-r1)*xk/(x2-x1));
    if r3<0 then r3:=r1+r3;
    b3:=round((b2-b1)*xk/(x2-x1));
    if b3<0 then b3:=b1+b3;
    result:=rgb(r3,g3,b3);
  end else
    result:=y1;
end;

end.
