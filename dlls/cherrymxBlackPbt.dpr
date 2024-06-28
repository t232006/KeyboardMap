library cherrymxBlackPbt;

uses
  System.SysUtils,
  System.Classes, mmSystem, WinAPI.Windows;

{$R CherrymxPbt.res}

procedure playClick (button: pchar);
var hResInfo: hrsrc;
    selfhandle: HWnd;
begin
    selfHandle:=GetModuleHandle('cherrymxBlackPbt.dll');
    hResInfo:=FindResource(selfHandle, button, RT_RCDATA);
    button[0]:='s';
    if hresInfo<>0 then
   PlaySound(button, selfHandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   PlaySound('remain', selfHandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)

end;

exports playClick;
end.
