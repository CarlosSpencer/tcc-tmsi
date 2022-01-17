unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls, DBGrids, Unit2, Unit7;

type

  { Tmenuos }

  Tmenuos = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  menuos: Tmenuos;

implementation

{$R *.lfm}

{ Tmenuos }

procedure Tmenuos.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tmenuos.BitBtn1Click(Sender: TObject);
begin
  //sql.sqlos.Insert;
  //sql.sqlos.FieldByName('codigo_cliente').AsInteger:=1;
  os.Show;
  os.DBEdit2.Text:=DatetoStr(date);
end;

procedure Tmenuos.BitBtn2Click(Sender: TObject);
var
  cod_busca:integer;
begin
  cod_busca:=sql.sqlmenuos.FieldByName('codigo').asinteger;
  sql.sqlos.Locate('codigo',cod_busca,[]);
  sql.sqlos.Edit;
  os.Show;
end;

procedure Tmenuos.BitBtn3Click(Sender: TObject);
var
  cod_busca:integer;
begin
  cod_busca:=sql.sqlmenuos.FieldByName('codigo').asinteger;
  sql.sqlos.Locate('codigo',cod_busca,[]);
  sql.sqlos.Delete;
  sql.sqlos.ApplyUpdates;
  sql.transacao.CommitRetaining;
  sql.sqlmenuos.Refresh;
end;

end.

