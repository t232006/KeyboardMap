unit MainUnit;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.Menus, KeyboardUnit, saver, Key;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    TrayIcon: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    TrayMenu: TPopupMenu;
    exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Key1: TKey;
    Key2: TKey;
    Key3: TKey;
    Key4: TKey;
    Key5: TKey;
    Key6: TKey;
    Key7: TKey;
    Key8: TKey;
    Key9: TKey;
    Key10: TKey;
    Key11: TKey;
    Key12: TKey;
    Key13: TKey;
    Key14: TKey;
    Key15: TKey;
    Key16: TKey;
    Key17: TKey;
    Key18: TKey;
    Key19: TKey;
    Key20: TKey;
    Key21: TKey;
    Key22: TKey;
    Key23: TKey;
    Key24: TKey;
    Key25: TKey;
    Key26: TKey;
    Key27: TKey;
    Key28: TKey;
    Key29: TKey;
    Key31: TKey;
    Key32: TKey;
    Key33: TKey;
    Key34: TKey;
    Key35: TKey;
    Key36: TKey;
    Key37: TKey;
    Key38: TKey;
    Key39: TKey;
    Key40: TKey;
    Key41: TKey;
    Key42: TKey;
    Key43: TKey;
    Key44: TKey;
    Key45: TKey;
    Key46: TKey;
    Key47: TKey;
    Key48: TKey;
    Key49: TKey;
    Key50: TKey;
    Key51: TKey;
    Key52: TKey;
    Key53: TKey;
    Key30: TKey;
    Key54: TKey;
    Key55: TKey;
    Key56: TKey;
    Key57: TKey;
    Key58: TKey;
    Key59: TKey;
    Key60: TKey;
    Key61: TKey;
    Key62: TKey;
    Key63: TKey;
    Key64: TKey;
    Key65: TKey;
    Key66: TKey;
    Key67: TKey;
    Key68: TKey;
    Key69: TKey;
    Key70: TKey;
    Key71: TKey;
    Key72: TKey;
    Key73: TKey;
    Key74: TKey;
    Key75: TKey;
    Key76: TKey;
    Key77: TKey;
    Key78: TKey;
    Key79: TKey;
    Key80: TKey;
    Key81: TKey;
    Key82: TKey;
    Key83: TKey;
    Key84: TKey;
    Key85: TKey;
    Key86: TKey;
    Key87: TKey;
    Key88: TKey;
    Key89: TKey;
    Key90: TKey;
    Key91: TKey;
    Key92: TKey;
    Key93: TKey;
    Key94: TKey;
    Key96: TKey;
    Key97: TKey;
    Key98: TKey;
    Key99: TKey;
    Key100: TKey;
    Key101: TKey;
    Key102: TKey;
    Key103: TKey;
    Key104: TKey;
    Key95: TKey;
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure exit1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
    procedure Key13Click(Sender: TObject);
  private
    function FindKey(ScanCode: string):TKey;
  public
    { Public declarations }
  end;
  procedure RunHook(wnd:Hwnd) stdcall; external 'KeyboardHook.dll';
  procedure StopHook; stdcall; external 'KeyboardHook.dll';
  function GetKeyboard: TKeyboard stdcall; external 'KeyboardHook.dll';

var
  Form1: TForm1;
  Keyboard: TKeyboard;
implementation

{$R *.dfm}

procedure TForm1.ApplicationEvents1Minimize(Sender: TObject);
begin
  WindowState:=wsMinimized;
  TrayIcon.Visible := True;
  TrayIcon.Animate := True;
  TrayIcon.ShowBalloonHint;
end;

procedure TForm1.exit1Click(Sender: TObject);
begin
  close;
end;

function TForm1.FindKey(ScanCode: string): TKey;
var k, i:byte;  key:TKey;
begin
   for k := 1 to 104 do
   begin
      key:=FindComponent('Key'+inttostr(k)) as TKey;
      for I := 0 to key.ScanCodes.Count-1 do
        if ScanCode=key.ScanCodes[i] then
        begin
          result:=key;
          exit;
        end;
   end;
   result:=FindComponent('Key14') as TKey;  //exception

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
begin

  N2Click(sender);  StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  dWin:=FindWindow(nil, 'KeyboardMap');
  if dWin<>0 then SendMessage(dWin, WM_DESTROY, 0,0);

  //halt;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RunHook(self.Handle);
  Keyboard:=TKeyboard.create;

  Key59.Pressed:=Odd(GetKeyState(VK_CAPITAL));
  Key35.Pressed:=Odd(GetKeyState(VK_NUMLOCK));
  Key15.Pressed:=Odd(GetKeyState(VK_SCROLL));
end;

procedure TForm1.GetPressing(var msg: TMessage);
var st:string; ScanHex:string; _key:Tkey;
begin
   Keyboard:=GetKeyboard;
   ScanHex:=InttoHex(Keyboard.param.scanCode);
   st:=string.Format('Key = %s; Letter =%s; Virtual = %s; Scan = %s',
   [Chr(Keyboard.Param.virtCode), Keyboard.param.letter,
   InttoHex(Keyboard.param.virtCode), ScanHex]);
   Memo1.Lines.Clear;
   Memo1.Lines.Add(st);

   _key:=FindKey(ScanHex);
   _key.Pressed:=Keyboard.param.isPressed;
   if _key.Name='Key59' then  //CapsLock
      _key.Pressed:=Odd(GetKeyState(VK_CAPITAL)) else
   if _Key.Name='Key35' then
      _key.Pressed:=Odd(GetKeyState(VK_NUMLOCK)) else
   if _key.Name='Key15' then
      _key.Pressed:= Odd(GetKeyState(VK_SCROLL));



end;

procedure TForm1.Key13Click(Sender: TObject);
begin
    key14.MiddleFont.Size:=8;
end;

procedure TForm1.N2Click(Sender: TObject);
var textname, logname, mapname, st: string;
begin
    keyboard:=GetKeyboard;
    textname:=ExtractFileDir( Paramstr(0))+'\text.txt' ;
    logname:=ExtractFileDir(Paramstr(0))+'\log.txt';
    mapname:=ExtractFileDir( Paramstr(0))+'\map.b' ;
    st:=string(keyboard.log);
    savetext(logname,st);
    st:=string(keyboard.text);
    savetext(textname, st);
    savemap(mapname, keyboard.map);

end;

procedure TForm1.TrayIconDblClick(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

end.
