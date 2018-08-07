unit UnitPesquisaAvancadaDeFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaAvancadaDeFornecedor = class(TFormPesquisaPadrao)
    QueryPESSOA_FIS_JUR: TIBStringField;
    QueryCD_FORNECEDOR: TIntegerField;
    QueryNM_FORNECEDOR: TIBStringField;
    QueryCATEGORIA: TIBStringField;
    QueryESTADO: TIBStringField;
    QueryCIDADE: TIBStringField;
    QueryTELEFONE: TIBStringField;
    QueryEMAIL: TIBStringField;
    QueryENDERECO: TIBStringField;
    QueryCNJP: TIBStringField;
    QueryCEP: TIBStringField;
    QueryBAIRRO: TIBStringField;
    QueryFAX: TIBStringField;
    QueryPESSOA_CONTATO: TIBStringField;
    QueryREPRESENTANTE: TIBStringField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaAvancadaDeFornecedor: TFormPesquisaAvancadaDeFornecedor;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaAvancadaDeFornecedor.ButtonPesquisarClick(
  Sender: TObject);
var
 SQLnome, SQLcodigo, SQLcnpj : string;
begin
  inherited;
  SQLcodigo:= 'SELECT * FROM FORNECEDOR WHERE CD_FORNECEDOR = :COD_FORNEC';
  SQLnome:= 'SELECT * FROM FORNECEDOR WHERE NM_FORNECEDOR LIKE :NOM_FORNEC ORDER BY NM_FORNECEDOR';
  SQLcnpj:= 'SELECT * FROM FORNECEDOR WHERE CNJP LIKE :CNPJ_FORNEC ORDER BY NM_FORNECEDOR';

  CASE RadioFiltro.ItemIndex OF
    0: BEGIN
      Conexao.alteraSQL(Query,SQLcodigo);
      if (trim(MaskEditPesquisar.Text)='') then
        MaskEditPesquisar.Text:= '1';
      Query.Close;
      Query.ParamByName('COD_FORNEC').AsInteger := StrToInt(trim(MaskEditPesquisar.Text));
      QUERY.Open;
    END;
    1: BEGIN
      Conexao.alteraSQL(QUERY,SQLnome);
      QUERY.Close;
      Query.ParamByName('NOM_FORNEC').AsString := '%'+ MaskEditPesquisar.Text +'%';
      QUERY.Open;
    END;
    2: BEGIN
      Conexao.alteraSQL(Query,SQLcnpj);
      Query.Close;
      Query.ParamByName('CNPJ_FORNEC').AsString:= '%'+MaskEditPesquisar.Text+'%';
      QUERY.Open;
    END;
  END;
end;

procedure TFormPesquisaAvancadaDeFornecedor.RadioFiltroClick(Sender: TObject);
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
