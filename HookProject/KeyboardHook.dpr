library KeyboardHook;


{$R *.res}
uses
  Sharemem,
  Messages,
  Windows,
  FileMapping,
  KeyboardUnit in 'KeyboardUnit.pas';

var prewkey:LParam;
    HandleOff: hHook;

function KeyboardProc(Code: Integer; wParam: WParam; LParam: LParam): LongWord; stdcall;
begin
  if prewkey=LParam then
  begin
   result:=CallNexthookEx(DataArea^.HandleKey, code, WParam, LParam);
   exit
  end else prewkey:=LParam;

  PostMessage(DataArea^.FormHandle, WM_MYKEYPRESS, WParam, LParam);
  if byte(LParam shr 24)<$80 then
    if byte(LParam shr 16)= DataArea^.key then
    if byte(LParam shr 24)= DataArea^.ExKey then
    begin
      sleep(400);
      SendMessage(DataArea^.FormHandle, WM_CHANGELANG, WParam, LParam);
      result:=1;
      exit;        //to not pass further
    end;
  result:=CallNexthookEx(DataArea^.HandleKey, code, WParam, LParam);

end;

procedure RunHook export; stdcall;
begin
    DataArea^.HandleKey := SetWindowsHookEx(WH_KEYBOARD, @KeyboardProc, hInstance, 0);
end;

procedure StopHook export; stdcall;
begin
  UnhookWindowsHookEx(DataArea^.HandleKey);
end;


exports RunHook, StopHook;
end.

