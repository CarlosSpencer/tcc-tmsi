unit Unit10;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RLReport, RLPDFFilter, Forms, Controls, Graphics,
  Dialogs;

type

  { Timpressao_os }

  Timpressao_os = class(TForm)
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLReport1: TRLReport;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  impressao_os: Timpressao_os;

implementation

{$R *.lfm}

end.

