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
  private
  public
    //ExchangeTable: Dictionary<string,string>;
    procedure Applay;
  end;

implementation
{$R *.dfm}

{ TFrame1 }

{ TKeyExchange }

procedure TKeyExchange.Applay;
begin

end;

end.
