unit PressCounter;

interface
uses Graphics;
type
TMyLabel = record
    Caption: string;
    Font: TFont;
    PosX: Integer;
  end;

TKeyImage=record
  num:byte;
  color: TColor;
  UpLabel: TMyLabel;
  MidLabel: TMyLabel;
  DownLabel: TMyLabel;
end;

keyMas=array[0..222] of TKeyImage;

implementation

end.
