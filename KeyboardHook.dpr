library KeyboardHook;


{$R *.res}
uses
  Sharemem,
  Messages,
  Windows,
  KeyboardUnit in 'KeyboardUnit.pas';

var SysHook: hHook = 0;
    hWin: HWnd;

function KeyboardProc(Code: Integer; wParam: WParam; LParam: LParam): LongWord; stdcall;
begin
  if code=0 then
    PostMessage(FindWindow(nil,'Screen keyboard'),$0400+10, WParam, LParam);
  result:=CallNexthookEx(SysHook, code, WParam, LParam);

end;
procedure RunHook(_hWin: Hwnd) export; stdcall;
begin
    hWin:=_hWin;
    SysHook:= SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, hInstance, 0)
end;

procedure StopHook export; stdcall;
begin
  UnhookWindowsHookEx(SysHook);
  SysHook:=0;
end;


exports RunHook, StopHook;
end.

