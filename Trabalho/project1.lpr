program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, printer4lazarus, fortes324forlaz, Unit2, Unit3, Unit5, Unit1, Unit7,
  Unit8, Unit4, Unit6, Unit9, Unit10, Unit11;

{$R *.res}

begin
  Application.Title:='Virtual Sistemas';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Tsql, sql);
  Application.CreateForm(Tmenuprincipal, menuprincipal);
  Application.CreateForm(Topcoes, opcoes);
  Application.CreateForm(Tcliente, cliente);
  Application.CreateForm(Tos, os);
  Application.CreateForm(Tsobre, sobre);
  Application.CreateForm(Tfuncionario, funcionario);
  Application.CreateForm(Trecarga, recarga);
  Application.CreateForm(Tpesquisa, pesquisa);
  Application.CreateForm(Timpressao_os, impressao_os);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

