unit testPressing;

interface
uses windows;
procedure Pressing;

implementation
procedure Pressing;
begin
  keybd_event(81,0,0,0);
   keybd_event(81, 0, KEYEVENTF_KEYUP, 0);
   sleep(100);
   keybd_event(82,0,0,0);
   keybd_event(82, 0, KEYEVENTF_KEYUP, 0);
   sleep(200);
   keybd_event(89,0,0,0);
   keybd_event(89, 0, KEYEVENTF_KEYUP, 0);
   sleep(100);
   keybd_event(85,0,0,0);
   keybd_event(85, 0, KEYEVENTF_KEYUP, 0);
   sleep(300);
   keybd_event(80,0,0,0);
   keybd_event(80, 0, KEYEVENTF_KEYUP, 0);

end;

end.
