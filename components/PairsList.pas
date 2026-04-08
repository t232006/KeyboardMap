unit PairsList;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Grids;

type
  TStringGrid = class(vcl.Grids.TStringGrid);
  TPairsList = class(TStringGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent);  override;
    function FindRow(needle: string): integer;
    procedure RemoveRow(row: longint);
    procedure InsertRow(object1, object2: TObject);
    function Find(needle: string): TObject;
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TPairsList]);
end;

{ TPairsList }

constructor TPairsList.Create(AOwner: TComponent);
begin
  inherited;
  RowCount:=2;
  ColCount:=2;
  Options:=Options+[goRowSelect];
end;

procedure TPairsList.RemoveRow(row: longint);
begin
  self.DeleteRow(row);
end;

function TPairsList.Find(needle: string): TObject;
begin
   row:=self.Cols[0].IndexOf(needle);
   result:=objects[1,row];
end;

function TPairsList.FindRow(needle: string): integer;
var r:integer;
begin
  r:=self.Cols[0].IndexOf(needle);
  if r>-1 then
    row:=r;
  result:=r;
end;

procedure TPairsList.InsertRow(object1, object2: TObject);
begin
  objects[0,rowcount-1]:=object1;
  objects[1,rowcount-1]:=object2;
  self.rowCount:=rowcount+1;
end;

end.
