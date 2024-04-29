unit Language;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXCtrls, inifiles, filemapping, Vcl.ComCtrls, Vcl.AppEvnts;

type
  TLangForm = class(TForm)
    Extender: TToggleSwitch;
    hotKeyInd: TRadioGroup;
    Button1: TButton;
    Status: TMemo;
    procedure hotKeyIndClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ExtenderClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  LangForm: TLangForm;
  params: TIniFile;
implementation

{$R *.dfm}

function Ifthen(pred:boolean; a,b:byte):byte;
begin
  if pred then result:=a else result:=b;
end;

procedure TLangForm.ExtenderClick(Sender: TObject);
begin
  if Extender.State=tssOff then
  begin
    HotKeyInd.Items[3]:='Scroll Lock';
    if hotKeyInd.ItemIndex=1 then
    Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Ctrl>+<Shift>' else
    if hotKeyInd.ItemIndex=2 then
    Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Alt>+<Shift>' else
    Status.Text:='';
  end else
  begin
    Status.Text:='';
    HotKeyInd.Items[3]:='Pause Break';
  end;
end;

procedure TLangForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    params.WriteInteger('HotKeys','Key',DataArea^.key);
    params.WriteInteger('HotKeys','Ext',DataArea^.exKey);
    params.Destroy;
end;

procedure TLangForm.FormShow(Sender: TObject);
var key, exkey:byte;
begin
    params:=TIniFile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
    key:=params.ReadInteger('HotKeys', 'Key', 0);
    exKey:=params.ReadInteger('HotKeys', 'Ext', 0);
    case key of
      $38: hotkeyind.ItemIndex:=1;
      $1D: hotkeyind.ItemIndex:=2;
      $5B: hotkeyind.ItemIndex:=3;
      $5C: hotkeyind.ItemIndex:=3;
      $1C: hotkeyind.ItemIndex:=4;
      else hotkeyind.ItemIndex:=0;
    end;
    if (exKey=$21) or (exkey=$1) then Extender.State:=tssOn else
    Extender.State:=tssOff;

end;

procedure TLangForm.hotKeyIndClick(Sender: TObject);
begin
  case HotKeyInd.ItemIndex of
  1: begin
        DataArea^.key:=$38;
        DataArea^.exKey:=ifthen(Extender.State=tssOn, $21, $20);
        if DataArea^.ExKey=$20 then
        Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Ctrl>+<Shift>';
      end;
  2:  begin
        DataArea^.key:=$1D;
        DataArea^.ExKey:=ifthen(Extender.State=tssOn, 1, 0);
        if DataArea^.ExKey=0 then
        Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Alt>+<Shift>';
      end;
  3:  begin
        if Extender.State=tssOn then
        DataArea^.key:=$45 else
        DataArea^.key:=$46;
        DataArea^.ExKey:=0;
        Status.Text:='';
      end;
  4:  begin
        DataArea^.key:=$1C;
        DataArea^.ExKey:=ifthen(Extender.State=tssOn, 1, 0);
        Status.Text:='';
      end;
  else
  begin
    DataArea^.key:=0;
    Status.Text:='';
  end;





  end;
end;

end.
