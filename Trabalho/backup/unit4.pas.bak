unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, Buttons, Unit2;

type

  { Tfuncionario }

  Tfuncionario = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  funcionario: Tfuncionario;

implementation

{$R *.lfm}

{ Tfuncionario }

procedure Tfuncionario.BitBtn1Click(Sender: TObject);
begin
  sql.sqlfuncionario.Post;
  sql.sqlfuncionario.ApplyUpdates;
  sql.transacao.CommitRetaining;
  sql.sqlmenufuncionario.Refresh;
  close;
end;

procedure Tfuncionario.BitBtn2Click(Sender: TObject);
begin
  sql.sqlfuncionario.Cancel;
  sql.sqlmenufuncionario.Refresh;
  close;
end;

end.

