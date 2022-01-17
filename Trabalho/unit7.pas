unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DbCtrls, ExtCtrls, Buttons, ComCtrls, Unit2, Unit5, lcltype, Unit10, types;

type

  { Tos }

  Tos = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Problema: TTabSheet;
    Equipamento: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  os: Tos;

implementation

{$R *.lfm}

{ Tos }

procedure Tos.BitBtn1Click(Sender: TObject);
begin
  sql.sqlos.Post;
  sql.sqlos.ApplyUpdates;
  sql.transacao.CommitRetaining;
  sql.sqlmenuos.Refresh;
  close;
end;

procedure Tos.BitBtn2Click(Sender: TObject);
begin
  sql.sqlos.Cancel;
  sql.sqlmenuos.Refresh;
  close;
end;

procedure Tos.BitBtn3Click(Sender: TObject);
var
  Reply, BoxStyle: Integer;
begin
  BoxStyle := MB_ICONQUESTION + MB_YESNO;
  Reply := Application.MessageBox('Você tem certeza?', 'MessageBoxDemo', BoxStyle);
  if Reply = IDYES then
  begin
       Application.MessageBox('Realizado com Sucesso', 'Reply',MB_ICONINFORMATION);
       sql.sqlos.Edit;
       sql.sqlos.FieldByName('finalizado').asboolean:=FALSE;
       sql.sqlos.Post;
  end;
end;


procedure Tos.BitBtn6Click(Sender: TObject);
begin
   impressao_os.RLReport1.PreviewModal;
end;

end.

