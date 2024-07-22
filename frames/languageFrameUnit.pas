unit languageFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, MyAuxProc,
  Vcl.WinXCtrls, filemapping, Vcl.ComCtrls, Vcl.AppEvnts, Vcl.Buttons,
  registry, InterfaceMyFrame;

type
  TLangFrame = class(TFrame, IMyFrame)
    Extender: TToggleSwitch;
    hotKeyInd: TRadioGroup;
    Status: TMemo;
    procedure hotKeyIndClick(Sender: TObject);
    procedure ExtenderClick(Sender: TObject);
  private
     StrButton:string;
  public
    reg: TRegIniFile;
    procedure Applay;
    procedure LoadParams;
    procedure SaveParams;
  end;

implementation

{$R *.dfm}

procedure TLangFrame.Applay;
begin
  if MessageDlg('������� ������� ����� �������� ��������� '+ StrButton,
                    mtConfirmation,mbYesNo,0)=mrYes then
      begin
       reg.writeInteger('HotKeys', 'Key',DataArea^.key);
       reg.WriteInteger('HotKeys', 'Ext',DataArea^.exKey);
      end;
end;

procedure TLangFrame.ExtenderClick(Sender: TObject);
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
  hotKeyIndClick(sender);
end;

procedure TLangFrame.hotKeyIndClick(Sender: TObject);
begin
  case HotKeyInd.ItemIndex of
  1: begin
        DataArea^.key:=$38;
        DataArea^.exKey:=ifthen(Extender.State=tssOn, $21, $20);
        if DataArea^.ExKey=$20 then
        begin
          Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Ctrl>+<Shift>';
          strbutton:='<Left Alt>';
        end else
          strbutton:='<Right Alt>';
      end;
  2:  begin
        DataArea^.key:=$1D;
        DataArea^.ExKey:=ifthen(Extender.State=tssOn, 1, 0);
        if DataArea^.ExKey=0 then
        begin
          Status.Text:='� ���������� "����� � ������ ���������� �����" ���������� �������� ������ <Alt>+<Shift>';
          strbutton:='<Left Ctrl>';
        end else
          strbutton:='<Right Ctrl>';
      end;
  3:  begin
        if Extender.State=tssOn then
        DataArea^.key:=$45 else
        DataArea^.key:=$46;
        DataArea^.ExKey:=0;
        Status.Text:='';
        strbutton:=ifthen(Extender.State=tssOn, '<Scroll Lock>','<Pause Break>');
      end;
  4:  begin
        DataArea^.key:=$1C;
        DataArea^.ExKey:=ifthen(Extender.State=tssOn, 1, 0);
        Status.Text:='';
        strbutton:=ifthen(Extender.State=tssOn, '<RightEnter>','<LeftEnter>');
      end;
  else
  begin
    DataArea^.key:=0;
    Status.Text:='';
    strbutton:='�� ���������';
  end;
  end;
end;

procedure TLangFrame.LoadParams;
var key, exkey:byte;
begin
    //reg.OpenKey('HotKeys', true);
    key:=reg.ReadInteger('HotKeys', 'Key', 0);
    exKey:=reg.ReadInteger('HotKeys','Ext', 0);
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

procedure TLangFrame.SaveParams;
begin
   reg.WriteInteger('HotKeys','Key',DataArea^.key);
   reg.WriteInteger('HotKeys','Ext',DataArea^.exKey);
end;


end.
