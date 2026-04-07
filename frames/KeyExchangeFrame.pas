unit KeyExchangeFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.ValEdit, keyboardunit,System.Generics.Collections, interfaceMyFrame,
  registry, pairslist, scans;

type
TkeyPair=class
  private
  _vk:word;
  _keyName:string;
  FScans: TScans;
    procedure SetVk(const Value: word);
  public
  constructor Create;
  destructor Destroy;
  property Vk:word read _vk write SetVk;
  property KeyName:string read _keyName;
end;
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
    regKeyPath:string;
    //_ButtonsDict: TDictionary<word, word>;
    //_reg: TRegIniFile;
    procedure SetNoRows(const Value: boolean);
  public

    //ExchangeTable: Dictionary<string,string>;
    ButtonsDict: TDictionary<word, word>;
    reg: TRegIniFile;
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
var butFrom, butTo: word;
begin
    ButtonsDict.Clear;
    for var i := 1 to KeyDict.RowCount-2 do
    begin
      ButFrom:=(keydict.Objects[0,i] as TKeyPair).Vk;
      ButTo:=(keydict.Objects[1,i] as TKeyPair).Vk;
      if not(ButtonsDict.ContainsKey(ButFrom)) then
        ButtonsDict.Add(ButFrom, ButTo);
    end;
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
    //stMessage(KeyDict.Handle, WM_PAINT, 0, 0);
    KeyDict.Invalidate;
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

if gdFixed in State then
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
var ss:TStrings; bkey, bvalue:word;
      keyPair:TKeyPair;
      i:byte;
      localReg: TRegIniFile;
begin
    ss:=TStringList.Create;
    localReg:=TRegIniFile.Create(reg.CurrentPath);
    localreg.OpenKey('ButtonsDict',false);
    localreg.GetValueNames(ss);
    i:=0;
    //if ss.Count>0 then

      while i<ss.count-1 do
        begin
          bkey:=localreg.ReadInteger('',ss[i],0);
          bValue:=localreg.ReadInteger('',ss[i+1],0);
          ButtonsDict.Add(bkey,bvalue);
          keyPair:=TKeyPair.Create;
          with keyDict do
          begin
            keyPair.Vk:=bkey;
            Objects[0,rowcount-1]:=keyPair;
            Cells[0,rowCount-1]:=keyPair.keyName;
            keyPair.Vk:=bvalue;
            Objects[1,rowcount-1]:=keyPair;
            Cells[1,rowCount-1]:=keyPair.keyName;
            rowcount:=rowcount+1;
          end;
          inc(i,2);
        end;
    localreg.CloseKey;
    localreg.Free;


end;

procedure TKeyExchange.SaveParams;
var ar:TArray<TPair<word,word>>;
ss: TStringList; i:byte;
    localreg:TRegIniFile;
begin
    ss:=TStringList.Create;
    ar:=ButtonsDict.ToArray;
    localReg:=TRegIniFile.Create(reg.CurrentPath);
    localreg.OpenKey('ButtonsDict',true);
    localreg.GetValueNames(ss);

    if ss.Count>0 then
      for i:= 0 to ss.Count-1 do
         localreg.DeleteKey('',ss[i]);

    for i := Low(ar) to High(ar) do
    begin
      localreg.WriteInteger('','bKey('+inttostr(i)+')',ar[i].Key);
      localreg.WriteInteger('','bValue('+inttostr(i)+')',ar[i].Value);
    end;

    localreg.CloseKey;
    localreg.Free;
end;

procedure TKeyExchange.SetNoRows(const Value: boolean);
begin
     FNoRows:=value;
end;

{ TkeyPair }

constructor TkeyPair.Create;
begin
    FScans:=TScans.Create;
end;

destructor TkeyPair.Destroy;
begin
  inherited;
  FScans.Destroy;
end;

procedure TkeyPair.SetVk(const Value: word);
begin
    _keyName:=FScans.getVirt(value);
    _vk:=value;
end;

end.
