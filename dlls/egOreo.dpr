library egOreo;

uses
  System.SysUtils,
  System.Classes, mmSystem, WinAPI.Windows;

{$R egOreoRes.res}

procedure playClick (button: pchar);
var hResInfo: hrsrc;
    selfhandle: HWnd;
    s:string;
begin
    selfHandle:=GetModuleHandle('egOreo.dll');
    s:=button;
    if (ord(s[length(s)])>=48) and
       (ord(s[length(s)])<=57)
        then
          PlaySound('eNumber', selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   if button='eSpace' then
   PlaySound('eSpace', selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   if (button='eREnter') or (button='eEnter') then
   PlaySound('eEnter', selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   PlaySound('eKey', selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
end;



exports playClick;
end.

