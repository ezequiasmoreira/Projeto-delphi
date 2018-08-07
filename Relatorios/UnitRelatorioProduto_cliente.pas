unit UnitRelatorioProduto_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, frxClass, frxDBSet;

type
  TFormRelatorioProduto_cliente = class(TForm)
    ReportProduto_cliente: TfrxReport;
    DatasetProduto_cliente: TfrxDBDataset;
    Query: TIBQuery;
    Radiocliente: TRadioGroup;
    ButtonImprimir: TBitBtn;
    ButtonFechar: TBitBtn;
    EditCod: TLabeledEdit;
    editNome: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    procedure ButtonImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioclienteClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProduto_cliente: TFormRelatorioProduto_cliente;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCliente;

procedure TFormRelatorioProduto_cliente.ButtonFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormRelatorioProduto_cliente.ButtonImprimirClick(Sender: TObject);
begin
  case Radiocliente.ItemIndex of
    0: ReportProduto_cliente.ShowReport();
    1:begin
        query.close;
        query.sql.clear;
        query.sql.add('SELECT CLIENTE.CD_CLIENTE  , CLIENTE.NM_CLIENTE, '+
                      'PRODUTO.NM_PRODUTO, VENDA.CD_VENDA, PRODUTO.P_VENDA '+
                      'FROM CLIENTE INNER JOIN VENDA '+
                      'ON(VENDA. CLIENTE_CD_CLIENTE = CLIENTE.CD_CLIENTE) '+
                      'INNER JOIN ITEM_VENDAS '+
                      'ON (ITEM_VENDAS.VENDA_CD_VENDA = VENDA.CD_VENDA) '+
                      'INNER JOIN PRODUTO '+
                      'ON (ITEM_VENDAS.PRODUTO_CD_PRODUTO = PRODUTO.CD_PRODUTO)  '+
                      ' WHERE  CLIENTE.CD_CLIENTE = :CODIGO '+
                      'ORDER BY CLIENTE.CD_CLIENTE; ');
        query.open;

        query.Open;
        Query.ParamByName('CODIGO').AsInteger:=
            StrToInt(EditCod.Text);
        query.CLOSE;
        ReportProduto_cliente.ShowReport();
    end;

  end;

end;

procedure TFormRelatorioProduto_cliente.RadioclienteClick(Sender: TObject);
begin
  case Radiocliente.ItemIndex of
    0:begin
      EditCod.Enabled:=false;
      editNome.Enabled:= false;
      SpeedButton1.Enabled:=false;

    end;
    1: begin
        EditCod.Enabled:=true;
        editNome.Enabled:= True;
        SpeedButton1.Enabled:=true;
    end;
  end;
end;

procedure TFormRelatorioProduto_cliente.SpeedButton1Click(Sender: TObject);
begin
  try
      FormPesquisaCliente:=TFormPesquisaCliente.Create(Self);
      FormPesquisaCliente.ShowModal;
    finally
      if (FormPesquisaCliente.ModalResult = mrOk) then Begin
        EditCod.TEXT:=
        FormPesquisaCliente.QueryCD_CLIENTE.AsString;

        editNome.Text:=
        FormPesquisaCliente.QueryNM_CLIENTE.AsString;
      End;
      FormPesquisaCliente.Free;
  end;
end;

end.
