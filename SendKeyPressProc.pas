unit SendKeyPressProc;

interface
uses Windows, key, sysutils;
procedure SendKeyPress(Key: WideChar);  overload;
procedure SendKeyPress(Key: integer); overload;
procedure SendKeyDown(Key: WideChar); overload;
procedure SendKeyUp(Key: WideChar); overload;
procedure SendKeyDown(Key: integer); overload;
procedure SendKeyUp(Key: integer); overload;
procedure KeyClick(But: TKey; ShiftDown: boolean);

implementation
uses MainUnit;

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

procedure KeyClick(But: TKey; ShiftDown: boolean);
var
    state: WindowPlacement;
    ch:char;  en:boolean;
    temp:string;
begin
    state.length:=sizeof(windowplacement);
    GetWindowPlacement(hwin, state);
    ShowWindow(hwin, state.showCmd);
    BringWindowToTop(hwin);
    en:=word(GetKeyboardLayout(0))=$409;
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
        SendKeypress(ch);

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
        SendKeypress(ch);
      end;
    ktLetters:
      begin
        if en then
        ch:=But.UpText[1] else
        ch:=But.downtext[1];
        if not(ShiftDown) then
          ch:=chr(ord(ch)+32);
        SendKeypress(ch);
      end;
    ktExNum:
    begin
       temp:=But.Name;
       delete(temp, 1, 3);
       if Odd(GetKeyState(VK_NUMLOCK)) then
       begin

        sendkeypress(strtoint(temp));
       end else
       begin
         case strtoint(temp) of
         96: sendkeypress(45);
         97: sendkeypress(35);
         98: sendkeypress(40);
         99: sendkeypress(34);
         100: sendkeypress(37);
         101: sendkeypress(12);
         102: sendkeypress(39);
         103: sendkeypress(36);
         104: sendkeypress(38);
         105: sendkeypress(33)
         end;
       end;

    end
    else
      begin
          temp:=But.Name;
          delete(temp, 1, 3);
          if temp='1' then

          temp:='13';   //right enter
          sendkeypress(strtoint(temp));
      end;
    end;
end;

end.
