unit auxilary;

interface
uses Graphics, windows;
function Gradient(y1,y2:Tcolor; min,max, xk:word):TColor;

implementation
function Gradient(y1,y2:Tcolor; min,max, xk:word):TColor;
var g3,g2,g1,r3,r2 ,r1,b3,b2,b1, x1,x2:integer;
    //y1,y2:Tcolor;
function getcol(_r2,_r1:integer):Integer;
begin
  if xk = 0 then result:=_r1 else
  begin
  result:=round((_r2-_r1)*xk/(x2-x1));
  if result<0 then result:=_r1+result;
  if _r1=_r2 then
    //if _r1=255 then
      result:=_r1
        {
      else
            result:=round(255/(x2-x1)*xk);
    }
  end;
end;

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

    r3:=getcol(r2,r1);
    g3:=getcol(g2,g1);
    b3:=getcol(b2,b1);

    result:=rgb(r3,g3,b3);
  end else
    result:=y1;
end;

end.
