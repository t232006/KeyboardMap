unit KeyboardUnit;

interface
uses Sharemem, SysUtils, windows, messages;
const WM_MYKEYPRESS = WM_USER+136;
type
TKeyboardMap=array[0..255] of word;
TParam=record
  virtCode:WParam;
  scanCode:Lparam;
  letter: char;
  isPressed:boolean;
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
     procedure addPress(ws:word; ls: longint; letter:char; isPressed:boolean);
     property map:TKeyboardMap read mas;
     property     st:Pchar read Fst;
     property param:TParam read _param;
     property WM_MYKEYPRESS1:integer read _WM_MYKEYPRESS;
     constructor create;
end;

implementation

function IfThen(AValue: boolean; const ATrue:string; const AFalse:string):string;
begin
  if AValue then result:=ATrue else result:=AFalse;
end;

procedure TKeyboard.addPress(ws:word; ls: longint; letter:char; isPressed:boolean);
//var ss:string;
begin
   s:=s+string.Format('Key = %s; Letter = %s; Virtual = %s; %s; Time: %s; %s',
   [Chr(ws), letter, IntToHex(ls), IfThen(isPressed,'Up','Down'), TimeToStr(now), chr(13)]);
   //'Key ='+Chr(ws)+' Key(wParam) =$'+IntToHex(ws)+' lParam=$'+InttoHex(ls)+chr(13);
   //StrPLCopy(chars, s, length(s));
   _param.letter:=letter;
   _param.isPressed:=isPressed;
   _param.virtCode:=ws;
   _param.scanCode:=ls;
   Fst:=addr(s[1]);
   if isPressed then
   begin
    inc(mas[ws]);
   end;

   SendMessage(handle, WM_MYKEYPRESS, param.virtCode, param.scanCode);
end;

constructor TKeyboard.create;
begin
  for var i := Low(mas) to High(mas) do
    mas[i]:=0;
  _WM_MYKEYPRESS:=RegisterWindowMessage('{3998262C-C7A6-43AC-8392-B6293EE0488C}');
end;


end.
