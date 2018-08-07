unit UnitPesquisaAvancadaDeCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaAvancadaCliente = class(TFormPesquisaPadrao)
    QueryCD_CLIENTE: TIntegerField;
    QueryNUN_CONTRATO: TIntegerField;
    QueryNM_CLIENTE: TIBStringField;
    QueryDATA_NASC: TDateField;
    QuerySEXO: TIBStringField;
    QueryEMAIL: TIBStringField;
    QueryTELEFONE: TIBStringField;
    QueryBAIRRO: TIBStringField;
    QueryCIDADE: TIBStringField;
    QueryENDERECO_RUA_NUN: TIBStringField;
    QueryRG: TIBStringField;
    QueryCPF: TIBStringField;
    QueryESTADO: TIBStringField;
    QueryLIMITE: TIntegerField;
    QueryDT_VENCIMENTO_BOLETO: TDateField;
    QueryCEP: TIBStringField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaAvancadaCliente: TFormPesquisaAvancadaCliente;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaAvancadaCliente.ButtonPesquisarClick(Sender: TObject);
var
  SQLnome, SQLcodigo, SQLcpf : string;
begin
  inherited;
  SQLcodigo:= 'SELECT * FROM CLIENTE WHERE CD_CLIENTE = :CODIGO';
  SQLnome:= 'SELECT * FROM CLIENTE WHERE NM_CLIENTE LIKE :NOME ORDER BY NM_CLIENTE';
  SQLcpf:= 'SELECT * FROM CLIENTE WHERE CPF LIKE :CPF ORDER BY NM_CLIENTE';

  CASE RadioFiltro.ItemIndex of
    0: begin
        Conexao.alteraSQL(Query,SQLcodigo);
        if (Trim(MaskEditPesquisar.Text)='') then
        begin
          MaskEditPesquisar.Text:= '1';
        end;
        query.Close;
        query.ParamByName('CODIGO').AsInteger:= StrToInt(Trim(MaskEditPesquisar.Text));
        Query.Open;
    end;
    1 : begin
      Conexao.alteraSQL(Query,SQLnome);
      query.Close;
      query.ParamByName('NOME').AsString:= '%'+MaskEditPesquisar.Text+'%';
      query.Open;
    end;
    2 : begin
      Conexao.alteraSQL(Query,SQLcpf);
      query.Close;
      query.ParamByName('CPF').AsString:= '%'+MaskEditPesquisar.Text+'%';
      query.Open;
    end;
  end;
end;

procedure TFormPesquisaAvancadaCliente.RadioFiltroClick(Sender: TObject);
begin
  inherited;
  case radioFiltro.ItemIndex of
    0: MaskEditPesquisar.EditMask:= '999999';
    1: MaskEditPesquisar.EditMask:= '';
    2: MaskEditPesquisar.EditMask:='';
  end;
  MaskEditPesquisar.Clear;
  MaskEditPesquisar.SetFocus;
end;

end.

