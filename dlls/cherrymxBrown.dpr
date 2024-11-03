library cherrymxBrown;

uses
  System.SysUtils,
  System.Classes,  mmSystem,  WinAPI.Windows;

{$R cherrymxBrown4.res}

procedure playClick (button: pchar);
var hResInfo: hrsrc;
    selfhandle: HWnd;
begin
    selfHandle:=GetModuleHandle('cherrymxBrown.dll');
    hResInfo:=FindResource(selfhandle, button, RT_RCDATA);
    button[0]:='s';
    if hresInfo<>0 then
   PlaySound(button, selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   PlaySound('remain',selfhandle, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
end;



exports playClick;
end.
