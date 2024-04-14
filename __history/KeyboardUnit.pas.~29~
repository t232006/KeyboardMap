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
    Flog, Ftext:string;
    logChar, textChar: Pchar;
    Fparam:TParam;
    evenBit: boolean;
    _WM_MYKEYPRESS:Integer;
   public
     handle: Hwnd;
     procedure addPress(ws:word; ls: longint; letter:char; isPressed:boolean);
     property map:TKeyboardMap read mas;
     property     log:Pchar read logChar;
     property text:Pchar read textChar;
     property param:TParam read Fparam;
     property WM_MYKEYPRESS1:integer read _WM_MYKEYPRESS;
     constructor create;
end;

implementation

function IfThen(AValue: boolean; const ATrue:string; const AFalse:string):string;
begin
  if AValue then result:=ATrue else result:=AFalse;
end;

procedure TKeyboard.addPress(ws:word; ls: longint; letter:char; isPressed:boolean);
var ss:string;
begin
   evenbit:=not(evenbit);
   ss:=string.Format('Key = %s; Letter = %s; Scan = %s; %s; Time: %s; %s',
   [Chr(ws), letter, IntToHex(ls), IfThen(isPressed,'Down',' Up '), TimeToStr(now), chr(13)]);
   if evenbit then
   begin
     Flog:=Flog+ss;
     if isPressed then
     begin
        inc(mas[ws]);
        if ord(letter)<>0 then
          Ftext:=Ftext+letter;
     end;
   end;
   
   Fparam.letter:=letter;
   Fparam.isPressed:=isPressed;
   Fparam.virtCode:=ws;
   Fparam.scanCode:=ls;
   logChar:=addr(Flog[1]);
   textChar:=addr(Ftext[1]);
   

   SendMessage(handle, WM_MYKEYPRESS, param.virtCode, param.scanCode);
end;

constructor TKeyboard.create;
begin
  for var i := Low(mas) to High(mas) do
    mas[i]:=0;
  _WM_MYKEYPRESS:=RegisterWindowMessage('{3998262C-C7A6-43AC-8392-B6293EE0488C}');
end;


end.
