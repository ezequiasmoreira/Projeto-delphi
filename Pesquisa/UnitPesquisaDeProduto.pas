unit UnitPesquisaDeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaDeProduto = class(TFormPesquisaPadrao)
    QueryCD_PRODUTO: TIntegerField;
    QueryCD_BARRA: TIntegerField;
    QueryNM_PRODUTO: TIBStringField;
    QueryQUANTIDADE: TIntegerField;
    QueryNM_FORNECEDOR: TIBStringField;
    QueryCD_FORNECEDOR: TIntegerField;
    DatasetProduto: TfrxDBDataset;
    ReportProduto: TfrxReport;
    QueryP_VENDA: TIBBCDField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaDeProduto: TFormPesquisaDeProduto;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaDeProduto.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportProduto.ShowReport();
end;

procedure TFormPesquisaDeProduto.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLcodBarra, SQLnome, SQLfornecedor : string;
begin
  inherited;
   SQLcodigo :=  'SELECT P_VENDA, CD_PRODUTO, CD_BARRA, NM_PRODUTO, QUANTIDADE, '+
                 'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
                 'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
                 'WHERE PRODUTO.CD_PRODUTO = :CODIGO ' +
                 'ORDER BY NM_PRODUTO';

   SQLcodBarra :=  'SELECT P_VENDA, CD_PRODUTO, CD_BARRA, NM_PRODUTO, QUANTIDADE, '+
                   'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
                   'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
                   'WHERE PRODUTO.CD_BARRA = :BARRA ' +
                   'ORDER BY NM_PRODUTO';

  SQLnome :=   'SELECT P_VENDA, CD_PRODUTO, CD_BARRA, NM_PRODUTO, QUANTIDADE, '+
               'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
               'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
               'WHERE PRODUTO.NM_PRODUTO LIKE :NOME ' +
               'ORDER BY NM_PRODUTO';

  SQLfornecedor := 'SELECT P_VENDA, CD_PRODUTO, CD_BARRA, NM_PRODUTO, QUANTIDADE, '+
                   'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
                   'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
                   'WHERE FORNECEDOR.NM_FORNECEDOR LIKE :FORNECEDOR ' +
                   'ORDER BY NM_PRODUTO';

  case RadioFiltro.ItemIndex of
    0: BEGIN
      Conexao.alteraSQL(Query,SQLcodigo);
      if (trim(MaskEditPesquisar.Text)='') then
        MaskEditPesquisar.Text:= '1';
      query.Close;
      query.ParamByName('CODIGO').AsInteger:= StrToInt(trim(MaskEditPesquisar.Text));
      query.Open;
    END;
    1: begin
      Conexao.alteraSQL(query,SQLcodBarra);
      query.Close;
      query.ParamByName('BARRA').AsInteger:= StrToInt(trim(MaskEditPesquisar.Text));
      Query.Open;
    end;
    2: begin
      Conexao.alteraSQL(query,SQLnomE);
      query.Close;
      query.ParamByName('NOME').AsString:= '%'+MaskEditPesquisar.Text+'%';
      Query.Open;
    end;
    3: begin
      Conexao.alteraSQL(query,SQLfornecedor);
      query.Close;
      query.ParamByName('FORNECEDOR').AsString:= '%'+MaskEditPesquisar.Text+'%';
      Query.Open;
    end;
  end;

end;

procedure TFormPesquisaDeProduto.RadioFiltroClick(Sender: TObject);
begin
  inherited;
  case RadioFiltro.ItemIndex of
    0: MaskEditPesquisar.EditMask:= '999999';
    1: MaskEditPesquisar.EditMask:= '99999999999';
    2: MaskEditPesquisar.EditMask:= '';
    3: MaskEditPesquisar.EditMask:= '';
  end;
  MaskEditPesquisar.Clear;
  MaskEditPesquisar.SetFocus;
end;

end.
