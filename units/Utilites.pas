nit Utilites;

interface
uses Windows;
procedure SendKeyPress(Key: WideChar);
procedure SendKeyDown(Key: WideChar);
procedure SendKeyUp(Key: WideChar);

implementation

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


end.
