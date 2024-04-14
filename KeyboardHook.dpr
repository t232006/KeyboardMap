library KeyboardHook;


{$R *.res}
uses
  Sharemem,
  Messages,
  Windows,
  KeyboardUnit in 'KeyboardUnit.pas';

var SysHook: hHook = 0;

keyboard: TKeyboard ;

function GetKeyboard:Tkeyboard;  export; stdcall;
begin
   result:=keyboard;
end;

function KeyboardProc(Code: Integer; wParam: WParam; LParam: LParam): integer; stdcall;
var myHKL: HKL;
    KS: TKeyboardState;
    SC: integer;
    key: char;
begin
  if code<0 then result:=CallNexthookEx(SysHook, code, WParam, LParam)
  else
  begin
    myHKL:=GetKeyboardLayout(GetCurrentThreadID);
    SC:=MapVirtualKeyEx(WParam, MAPVK_VK_TO_VSC, MyHKL);
    GetKeyboardState(KS);
    ToUnicodeEx(WParam, SC, KS, @Key, sizeof(key), 0, MyHKL);
    if byte(LParam shr 24)<$80 then //key is pressed
        keyboard.addPress(wParam, lParam, key, true)
    else
        keyboard.addPress(wParam, lParam, key, false);
  end;
  result:=CallNexthookEx(SysHook, code, WParam, LParam);

end;
procedure RunHook(wnd:Hwnd) export; stdcall;
begin
    keyboard:=TKeyboard.create;
    keyboard.handle:=wnd;
    SysHook:= SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, hInstance, 0)
end;

procedure StopHook export; stdcall;
begin
  UnhookWindowsHookEx(SysHook);
  SysHook:=0;
  keyboard.Destroy;
end;


exports RunHook, StopHook, GetKeyboard;
end.

