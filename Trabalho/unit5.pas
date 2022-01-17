unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, Buttons, Unit2;

type

  { Tcliente }

  Tcliente = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  cliente: Tcliente;

implementation

{$R *.lfm}

{ Tcliente }

procedure Tcliente.BitBtn1Click(Sender: TObject);
begin
  sql.sqlcliente.Post;
  sql.sqlcliente.ApplyUpdates;
  sql.transacao.CommitRetaining;
  sql.sqlmenucliente.Refresh;
  close;
end;

procedure Tcliente.BitBtn2Click(Sender: TObject);
begin
  sql.sqlcliente.Cancel;
  sql.sqlmenucliente.Refresh;
  close;
end;

procedure Tcliente.DBRadioGroup1Change(Sender: TObject);
begin
  if (dbradiogroup1.ItemIndex=0) then
  begin
    label2.Caption:='Nome';
    label3.Caption:='Apelido';
    label14.Caption:='Nascimento';
    dbedit15.Enabled:=True;
    dbedit16.Enabled:=False;
    dbedit14.Enabled:=True;
    dbedit17.Enabled:=False;
  end;
  if (dbradiogroup1.ItemIndex=1) then
  begin
    label2.Caption:='Razão Social';
    label3.Caption:='Nome Fantasia';
    label14.Caption:='Abertura';
    dbedit14.Enabled:=False;
    dbedit16.Enabled:=True;
    dbedit15.Enabled:=False;
    dbedit17.Enabled:=True;
  end;
end;

end.

