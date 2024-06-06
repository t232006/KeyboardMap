unit StatisticsOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  ParentUnit,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls, inifiles, Vcl.FileCtrl;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    ColorDialog1: TColorDialog;
    ToggleSwitch: TToggleSwitch;
    Label1: TLabel;
    Label2: TLabel;
    fileslist: TFileListBox;
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
  end;

var
  Form2: TForm2;
  fdPath:string;
  savefile: TIniFile;
implementation
{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var j:word;
begin
   j:=0;
   if fileslist.ItemIndex>-1 then

   //
   setlength((Owner as TParentForm).mapfile, fileslist.SelCount);
   //fileslist.Selected[i]
   for var i := 0 to fileslist.Count-1 do
    if fileslist.selected[i] then
    begin
      (Owner as TParentForm).mapfile[j]:=fileslist.items[i];
      inc(j);
    end;
   (Owner as TParentForm).sh1:=shape1.Brush.Color;
   (Owner as TParentForm).sh2:=shape2.Brush.Color;
   if ToggleSwitch.State=tssOff then (Owner as TParentForm).showGradient:=true
   else (Owner as TParentForm).showGradient:=false;
   tag:=1;
   close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
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
begin
     fdPath:=ExtractFileDir( Paramstr(0))+'\maps';
     fileslist.ApplyFilePath(fdpath);
     tag:=0;
end;

procedure TForm2.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if colordialog1.Execute then
    begin
      (sender as tshape).Brush.Color:=colordialog1.Color;
      if shape1.Brush.Color=shape2.Brush.Color then
      MessageDlg('Значения цветов градиента должны отличаться',TMsgDlgType.mtWarning,[mbOk],0);
    end;
end;

procedure TForm2.ToggleSwitch1Click(Sender: TObject);
begin
    if ToggleSwitch.State=tssOn then
    begin
      shape1.Enabled:=false;
      shape2.Enabled:=false;
      //shape2.Brush.Color:=shape1.Brush.Color;
    end else
    begin
      shape1.Enabled:=true;
      shape2.Enabled:=true;
    end;

end;

end.
