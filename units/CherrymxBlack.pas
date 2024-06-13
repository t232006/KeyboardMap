unit CherrymxBlack;

interface
uses mmSystem, winAPI.Windows;

procedure playClick (button: pchar);

implementation
{$R CherrymxBlack.res}


procedure playClick (button: pchar);
var hResInfo: hrsrc;
begin
    hResInfo:=FindResource(hInstance, button, RT_RCDATA);
    button[0]:='s';
    if hresInfo<>0 then
   sndPlaySound(button, SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)
   else
   sndPlaySound('remain', SND_RESOURCE + SND_ASYNC + SND_NODEFAULT)

end;

end.
