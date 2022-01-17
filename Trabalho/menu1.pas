unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  DBGrids, DbCtrls, StdCtrls, Unit5, Unit2;

type

  { Tmenuclientes }

  Tmenuclientes = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  menuclientes: Tmenuclientes;

implementation

{$R *.lfm}

{ Tmenuclientes }

procedure Tmenuclientes.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tmenuclientes.Edit1Change(Sender: TObject);
begin
  sql.sqlmenucliente.Close;
  sql.sqlmenucliente.SQL.Clear;
  sql.sqlmenucliente.SQL.Add(' select codigo, nome, telefone1, telefone2 ');
  sql.sqlmenucliente.SQL.Add(' from cliente where nome ');
  sql.sqlmenucliente.SQL.Add(' like '+#39+'%'+edit1.text+'%' +#39 +' order by nome asc');
  sql.sqlmenucliente.Open;
end;

procedure Tmenuclientes.BitBtn1Click(Sender: TObject);
begin
  //sql.sqlcliente.Insert;
  cliente.Show;
  cliente.DBEdit9.Text:=DatetoStr(date);
  cliente.DBRadioGroup1.ItemIndex:=0;
end;

procedure Tmenuclientes.BitBtn2Click(Sender: TObject);
var
  cod_busca:integer;
begin
  cod_busca:=sql.sqlmenucliente.FieldByName('codigo').asinteger;
  sql.sqlcliente.Locate('codigo',cod_busca,[]);
  sql.sqlcliente.Edit;
  cliente.Show;
end;

procedure Tmenuclientes.BitBtn3Click(Sender: TObject);
var
  cod_busca:integer;
begin
  cod_busca:=sql.sqlmenucliente.FieldByName('codigo').asinteger;
  sql.sqlcliente.Locate('codigo',cod_busca,[]);
  sql.sqlcliente.Delete;
  sql.sqlcliente.ApplyUpdates;
  sql.transacao.CommitRetaining;
  sql.sqlmenucliente.Refresh;

end;

end.

