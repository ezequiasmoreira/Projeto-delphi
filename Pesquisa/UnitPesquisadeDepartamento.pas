unit UnitPesquisadeDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaDeDepartamento = class(TFormPesquisaPadrao)
    QueryCD_DEPARTAMENTO: TIntegerField;
    QueryNM_DEPARTAMENTO: TIBStringField;
    QueryRAZAO_SOCIAL: TIBStringField;
    DatasetDepartamento: TfrxDBDataset;
    ReportDepartamento: TfrxReport;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaDeDepartamento: TFormPesquisaDeDepartamento;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaDeDepartamento.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportDepartamento.ShowReport();
end;

procedure TFormPesquisaDeDepartamento.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLNOME : string;
begin
  inherited;
  SQLcodigo:= 'SELECT * FROM DEPARTAMENTO WHERE CD_DEPARTAMENTO = :CODIGO';
  SQLNOME:= 'SELECT * FROM DEPARTAMENTO WHERE NM_DEPARTAMENTO LIKE :NOME ORDER BY NM_DEPARTAMENTO';
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
      Conexao.alteraSQL(Query,SQLNOME);
      query.Close;
      query.ParamByName('NOME').AsString:= '%'+MaskEditPesquisar.Text+'%';
      query.Open;
    END;
  end;
end;



procedure TFormPesquisaDeDepartamento.RadioFiltroClick(Sender: TObject);
begin
  inherited;
  case radioFiltro.ItemIndex of
    0: MaskEditPesquisar.EditMask:= '999999';
    1: MaskEditPesquisar.EditMask:= '';
  end;
  MaskEditPesquisar.Clear;
  MaskEditPesquisar.SetFocus;
end;

end.
