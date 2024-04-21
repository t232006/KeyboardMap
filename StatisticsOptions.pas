unit StatisticsOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls, inifiles;

type
  TForm2 = class(TForm)
    FilesList: TListBox;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    ColorDialog1: TColorDialog;
    ToggleSwitch1: TToggleSwitch;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToggleSwitch1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
   if fileslist.ItemIndex>-1 then
   Keyboard.mapfile:=fileslist.items[fileslist.itemindex];
   Keyboard.sh1:=shape1.Brush.Color;
   Keyboard.sh2:=shape2.Brush.Color;
   close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
var savefile: TIniFile;
begin
    savefile:=Tinifile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
    savefile.WriteInteger('gradient','shape1', shape1.Brush.Color);
    savefile.WriteInteger('gradient','shape2', shape2.Brush.Color);
    savefile.Destroy;
end;

procedure TForm2.FormCreate(Sender: TObject);
 var savefile: TInifile;
begin
     savefile:=Tinifile.Create(ExtractFileDir(Paramstr(0))+'\params.ini');
      shape1.Brush.Color:=savefile.ReadInteger('gradient','shape1',16777215);
      shape2.Brush.Color:=savefile.ReadInteger('gradient','shape2',16777215);
      savefile.Destroy;
end;

procedure TForm2.FormShow(Sender: TObject);
var
    SR: Tsearchrec;
begin
     fileslist.Clear;
     fdPath:=ExtractFileDir( Paramstr(0))+'\maps\*map.b';
     if FindFirst(fdPath, faNormal,SR)=0 then
     repeat
        FilesList.Items.Add(SR.Name)
     until FindNext(SR)<>0;
     findClose(sr);
end;

procedure TForm2.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if colordialog1.Execute then
    begin
      (sender as tshape).Brush.Color:=colordialog1.Color;
      if shape1.Brush.Color=shape2.Brush.Color then
      MessageDlg('�������� ������ ��������� ������ ����������',TMsgDlgType.mtWarning,[mbOk],0);
    end;
end;

procedure TForm2.ToggleSwitch1Click(Sender: TObject);
begin
    if ToggleSwitch1.State=tssOn then
    begin
      shape1.Enabled:=false;
      shape2.Enabled:=false;
      shape2.Brush.Color:=shape1.Brush.Color;
    end else
    begin
      shape1.Enabled:=true;
      shape2.Enabled:=true;

    end;

end;

end.
