unit UnitClienteAniversario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFormRelatorioClienteAniversario = class(TForm)
    DatasetAniversario: TfrxDBDataset;
    Query: TIBQuery;
    Dt_Inicio: TDateTimePicker;
    Dt_Final: TDateTimePicker;
    Label1: TLabel;
    ButtonImprimir: TBitBtn;
    ButtonFechar: TBitBtn;
    reporteNiver: TfrxReport;
    procedure ButtonImprimirClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClienteAniversario: TFormRelatorioClienteAniversario;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormRelatorioClienteAniversario.ButtonFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelatorioClienteAniversario.ButtonImprimirClick(Sender: TObject);
begin
  query.Open;
  Query.ParamByName('INICIAL').AsDate:=
      Dt_Inicio.Date;
  Query.ParamByName('FINAL').AsDate:=
      Dt_Final.Date;
  query.CLOSE;
  ReporteNiver.ShowReport();
end;

end.
