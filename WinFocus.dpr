library WinFocus;

{$R *.res}
uses
  windows,
  Messages;

var SysHook: hHook = 0;
    WindowHandle: Hwnd;
    MyOwnHandle: HWnd;

function GetWinHandle:Hwnd export; stdcall;
begin
  result:=WindowHandle;
end;

function CBTProc(Code: Integer; wParam: WParam; LParam: LParam):longint; export; stdcall;
var temp:Hwnd;
begin
   if code=HC_ACTION then
   begin
     temp:=getforegroundwindow;
     if temp<>MyOwnHandle then
        WindowHandle:=temp;//TMsg(Pointer(lParam)^).hwnd;
   end;
   result:=CallNexthookEx(SysHook, code, Wparam, LParam);
end;

procedure RunHookWinFocus(hdl: HWnd) export; stdcall;
begin
    MyOwnHandle:=hdl;
    SysHook := SetWindowsHookEx(WH_GETMESSAGE, @CBTProc, hInstance, 0);
end;

procedure StopHookWinFocus export; stdcall;
begin
  UnhookWindowsHookEx(SysHook);
  SysHook:=0;
end;

exports StopHookWinFocus, RunHookWinFocus, GetWinHandle;
end.
