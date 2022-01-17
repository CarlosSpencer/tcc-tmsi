unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, PrintersDlgs, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ComCtrls, PopupNotifier, ExtCtrls, DbCtrls, DBGrids, unit2, unit3,
  Unit4, unit5, Unit6, unit7, Unit8, types, lcltype, Buttons, ExtDlgs,
  ButtonPanel, EditBtn, Calendar,unit11;

type

  { Tmenuprincipal }

  Tmenuprincipal = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    botoesclientes1: TToolBar;
    botoesclientes2: TToolBar;
    botoesclientes3: TToolBar;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    menufuncioanrio: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    icones: TImageList;
    botoesmenu: TToolBar;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    aba_funcionarios: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Timer1: TTimer;
    botoesclientes: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton3: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton4: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    ToolButton5: TToolButton;
    ToolButton50: TToolButton;
    ToolButton51: TToolButton;
    ToolButton52: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure botoesmenuClick(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure ToolButton41Click(Sender: TObject);
    procedure ToolButton49Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton51Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  menuprincipal: Tmenuprincipal;

implementation

{$R *.lfm}

{ Tmenuprincipal }

procedure Tmenuprincipal.ToolButton8Click(Sender: TObject);
begin
  close;
end;

procedure Tmenuprincipal.ToolButton7Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=5;
end;

procedure Tmenuprincipal.ToolButton1Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=1;
end;

procedure Tmenuprincipal.ToolButton20Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=0;
end;

procedure Tmenuprincipal.ToolButton25Click(Sender: TObject);
begin
  sql.sqlos.Insert;
  os.DBEdit2.Text:=DatetoStr(date);;
  sql.sqlcliente.Locate('codigo','1',[]);
  //os.DBComboBox1.Caption:=;
  os.Show;
end;

procedure Tmenuprincipal.ToolButton26Click(Sender: TObject);
  var
    cod_busca:integer;
  begin
    cod_busca:=sql.sqlmenuos.FieldByName('codigo').asinteger;
    sql.sqlos.Locate('codigo',cod_busca,[]);
    sql.sqlos.Edit;
    os.Show;
end;

procedure Tmenuprincipal.ToolButton27Click(Sender: TObject);
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

procedure Tmenuprincipal.ToolButton41Click(Sender: TObject);
begin
  sql.sqlfuncionario.Insert;
  funcionario.Show;
  funcionario.dbedit7.Caption:=opcoes.dbedit7.Caption;
  funcionario.DBComboBox1.Caption:=opcoes.DBComboBox1.Caption;
end;

procedure Tmenuprincipal.ToolButton49Click(Sender: TObject);
begin
  if (panel1.Visible=False) then
    begin
       panel1.Visible:=true;
    end
  else
       panel1.Visible:=false;
end;

procedure Tmenuprincipal.ToolButton4Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=3;
end;

procedure Tmenuprincipal.ToolButton51Click(Sender: TObject);
begin
  if (panel2.Visible=False) then
    begin
       panel2.Visible:=true;
    end
  else
       panel2.Visible:=false;
end;

procedure Tmenuprincipal.ToolButton6Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=2;
end;

procedure Tmenuprincipal.Timer1Timer(Sender: TObject);
begin
  statusbar1.Panels.Items[0].Text:=datetostr(date);
  statusbar1.Panels.Items[1].Text:=timetostr(time);
end;

procedure Tmenuprincipal.ToolButton10Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=4;
end;

procedure Tmenuprincipal.ToolButton13Click(Sender: TObject);
begin
  sobre.Show;
end;

procedure Tmenuprincipal.ToolButton14Click(Sender: TObject);
begin
  pagecontrol1.PageIndex:=0
end;

procedure Tmenuprincipal.ToolButton17Click(Sender: TObject);
begin
  sql.sqlcliente.Insert;
  cliente.Show;
  cliente.DBEdit9.Text:=DatetoStr(date);
  cliente.DBRadioGroup1.ItemIndex:=0;
  cliente.dbedit7.Caption:=opcoes.dbedit7.Caption;
  cliente.dbedit8.Caption:=opcoes.dbedit8.Caption;
  cliente.DBComboBox1.Caption:=opcoes.DBComboBox1.Caption;
end;

procedure Tmenuprincipal.ToolButton18Click(Sender: TObject);
  var
  cod_busca:integer;
begin
  cod_busca:=sql.sqlmenucliente.FieldByName('codigo').asinteger;
  sql.sqlcliente.Locate('codigo',cod_busca,[]);
  sql.sqlcliente.Edit;
  cliente.Show;
end;

procedure Tmenuprincipal.ToolButton19Click(Sender: TObject);
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

procedure Tmenuprincipal.FormCreate(Sender: TObject);
begin
  pagecontrol1.ShowTabs:=false;
  pagecontrol1.PageIndex:=0;
  edit3.Caption:=sql.banco.HostName;
end;

procedure Tmenuprincipal.Edit2Change(Sender: TObject);
begin
  sql.sqlmenucliente.Close;
  sql.sqlmenucliente.SQL.Clear;
  sql.sqlmenucliente.SQL.Add(' select codigo, nome, telefone1, telefone2 ');
  sql.sqlmenucliente.SQL.Add(' from cliente where nome ');
  sql.sqlmenucliente.SQL.Add(' like '+#39+'%'+edit1.text+'%' +#39 +' order by nome asc');
  sql.sqlmenucliente.Open;
end;

procedure Tmenuprincipal.BitBtn1Click(Sender: TObject);
begin
  opcoes.Show;
end;

procedure Tmenuprincipal.BitBtn3Click(Sender: TObject);
begin
  sql.banco.Connected:=False;
  sql.banco.HostName:=edit3.caption;
  sql.banco.Connected:=True;
end;

procedure Tmenuprincipal.BitBtn4Click(Sender: TObject);
begin
  if (sql.banco.Connected=True) then
    begin
       showmessage('Banco já esta conectado!!!');
    end
    else
        begin
          sql.banco.HostName:=edit3.Text;
          sql.banco.Connected:=True;
          if (sql.banco.Connected=True) then
            begin
               showmessage('Teste com banco OK');
               sql.banco.Connected:=False;
            end
          else
          begin
              showmessage('Não foi possivel conectar');
          end;
        end;

end;

procedure Tmenuprincipal.botoesmenuClick(Sender: TObject);
begin

end;

procedure Tmenuprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_f8) then
    pagecontrol1.PageIndex:=1;
end;

procedure Tmenuprincipal.FormShow(Sender: TObject);
begin
  Form1.ShowModal;
  if (form1.nome='') then
    begin
       close;
    end;
end;

procedure Tmenuprincipal.RadioGroup1Click(Sender: TObject);
begin
  if (radiogroup1.ItemIndex=0) then
    begin
       edit3.Caption:='127.0.0.1';
       edit3.ReadOnly:=True;
       edit3.Color:=clSilver;
    end;
  if (radiogroup1.ItemIndex=1) then
    begin
       edit3.Caption:='0.0.0.0';
       edit3.ReadOnly:=False;
       edit3.Color:=clNone;
    end;
end;

end.

