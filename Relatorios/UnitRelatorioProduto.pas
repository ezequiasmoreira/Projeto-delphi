unit UnitRelatorioProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFormRelatorioDeProduto = class(TForm)
    Query: TIBQuery;
    QueryCD_PRODUTO: TIntegerField;
    QueryNM_PRODUTO: TIBStringField;
    QueryCD_BARRA: TIntegerField;
    QueryDATA_ULTIMA_MODIFICACAO: TDateField;
    QueryP_VENDA: TIBBCDField;
    QueryNM_FORNECEDOR: TIBStringField;
    DateInicial: TDateTimePicker;
    DateFinal: TDateTimePicker;
    ButtonImprimir: TButton;
    ButtonFechar: TButton;
    reportProduto: TfrxReport;
    datasetProduto: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioDeProduto: TFormRelatorioDeProduto;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormRelatorioDeProduto.ButtonImprimirClick(Sender: TObject);
begin
  query.Open;
  Query.ParamByName('INICIAL').AsDate:=
      DateInicial.Date;
  Query.ParamByName('FINAL').AsDate:=
      DateFinal.Date;
  query.CLOSE;
  reportProduto.ShowReport();
end;

end.
