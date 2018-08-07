unit UnitPesquisaDeCartaoPontos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaCartaoPontos = class(TFormPesquisaPadrao)
    QueryNUN_CARTAO: TIntegerField;
    QueryACUMULA_PONTOS: TIntegerField;
    QueryNM_CLIENTE: TIBStringField;
    QueryCPF: TIBStringField;
    DatasetCartao_pontos: TfrxDBDataset;
    ReportCartao_pontos: TfrxReport;
    QueryCLIENTE_CD_CLIENTE: TIntegerField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCartaoPontos: TFormPesquisaCartaoPontos;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaCartaoPontos.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportCartao_pontos.ShowReport();
end;

procedure TFormPesquisaCartaoPontos.ButtonPesquisarClick(Sender: TObject);
var
  SQLnumero, SQLnome, SQLcpf :string;
begin
  inherited;
  SQLnumero := 'SELECT CARTAO_PONTOS.*, CLIENTE. NM_CLIENTE, CLIENTE.CPF '+
               'FROM CARTAO_PONTOS INNER JOIN CLIENTE '+
               'ON (CLIENTE.CD_CLIENTE = CARTAO_PONTOS.CLIENTE_CD_CLIENTE) '+
               'WHERE CARTAO_PONTOS.NUN_CARTAO= :NUMERO ' +
               'ORDER BY DATA_CARTAO';

  SQLnome :=   'SELECT CARTAO_PONTOS.*, CLIENTE. NM_CLIENTE, CLIENTE.CPF '+
               'FROM CARTAO_PONTOS INNER JOIN CLIENTE '+
               'ON (CLIENTE.CD_CLIENTE = CARTAO_PONTOS.CLIENTE_CD_CLIENTE) '+
               'WHERE CLIENTE.NM_CLIENTE LIKE :NOME '+
                'ORDER BY DATA_CARTAO';

  SQLcpf :=   'SELECT CARTAO_PONTOS.*, CLIENTE. NM_CLIENTE, CLIENTE.CPF '+
               'FROM CARTAO_PONTOS INNER JOIN CLIENTE '+
               'ON (CLIENTE.CD_CLIENTE = CARTAO_PONTOS.CLIENTE_CD_CLIENTE) '+
               'WHERE CLIENTE.CPF LIKE :CPF1 ' +
               'ORDER BY DATA_CARTAO ';

  case RadioFiltro.ItemIndex of
    0: BEGIN
      Conexao.alteraSQL(Query,SQLnumero);
      if (trim(MaskEditPesquisar.Text)='') then
        MaskEditPesquisar.Text:= '1';
      query.Close;
      query.ParamByName('NUMERO').AsInteger:= StrToInt(trim(MaskEditPesquisar.Text));
      query.Open;
    END;
    1: begin
      Conexao.alteraSQL(query,SQLnome);
      query.Close;
      query.ParamByName('NOME').AsString:= '%'+MaskEditPesquisar.Text+'%';
      Query.Open;
    end;
    2: begin
      Conexao.alteraSQL(query,SQLcpf);
      query.Close;
      query.ParamByName('CPF1').AsString:= '%'+MaskEditPesquisar.Text+'%';
      Query.Open;
    end;
  end;
end;

procedure TFormPesquisaCartaoPontos.RadioFiltroClick(Sender: TObject);
begin
  inherited;
  case RadioFiltro.ItemIndex of
    0: MaskEditPesquisar.EditMask:= '999999';
    1: MaskEditPesquisar.EditMask:= '';
    2: MaskEditPesquisar.EditMask:= '';
  end;
  MaskEditPesquisar.Clear;
  MaskEditPesquisar.SetFocus;
end;

end.
