unit UnitPesquisaAvancadaDeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaAvancadaDeProduto = class(TFormPesquisaPadrao)
    QueryDT_ULTIMA_VENDA: TDateField;
    QueryDT_ULTIMA_COMPRA: TDateField;
    QueryQUANTIDADE: TIntegerField;
    QueryTEMSORTEIO: TIBStringField;
    QueryCD_PRODUTO: TIntegerField;
    QueryCD_BARRA: TIntegerField;
    QueryNM_PRODUTO: TIBStringField;
    QueryDATA_ULTIMA_MODIFICACAO: TDateField;
    QueryVOLUME: TIBBCDField;
    QueryPESO: TIBBCDField;
    QueryVALIDADE: TDateField;
    QueryLOTE: TIBStringField;
    QueryNM_FORNECEDOR: TIBStringField;
    QueryP_VENDA: TIBBCDField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaAvancadaDeProduto: TFormPesquisaAvancadaDeProduto;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaAvancadaDeProduto.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLcodBarra, SQLnome, SQLfornecedor : string;
begin
  inherited;

  SQLcodigo :=  'SELECT PRODUTO.*, '+
                 'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
                 'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
                 'WHERE PRODUTO.CD_PRODUTO = :CODIGO ' +
                 'ORDER BY NM_PRODUTO';

   SQLcodBarra :=  'SELECT PRODUTO.*, '+
                   'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
                   'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
                   'WHERE PRODUTO.CD_BARRA = :BARRA ' +
                   'ORDER BY NM_PRODUTO';

  SQLnome :=   'SELECT PRODUTO.*,  '+
               'FORNECEDOR. NM_FORNECEDOR FROM PRODUTO  INNER JOIN FORNECEDOR '+
               'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR) ' +
               'WHERE PRODUTO.NM_PRODUTO LIKE :NOME ' +
               'ORDER BY NM_PRODUTO';

  SQLfornecedor := 'SELECT PRODUTO.*, '+
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

procedure TFormPesquisaAvancadaDeProduto.RadioFiltroClick(Sender: TObject);
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
