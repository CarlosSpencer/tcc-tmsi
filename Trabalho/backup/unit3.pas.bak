unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, Buttons, Unit2;

type

  { Topcoes }

  Topcoes = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  opcoes: Topcoes;

implementation

{$R *.lfm}

{ Topcoes }

procedure Topcoes.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Topcoes.BitBtn2Click(Sender: TObject);
begin
  sql.sqlopcoes.ApplyUpdates;
  sql.transacao.CommitRetaining;
  close;
end;

end.

