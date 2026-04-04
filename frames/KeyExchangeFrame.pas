unit KeyExchangeFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.ValEdit, keyboardunit,System.Generics.Collections;

type
  TKeyExchange = class(TFrame)
    Label1: TLabel;
    KeyDict: TValueListEditor;
    DelButton: TButton;
    procedure KeyDictDrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
    procedure KeyDictMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DelButtonClick(Sender: TObject);
  private
    FSelectedCol: byte;
    FNoRows:boolean;
    procedure SetNoRows(const Value: boolean);
  public
    //ExchangeTable: Dictionary<string,string>;
    property NoRows: boolean read FNoRows write SetNoRows default true;
    property _SelectedCol: byte read FSelectedCol;
    constructor Create(AOWner: TComponent); override;
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

constructor TKeyExchange.Create(AOWner: TComponent);
begin
  inherited;
  FNoRows:=true;
end;

procedure TKeyExchange.DelButtonClick(Sender: TObject);
begin
    KeyDict.DeleteRow(KeyDict.Row);
  DelButton.Enabled:=false;
end;

procedure TKeyExchange.DrawTitle(SelectedCol: byte);
begin
    FSelectedCol:=selectedCol;
    PostMessage(KeyDict.Handle, WM_PAINT, 0, 0);
end;

procedure TKeyExchange.KeyDictDrawCell(Sender: TObject; ACol,
  ARow: LongInt; Rect: TRect; State: TGridDrawState);
var text:string;
begin
  if FNoRows then
  begin
    KeyDict.Canvas.Brush.Color := clWindow;
    KeyDict.Canvas.Font.Color := clBlack;

    KeyDict.Canvas.FillRect(Rect);
    KeyDict.Canvas.TextRect(
    Rect,
    Rect.Left + 2,
    Rect.Top + 2,
    KeyDict.Cells[ACol, ARow]
  );
  end;

if (Arow=0) then
  begin
    KeyDict.Canvas.fillrect(rect);
    if (_SelectedCol=ACol) then
    begin
      KeyDict.Canvas.Font.Style:=[fsUnderline, fsBold];
      if _SelectedCol=0 then text:='Заменяемая' else text:='Заменяющая';

      KeyDict.Canvas.TextRect(rect, rect.Left, rect.top, text);
    end
    else
    begin
      KeyDict.Canvas.Font.Style:=[];
      if _SelectedCol=0 then text:='Заменяющая' else text:='Заменяемая';
      KeyDict.Canvas.TextRect(rect, rect.Left, rect.top, text);
    end;
  end;
end;

procedure TKeyExchange.KeyDictMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   FnoRows:=false;
    DelButton.Enabled:=true;
end;

procedure TKeyExchange.SetNoRows(const Value: boolean);
begin
     FNoRows:=value;
end;

end.
