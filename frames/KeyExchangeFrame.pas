unit KeyExchangeFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.ValEdit, keyboardunit,System.Generics.Collections, interfaceMyFrame,
  registry, pairslist;

type
  TKeyExchange = class(TFrame, IMyFrame)
    Label1: TLabel;
    DelButton: TButton;
    KeyDict: TPairsList;
    procedure KeyDict1DrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
    procedure DelButtonClick(Sender: TObject);
    procedure KeyDictMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FSelectedRow: byte;
    FSelectedCol: byte;
    FNoRows:boolean;
    //_ButtonsDict: TDictionary<word, word>;

    procedure SetNoRows(const Value: boolean);
  public
    reg: TRegIniFile;
    //ExchangeTable: Dictionary<string,string>;
    ButtonsDict: TDictionary<word, word>;
    property NoRows: boolean read FNoRows write SetNoRows default true;
    property _SelectedCol: byte read FSelectedCol;
    constructor Create(AOWner: TComponent); override;
    procedure Applay;
    procedure SaveParams;
    procedure LoadParams;
    procedure DrawTitle(SelectedCol: byte);
  end;

implementation
{$R *.dfm}

{ TFrame1 }

{ TKeyExchange }

procedure TKeyExchange.Applay;
//var butFrom, butTo: word;
begin
{    for var i := 0 to KeyDict.RowCount-1 do
    begin
      ButFrom:=strtoint('$'+keydict.Keys[i]);
      ButTo:=strtoint('$'+keydict.Values[keydict.Keys[i]]);
      _ButtonsDict.Add(ButFrom, ButTo);
    end;}
end;

constructor TKeyExchange.Create(AOWner: TComponent);
begin
  inherited;
  FNoRows:=true;
  ButtonsDict:= TDictionary<word, word>.Create;
end;

procedure TKeyExchange.DelButtonClick(Sender: TObject);
begin
    KeyDict.DeleteRow(keyDict.Cells[0,FSelectedRow]);
  DelButton.Enabled:=false;
end;

procedure TKeyExchange.DrawTitle(SelectedCol: byte);
begin
    FSelectedCol:=selectedCol;
    PostMessage(KeyDict.Handle, WM_PAINT, 0, 0);
end;

procedure TKeyExchange.KeyDict1DrawCell(Sender: TObject; ACol,
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
var curCell: TPoint;
begin
  keyDict.MouseToCell(x,y,curCell.X, curCell.Y);
  FSelectedRow:=curCell.Y;
  FnoRows:=false;
    DelButton.Enabled:=true;
end;

procedure TKeyExchange.LoadParams;
begin

end;

procedure TKeyExchange.SaveParams;
var ss: TStrings;

begin

end;

procedure TKeyExchange.SetNoRows(const Value: boolean);
begin
     FNoRows:=value;
end;

end.
