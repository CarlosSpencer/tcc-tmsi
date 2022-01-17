unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBCtrls,
  maskedit, StdCtrls, Buttons, unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
    codigo: string;
    nome: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MaskEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  codigo := '';
  nome := '';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if (edit1.Text = sql.sqlfuncionario.FieldByName('nome').AsString) then
  begin
    ShowMessage('Acesso permitido');
    codigo := sql.sqlfuncionario.FieldByName('codigo').AsString;
    nome := sql.sqlfuncionario.FieldByName('nome').AsString;
    Close;
  end
  else
  begin
    ShowMessage('Senha incorreta!');
    codigo := '';
    nome := '';
  end;
end;

end.

