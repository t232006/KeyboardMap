unit KeyboardUnit;

interface
uses Sharemem, SysUtils, windows, messages;
const WM_MYKEYPRESS = WM_USER+136;
type
TKeyboardMap=array[0..255] of word;
TParam=record
  wParam:WParam;
  lParam:LParam;
end;
TKeyboard=class
   private
    mas: TKeyboardMap ;
    s:string;
    Fst: Pchar;
    _param:TParam;
    _WM_MYKEYPRESS:Integer;
   public
     handle: Hwnd;
     procedure addPress(ws:word; ls: longint);
     property map:TKeyboardMap read mas;
     property     st:Pchar read Fst;
     property param:TParam read _param;
     property WM_MYKEYPRESS1:integer read _WM_MYKEYPRESS;
     constructor create;
end;

implementation
procedure TKeyboard.addPress(ws:word; ls: longint);
begin
   s:=s+'Key ='+Chr(ws)+' Key(wParam) =$'+IntToHex(ws)+' lParam=$'+InttoHex(ls)+chr(13);
   //StrPLCopy(chars, s, length(s));
   Fst:=addr(s[1]);
   inc(mas[ws]);
   _param.wParam:=ws; _param.lParam:=ls;
   SendMessage(handle, WM_MYKEYPRESS, param.wParam, param.lParam);
end;

constructor TKeyboard.create;
begin
  for var i := Low(mas) to High(mas) do
    mas[i]:=0;
  _WM_MYKEYPRESS:=RegisterWindowMessage('{3998262C-C7A6-43AC-8392-B6293EE0488C}');
end;


end.
