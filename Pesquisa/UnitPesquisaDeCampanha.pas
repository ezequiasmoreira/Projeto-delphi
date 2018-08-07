unit UnitPesquisaDeCampanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFormPesquisaCampanha = class(TFormPesquisaPadrao)
    QueryNM_CAMPAN: TIBStringField;
    QueryCOD_CAMPAN: TIntegerField;
    ReportCampanha: TfrxReport;
    DatasetCampanha: TfrxDBDataset;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCampanha: TFormPesquisaCampanha;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaCampanha.ButtonImprimirClick(Sender: TObject);
begin
  inherited;
  ReportCampanha.ShowReport();
end;

procedure TFormPesquisaCampanha.ButtonPesquisarClick(Sender: TObject);
VAR
  SQLnome, SQLcodigo  : string;
begin
  inherited;
  SQLcodigo := 'SELECT * FROM CAMPANHA WHERE COD_CAMPAN = :CODIGO' ;
  SQLnome := 'SELECT * FROM CAMPANHA WHERE NM_CAMPAN LIKE :NOME ORDER BY NM_CAMPAN';

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

procedure TFormPesquisaCampanha.RadioFiltroClick(Sender: TObject);
begin
  inherited;
  case RadioFiltro.ItemIndex of
    0: MaskEditPesquisar.EditMask:= '999999';
    1: MaskEditPesquisar.EditMask:= '';
  end;
  MaskEditPesquisar.Clear;
  MaskEditPesquisar.SetFocus;
end;

end.
