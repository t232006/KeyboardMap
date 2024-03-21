unit MainUnit;

interface

uses
  Sharemem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.AppEvnts,
  Vcl.Menus, KeyboardUnit, saver;
type
  TForm1 = class(TForm)
    Memo1: TMemo;
    TrayIcon: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    TrayMenu: TPopupMenu;
    exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure exit1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetPressing(var msg: TMessage); message WM_MYKEYPRESS;
  private
    { Private declarations }
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var dWin:Hwnd;
begin

  N2Click(sender);  StopHook;
  dWin:=GetModuleHandle('KeyboardHook.dll');
  FreeLibrary(dWin);
  halt;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RunHook(self.Handle);
  Keyboard:=TKeyboard.create;
  //WM_MYKEYPRESS:=Keyboard.WM_MYKEYPRESS;
end;

procedure TForm1.GetPressing(var msg: TMessage);
var st:string;
begin
   Keyboard:=GetKeyboard;
   st:=string.Format('Key = %s; Scan = %s; LParam = %s',
   [Chr(Keyboard.Param.wParam),InttoHex(Keyboard.param.wParam), InttoHex(Keyboard.param.lParam)]);
   Memo1.Lines.Clear;
   Memo1.Lines.Add(st);
end;

procedure TForm1.N2Click(Sender: TObject);
var textname, mapname, st: string;
begin
    keyboard:=GetKeyboard;
    textname:=ExtractFileDir( Paramstr(0))+'\log.txt' ;
    mapname:=ExtractFileDir( Paramstr(0))+'\map.b' ;
    st:=string(keyboard.st);
    savetext(textname,st);
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
