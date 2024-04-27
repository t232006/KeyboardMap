library KeyboardHook;


{$R *.res}
uses
  Sharemem,
  Messages,
  Windows,
  FileMapping,
  KeyboardUnit in 'KeyboardUnit.pas';

//var HandleKey, HandleLang, HandleWin: hHook;

function KeyboardProc(Code: Integer; wParam: WParam; LParam: LParam): LongWord; stdcall;
begin
  if code<0 then result:=CallNexthookEx(DataArea^.HandleKey, code, WParam, LParam) else
  //if code=0 then
  PostMessage(DataArea^.FormHandle, WM_MYKEYPRESS, WParam, LParam);

  if byte(LParam shr 16)= DataArea^.key then
  if byte(LParam shr 24)= DataArea^.ExKey then
  if byte(LParam shr 24)<$80 then
  begin
    sleep(400);
    SendMessage(DataArea^.FormHandle, WM_CHANGELANG, WParam, LParam);
    //PostMessage(DataArea^.FormHandle, WM_MYKEYPRESS, WParam, LParam);
    result:=1;
    exit;        //to not pass further
  end;

  result:=CallNexthookEx(DataArea^.HandleKey, code, WParam, LParam);

end;

{function LangProc (Code: Integer; wParam: wParam; lParam: lParam):Longint; stdcall;
begin
  if code<0 then
  Result:=CallNextHookEx(HandleLang, code, wParam, lParam) else
  begin
      result:=CallNextHookEx(HandleLang, code, wParam, lParam);
      if (TMsg(Pointer(LParam)^).message = WM_INPUTLANGCHANGEREQUEST) then
      begin
        if word(TMsg(Pointer(LParam)^).lParam) = $419 then
        SendMessage(FindWindow(nil,'Screen keyboard'), WM_RUSLANG, WParam, LParam);
        if word(TMsg(Pointer(LParam)^).lParam) = $409 then
        SendMessage(FindWindow(nil,'Screen keyboard'), WM_ENGLANG, WParam, LParam);
      end;
  end;
end;

function WinProc(Code: Integer; wParam: wParam; lParam: lParam): longint; stdcall;
var hWin:hWnd;
begin
    if code<0 then
  Result:=CallNextHookEx(HandleWin, code, wParam, lParam) else
  begin
    Result:=CallNextHookEx(HandleWin, code, wParam, LParam);
    hWin:=FindWindow(nil, 'Screen keyboard');
    if code = HCBT_SETFOCUS then
    if (wParam<>hWin) then
    SendMessage(hWin, WM_FOCUSWIN, WParam, LParam);
  end;
end;     }

procedure RunHook export; stdcall;
begin
    DataArea^.HandleKey := SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, hInstance, 0);
    //HandleKey:= SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, hInstance, 0);
    //HandleLang:= SetWindowsHookEx(WH_GETMESSAGE, @LangProc, hInstance, 0);
    //HandleWin:= SetWindowsHookEx(WH_CBT, @WinProc, hInstance, 0);
end;

procedure StopHook export; stdcall;
begin
  UnhookWindowsHookEx(DataArea^.HandleKey);
  //UnhookWindowsHookEx(HandleLang);
  //UnhookWindowsHookEx(HandleWin);
end;


exports RunHook, StopHook;
end.

