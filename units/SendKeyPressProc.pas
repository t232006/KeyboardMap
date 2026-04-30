unit SendKeyPressProc;

interface
uses Windows, key, sysutils;
procedure SendKeyPress(Key: WideChar);  overload;
procedure SendKeyPress(Key: integer); overload;
procedure SendKeyDown(Key: WideChar); overload;
procedure SendKeyUp(Key: WideChar); overload;
procedure SendKeyDown(Key: integer); overload;
procedure SendKeyUp(Key: integer); overload;
procedure KeyClick(But: TKey; ShiftDown: boolean; langcode: HKL; keyDown:boolean);
procedure LayoutChangeCtrl;
procedure LayoutChangeAlt;

implementation
uses ParentUnit;

procedure LayoutChangeCtrl;
 begin
  keybd_event(VK_SHIFT,$2a,0,0); {<Ctrl>+<Shift>}
  keybd_event(VK_CONTROL,$1d,0,0);
  keybd_event(VK_CONTROL,$1d,KEYEVENTF_KEYUP,0);
  keybd_event(VK_SHIFT,$2a,KEYEVENTF_KEYUP,0);
end;

procedure LayoutChangeAlt;
begin
  keybd_event(VK_MENU,$38,0,0); {<Alt>+<Shift>}
  keybd_event(VK_SHIFT,$2a,0,0);
  keybd_event(VK_SHIFT,$2a,KEYEVENTF_KEYUP,0);
  keybd_event(VK_MENU,$38,KEYEVENTF_KEYUP,0);
end;


procedure SendKeyDown(Key: WideChar);
var
  Input: array[0..0] of TInput;
begin
  FillChar(Input, SizeOf(Input), 0);
  with Input[0] do
  begin
    Itype := INPUT_KEYBOARD;
    with ki do
    begin
      wScan := Word(Key);
      dwFlags := KEYEVENTF_UNICODE
    end;
  end;
  SendInput(Length(Input), Input[0], SizeOf(TInput));
end;

procedure SendKeyUp(Key: WideChar);
var Input: array[0..0] of TInput;
begin
  with Input[0] do
  begin
    Itype := INPUT_KEYBOARD;
    with ki do
    begin
      wScan := Word(Key);
      dwFlags := KEYEVENTF_UNICODE or KEYEVENTF_KEYUP;
    end;
  end;
  SendInput(Length(Input), Input[0], SizeOf(TInput));
end;

procedure SendKeyPress(Key: WideChar);
begin
  SendKeyDown(Key);
  SendKeyUp(Key);
end;

procedure SendKeyPress(Key: integer);
begin
   keybd_event(key,0,0,0);
   keybd_event(key, 0, KEYEVENTF_KEYUP, 0);
end;

procedure SendKeyDown(Key: integer);
begin
   keybd_event(key,0,0,0);
end;

procedure SendKeyUp(Key: integer);
begin
    keybd_event(key, 0, KEYEVENTF_KEYUP, 0);
end;

procedure KeyClick(But: TKey; ShiftDown: boolean; langcode:HKL; keyDown:boolean);
var
    state: WindowPlacement;
    ch:char;  en:boolean;
    temp:string;
begin
    state.length:=sizeof(windowplacement);
    GetWindowPlacement(hwin, state);
    ShowWindow(hwin, state.showCmd);
    BringWindowToTop(hwin);
    en:=hiword(langcode)=$409;
    case But.KeyType of
    ktNum:
      begin
        if ShiftDown then
          begin
          if not(en) then
            if But.UpText<>'' then ch:=But.UpText[1] else ch:=But.MiddleText[1]
             else
            ch:=But.MiddleText[1]
          end
        else
          ch:=But.MiddleText[length(But.MiddleText)];
        if keydown then sendKeyDown(ch) else sendkeyup(ch);

      end;
    ktTrippleLetters:
      begin
        if en then
          begin
            if ShiftDown then
              ch:=But.MiddleText[1]
            else
              ch:=But.MiddleText[length(But.MiddleText)];
          end
        else
          begin
            ch:=But.DownText[1];
            if not(ShiftDown) then
              ch:=chr(ord(ch)+32);
          end;
        if keydown then sendKeyDown(ch) else sendkeyup(ch);
      end;
    ktLetters:
      begin
        if en then
        ch:=But.UpText[1] else
        ch:=But.downtext[1];
        if not(ShiftDown) then
          ch:=chr(ord(ch)+32);
        if keydown then sendKeyDown(ch) else sendkeyup(ch);
      end;
    ktExNum:
    begin
       temp:=But.Name;
       delete(temp, 1, 3);
       if Odd(GetKeyState(VK_NUMLOCK)) then
       begin

        if keydown then sendkeyDown(strtoint(temp)) else sendKeyUp(strtoint(temp));
       end else
       begin
         case strtoint(temp) of
         96: if keydown then sendkeyDown(45) else SendKeyUp(45) ;
         97: if keydown then sendkeyDown(35) else SendKeyUp(35);
         98: if keydown then sendkeyDown(40) else SendKeyUp(40);
         99: if keydown then sendkeyDown(34) else SendKeyUp(34);
         100: if keydown then sendkeyDown(37) else SendKeyUp(37);
         101: if keydown then sendkeyDown(12) else SendKeyUp(12);
         102: if keydown then sendkeyDown(39) else SendKeyUp(39);
         103: if keydown then sendkeyDown(36) else SendKeyUp(36);
         104: if keydown then sendkeyDown(38) else SendKeyUp(38);
         105: if keydown then sendkeyDown(33) else SendKeyUp(33);
         end;
       end;

    end
    else
      begin
          temp:=But.Name;
          delete(temp, 1, 3);
          if temp='12' then

          temp:='13';   //right enter
          if keydown then sendkeyDown(strtoint(temp)) else SendKeyUp(strtoint(temp)) ;
      end;
    end;
end;

end.
