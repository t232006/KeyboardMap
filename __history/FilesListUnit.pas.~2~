unit FilesListUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup;

type
  TForm2 = class(TForm)
    FilesList: TListBox;
    ButtonGroup1: TButtonGroup;
    procedure FormCreate(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  fdPath:string;
implementation
 uses MainUnit;
{$R *.dfm}

procedure TForm2.ButtonGroup1Items0Click(Sender: TObject);
begin
  form1.mapfile:=fileslist.items[fileslist.itemindex];
  close;
end;

procedure TForm2.ButtonGroup1Items1Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
    SR: Tsearchrec;
begin
     fdPath:=ExtractFileDir( Paramstr(0))+'\maps\*map.b';
     if FindFirst(fdPath, faNormal,SR)=0 then
     repeat
        FilesList.Items.Add(SR.Name)
     until FindNext(SR)<>0;
     findClose(sr);
end;

end.
