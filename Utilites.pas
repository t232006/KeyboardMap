unit Utilites;

interface
uses Windows;
procedure SendKeyPress(Key: Word; release:boolean);

implementation
procedure SendKeyPress(Key: Word; release:boolean);
var
  Inputs: array[0..0] of TInput;
begin
  Inputs[0].Itype := INPUT_KEYBOARD;
  Inputs[0].ki.wVk := Key;
  if release then Inputs[0].ki.dwFlags := KEYEVENTF_KEYUP else
  Inputs[0].ki.dwFlags := 0;
  SendInput(1, Inputs[0], SizeOf(Inputs[0]));
end;

end.
