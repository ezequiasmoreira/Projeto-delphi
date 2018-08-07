unit UnitpesquisaDeEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaEmpresa = class(TFormPesquisaPadrao)
    QueryCD_EMPRESA: TIntegerField;
    QueryRAZAO_SOCIAL: TIBStringField;
    QueryCNPJ: TIBStringField;
    ReportEmpresa: TfrxReport;
    DatasetEmpresa: TfrxDBDataset;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaEmpresa: TFormPesquisaEmpresa;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaEmpresa.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportEmpresa.ShowReport();
end;

procedure TFormPesquisaEmpresa.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLrazao_social, SQLCnpj : string;
begin
  inherited;
  SQLcodigo:= 'SELECT * FROM EMPRESA WHERE CD_EMPRESA = :CODIGO';
  SQLrazao_social:= 'SELECT * FROM EMPRESA WHERE RAZAO_SOCIAL LIKE :RAZAO ORDER BY RAZAO_SOCIAL';
  SQLCnpj:= 'SELECT * FROM EMPRESA WHERE CNPJ LIKE :CNPJ2 ORDER BY RAZAO_SOCIAL';
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
    END;
    1: BEGIN
      Conexao.alteraSQL(Query,SQLrazao_social);
      query.Close;
      query.ParamByName('RAZAO').AsString:= '%'+MaskEditPesquisar.Text+'%';
      query.Open;
    END;
    2: BEGIN
      Conexao.alteraSQL(Query,SQLCnpj);
      query.Close;
      query.ParamByName('CNPJ2').AsString:= '%'+MaskEditPesquisar.Text+'%';
      query.Open;
    END;
  end;
end;

procedure TFormPesquisaEmpresa.RadioFiltroClick(Sender: TObject);
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
