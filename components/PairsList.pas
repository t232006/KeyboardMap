unit PairsList;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Grids;

type
  TPairsList = class(TStringGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent);  override;
    function FindRow(needle: string): integer;
    procedure DeleteRow(key: string);
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

procedure TPairsList.DeleteRow(key: string);
var row: integer;
begin
    row:=self.Cols[0].IndexOf(key);
    if row=self.rowcount-1 then exit;
    for var i := row to rowCount-2 do
      begin
        //objects[0,i].Free;objects[1,i].Free;
        objects[0,i]:=objects[0,i+1];
        objects[1,i]:=objects[1,i+1];
        cells[0,i]:=cells[0,i+1];
        cells[1,i]:=cells[1,i+1];
      end;
    objects[0,rowcount-1].Free; objects[1,rowcount-1].Free;
    rowcount:=rowcount-1;
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
  self.rowCount:=rowcount+1;
  objects[0,rowcount-1]:=object1;
  objects[1,rowcount-1]:=object2;
end;

end.
