unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, pqconnection, sqldb, db, FileUtil;

type

  { Tsql }

  Tsql = class(TDataModule)
    banco: TPQConnection;
    fontemenurecarga: TDataSource;
    fonterecarga: TDataSource;
    fontemenufuncionario: TDataSource;
    fontefuncionario: TDatasource;
    fontecidade: TDatasource;
    fonteos: TDatasource;
    fontemenuos: TDatasource;
    fontemenucliente: TDatasource;
    fontecliente: TDatasource;
    fonteopcoes: TDatasource;
    sqlopcoes: TSQLQuery;
    sqlcliente: TSQLQuery;
    sqlmenucliente: TSQLQuery;
    sqlmenuos: TSQLQuery;
    sqlos: TSQLQuery;
    sqlcidade: TSQLQuery;
    sqlfuncionario: TSQLQuery;
    sqlmenufuncionario: TSQLQuery;
    sqlmenurecarga: TSQLQuery;
    sqlrecarga: TSQLQuery;
    transacao: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure sqlopcoesAfterDelete(DataSet: TDataSet);
    procedure sqlopcoesAfterPost(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  sql: Tsql;

implementation

{$R *.lfm}

{ Tsql }

procedure Tsql.sqlopcoesAfterPost(DataSet: TDataSet);
begin
  sqlopcoes.ApplyUpdates;
  transacao.CommitRetaining;
  sqlopcoes.Refresh;
end;

procedure Tsql.sqlopcoesAfterDelete(DataSet: TDataSet);
begin
  sqlopcoes.ApplyUpdates;
  transacao.CommitRetaining;
  sqlopcoes.Refresh;
end;

procedure Tsql.DataModuleCreate(Sender: TObject);
begin

end;

end.

