unit statisticsFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  ParentUnit,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.FileCtrl, registry, interfaceMyFrame;

type
  TStatisticsFrame = class(TFrame, IMyFrame)
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    ToggleSwitch: TToggleSwitch;
    fileslist: TFileListBox;
    ColorDialog1: TColorDialog;
    procedure FrameExit(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToggleSwitchClick(Sender: TObject);
  private
    { Private declarations }
  public
    reg: TReginiFile;
    procedure Applay;
  end;

var
  fdPath:string;
  //savefile: TIniFile;
implementation
{$R *.dfm}

procedure TStatisticsFrame.Applay;
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
end;

procedure TStatisticsFrame.FrameEnter(Sender: TObject);
begin
       //reg.OpenKey('gradient', true);
       //reg:=TRegIniFile.Create() ;
      shape1.Brush.Color:=reg.ReadInteger('gradient','shape1', clwhite);
      shape2.Brush.Color:=reg.ReadInteger('gradient','shape2', clwhite);
      fdPath:=ExtractFileDir( Paramstr(0))+'\maps';
     fileslist.ApplyFilePath(fdpath);
     tag:=0;
end;

procedure TStatisticsFrame.FrameExit(Sender: TObject);
begin
   //reg.OpenKey('gradient', true);
   reg.WriteInteger('gradient', 'shape1', shape1.Brush.Color);
   reg.WriteInteger('gradient', 'shape2', shape2.Brush.Color);
end;

procedure TStatisticsFrame.Shape1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if colordialog1.Execute then
    begin
      (sender as tshape).Brush.Color:=colordialog1.Color;
      if shape1.Brush.Color=shape2.Brush.Color then
      MessageDlg('Значения цветов градиента должны отличаться',TMsgDlgType.mtWarning,[mbOk],0);
    end;
end;

procedure TStatisticsFrame.ToggleSwitchClick(Sender: TObject);
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
