unit UnitPesquisaDeCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaCargos = class(TFormPesquisaPadrao)
    QueryCD_CARGOS: TIntegerField;
    QueryNM_CARGOS: TIBStringField;
    QueryRAZAO_SOCIAL: TIBStringField;
    QueryCD_EMPRESA: TIntegerField;
    DatasetCargos: TfrxDBDataset;
    ReportCargos: TfrxReport;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCargos: TFormPesquisaCargos;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaCargos.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportCargos.ShowReport();
end;

procedure TFormPesquisaCargos.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLnome : String;
begin
  inherited;
  SQLcodigo := 'SELECT * FROM CARGOS WHERE CD_CARGOS = :CODIGO' ;
  SQLnome := 'SELECT * FROM CARGOS WHERE NM_CARGOS LIKE :NOME ORDER BY NM_CARGOS';

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
      Conexao.alteraSQL(query,SQLnome);
      query.Close;
      query.ParamByName('NOME').AsString:= '%'+MaskEditPesquisar.Text+'%';
      Query.Open;
    end;
  end;
end;

procedure TFormPesquisaCargos.RadioFiltroClick(Sender: TObject);
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
