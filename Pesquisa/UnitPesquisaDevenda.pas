unit UnitPesquisaDevenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadraoMestreDetalhe,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisadeVendas = class(TFormPesquisaPadraoMestreDetalhe)
    QueryItemCD_VENDA: TIntegerField;
    QueryItemCD_BARRA: TIntegerField;
    QueryItemP_VENDA: TIBBCDField;
    QueryItemQUANTIDADE: TIntegerField;
    QueryDATA_COMPRA: TDateField;
    QueryNM_CLIENTE: TIBStringField;
    QueryNM_FUNCIONARIO: TIBStringField;
    QueryCD_VENDA: TIntegerField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure QueryAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisadeVendas: TFormPesquisadeVendas;

implementation

{$R *.dfm}

uses validacao, UnitTransacao;

procedure TFormPesquisadeVendas.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLCODIGOITEM:String;
begin
  inherited;
  SQLcodigo:=  'SELECT  VENDA.CD_VENDA,VENDA.DATA_COMPRA, CLIENTE. NM_CLIENTE, FUNCIONARIO. NM_FUNCIONARIO '+
  'FROM VENDA INNER JOIN CLIENTE ON (CLIENTE.CD_CLIENTE = VENDA. CLIENTE_CD_CLIENTE) '+
  'INNER JOIN FUNCIONARIO ON (FUNCIONARIO.CD_FUNCIONARIO = VENDA.FUNCIONARIO_CD_FUNCIONARIO) '+
  'WHERE VENDA.CD_VENDA = :CODIGO ORDER BY VENDA.CD_VENDA;';
  SQLCODIGOITEM:= 'SELECT VENDA.CD_VENDA,  PRODUTO.CD_BARRA,  PRODUTO.P_VENDA, '+
    'PRODUTO.QUANTIDADE FROM VENDA INNER JOIN ITEM_VENDAS '+
    'ON(ITEM_VENDAS.VENDA_CD_VENDA= VENDA.CD_VENDA) INNER JOIN PRODUTO  '+
    'ON( PRODUTO.CD_PRODUTO = ITEM_VENDAS.PRODUTO_CD_PRODUTO) '+
    'WHERE ITEM_VENDAS.VENDA_CD_VENDA =:CODIGO2 '+
     'ORDER BY ITEM_VENDAS.VENDA_CD_VENDA; ';



  case RadioFiltro.ItemIndex of
    0:BEGIN
      Conexao.alteraSQL(Query,SQLcodigo);
      if (Trim(MaskEditPesquisar.Text)='') then
        begin
          MaskEditPesquisar.Text:= '1';
        end;
        query.Close;
        query.ParamByName('CODIGO').AsInteger:= StrToInt(Trim(MaskEditPesquisar.Text));
        Query.Open;
        Conexao.alteraSQL(QueryITEM,SQLCODIGOITEM);

        QueryItem.Close;
        QueryItem.ParamByName('CODIGO2').AsInteger:= StrToInt(Trim(MaskEditPesquisar.Text));
        QueryItem.Open;
    END;
   
  end;

end;

procedure TFormPesquisadeVendas.QueryAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QueryItem.Close;
  QueryItem.ParamByName('CODIGO').AsInteger:=
  QueryCD_VENDA.AsInteger;
  QueryItem.Open;
end;

end.
