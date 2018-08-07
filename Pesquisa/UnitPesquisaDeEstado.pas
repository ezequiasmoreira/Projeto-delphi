unit UnitPesquisaDeEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaDeEstado = class(TFormPesquisaPadrao)
    QueryCOD_ESTADO: TSmallintField;
    QuerySGL_ESTADO: TIBStringField;
    QueryNOM_ESTADO: TIBStringField;
    QueryNOM_PAIS: TIBStringField;
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure RadioFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaDeEstado: TFormPesquisaDeEstado;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaDeEstado.ButtonPesquisarClick(Sender: TObject);
var
  SQLcodigo, SQLNOME, SQLSIGLA :String;
begin
  inherited;
  SQLcodigo:= 'SELECT * FROM ESTADO  inner join PAIS on (PAIS.COD_PAIS = ESTADO.COD_PAIS)WHERE COD_ESTADO = :CODIGO';

  SQLNOME:=   'SELECT * FROM ESTADO inner join PAIS on (PAIS.COD_PAIS = ESTADO.COD_PAIS)WHERE NOM_ESTADO LIKE :NOME ORDER BY NOM_ESTADO';

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

procedure TFormPesquisaDeEstado.RadioFiltroClick(Sender: TObject);
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
