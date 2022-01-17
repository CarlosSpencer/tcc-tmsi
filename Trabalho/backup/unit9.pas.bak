unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, FileUtil, Forms, Controls, Graphics, Dialogs,
  DBGrids, DbCtrls, StdCtrls, Buttons, ExtCtrls;

type

  { Tpesquisa }

  Tpesquisa = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    fontepesquisa: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Image1: TImage;
    sqlpesquisa: TSQLQuery;
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  pesquisa: Tpesquisa;

implementation

{$R *.lfm}

{ Tpesquisa }

procedure Tpesquisa.BitBtn2Click(Sender: TObject);
begin
  sqlpesquisa.Active:=False;
  sqlpesquisa.SQL.Clear;
  close;
end;

end.

