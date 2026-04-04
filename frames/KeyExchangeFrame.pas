unit KeyExchangeFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.ValEdit, keyboardunit,System.Generics.Collections;

type
  TKeyExchange = class(TFrame)
    Label1: TLabel;
    ValueListEditor1: TValueListEditor;
    procedure ValueListEditor1DrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
  private
    FSelectedCol: byte;
  public
    //ExchangeTable: Dictionary<string,string>;
    property _SelectedCol: byte read FSelectedCol;
    procedure Applay;
    procedure DrawTitle(SelectedCol: byte);
  end;

implementation
{$R *.dfm}

{ TFrame1 }

{ TKeyExchange }

procedure TKeyExchange.Applay;
begin

end;

procedure TKeyExchange.DrawTitle(SelectedCol: byte);
begin
    FSelectedCol:=selectedCol;
    PostMessage(ValueListEditor1.Handle, WM_PAINT, 0, 0);
end;

procedure TKeyExchange.ValueListEditor1DrawCell(Sender: TObject; ACol,
  ARow: LongInt; Rect: TRect; State: TGridDrawState);
var text:string;
begin
if (Arow=0) then
  begin
    ValueListEditor1.Canvas.fillrect(rect);
    if (_SelectedCol=ACol) then
    begin
      ValueListEditor1.Canvas.Font.Style:=[fsUnderline, fsBold];
      if _SelectedCol=0 then text:='Заменяемая' else text:='Заменяющая';

      ValueListEditor1.Canvas.TextRect(rect, rect.Left, rect.top, text);
    end
    else
    begin
      ValueListEditor1.Canvas.Font.Style:=[];
      if _SelectedCol=0 then text:='Заменяющая' else text:='Заменяемая';
      ValueListEditor1.Canvas.TextRect(rect, rect.Left, rect.top, text);
    end;
  end;
end;

end.
