unit UnitCadastrodecampanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroCampanha = class(TFormCadastroPadrao)
    QueryDATA_INICIAL: TDateField;
    QueryDATA_FINAL: TDateField;
    QueryFORNECEDOR_CD_FORNECEDOR: TIntegerField;
    QueryCOD_CAMPAN: TIntegerField;
    QueryNM_FORNECEDOR: TIBStringField;
    Label1: TLabel;
    Edit_DT_Inicial: TDBEdit;
    Label2: TLabel;
    Edit_DT_Final: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditCod_Fornecedor: TDBEdit;
    Label5: TLabel;
    EditCampanha: TDBEdit;
    Label6: TLabel;
    EditNomeFornecedor: TDBEdit;
    ButtonPesquisarFornec: TSpeedButton;
    QueryPRODUTO_CD_PRODUTO: TIntegerField;
    QueryNM_PRODUTO: TIBStringField;
    Label7: TLabel;
    editCodProduto: TDBEdit;
    Label8: TLabel;
    EditProduto: TDBEdit;
    ButtonPesquisar_codProduto: TSpeedButton;
    QueryNM_CAMPAN: TIBStringField;
    EditNomeCampanha: TDBEdit;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ButtonPesquisarFornecClick(Sender: TObject);
    procedure ButtonPesquisar_codProdutoClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCampanha: TFormCadastroCampanha;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCampanha, UnitPesquisaDeFornecedor,
  UnitPesquisaDeProduto;

procedure TFormCadastroCampanha.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  Edit_DT_Inicial.SetFocus;
end;

procedure TFormCadastroCampanha.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  TRY
    FormPesquisaCampanha:= TFormPesquisaCampanha.Create(Self);
    FormPesquisaCampanha.ShowModal;
  FINALLY
    if (FormPesquisaCampanha.ModalResult = mrOk) then
    BEGIN
      Query.Locate('COD_CAMPAN', FormPesquisaCampanha.QueryCOD_CAMPAN.AsInteger, []);
    END;
    FormPesquisaCampanha.Free;


  END;
end;

procedure TFormCadastroCampanha.ButtonPesquisarFornecClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaFornecedor:=TFormPesquisaFornecedor.Create(Self);
    FormPesquisaFornecedor.ShowModal;
  finally
    if (FormPesquisaFornecedor.ModalResult = mrOk) then Begin
      QueryFORNECEDOR_CD_FORNECEDOR.AsInteger:=
      FormPesquisaFornecedor.QueryCD_FORNECEDOR.AsInteger;
      QueryNM_FORNECEDOR.AsString:=
      FormPesquisaFornecedor.QueryNM_FORNECEDOR.AsString;
    End;
    FormPesquisaFornecedor.Free;
  end;

end;

procedure TFormCadastroCampanha.ButtonPesquisar_codProdutoClick(
  Sender: TObject);
begin
  inherited;
  try
    FormPesquisaDeProduto:=TFormPesquisaDeProduto.Create(Self);
    FormPesquisaDeProduto.ShowModal;
  finally
    if (FormPesquisaDeProduto.ModalResult = mrOk) then Begin
      QueryPRODUTO_CD_PRODUTO.AsInteger:=
      FormPesquisaDeProduto.QueryCD_PRODUTO.AsInteger;

      QueryNM_PRODUTO.AsString:=
      FormPesquisaDeProduto.QueryNM_PRODUTO.AsString;

      QueryFORNECEDOR_CD_FORNECEDOR.AsInteger:=
      FormPesquisaDeProduto.QueryCD_FORNECEDOR.AsInteger;

      QueryNM_FORNECEDOR.AsString:=
      FormPesquisaDeProduto.QueryNM_FORNECEDOR.AsString;
    End;
    FormPesquisaDeProduto.Free;
  end;
end;

PROCedure TFormCadastroCampanha.ButtonSalvarClick(Sender: TObject);
var
  numero : double;
begin
  if (Edit_DT_Inicial.Text)='  /  /    ' then
  begin
    Application.MessageBox('A data inicial é obrigatório',
    'ERRO',MB_ICONERROR+MB_OK);
    Edit_DT_Inicial.SetFocus;
    Exit;
  end;

  if (Edit_DT_Final.Text)='  /  /    ' then
  begin
    Application.MessageBox('A data final é obrigatório',
    'ERRO',MB_ICONERROR+MB_OK);
    Edit_DT_Final.SetFocus;
    Exit;
  end;

  if (EditNomeCampanha.Text ='') then
  begin
    Application.MessageBox('O nome da campanha é obrigatório',
    'ERRO',MB_ICONERROR+MB_OK);
    EditNomeCampanha.SetFocus;
    Exit;
  end;

   if TryStrToFloat(EditNomeCampanha.Text,numero) then
  begin
    Application.MessageBox('O Nome da campanha não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNomeCampanha.Clear;
    EditNomeCampanha.SetFocus;
    exit;
  end;

  if (editCodProduto.Text ='') then
  begin
    Application.MessageBox('O Código do produto é obrigatório',
    'ERRO',MB_ICONERROR+MB_OK);
    editCodProduto.SetFocus;
    Exit;
  end;

   if (EditProduto.Text ='') then
  begin
    Application.MessageBox('O nome do produto é obrigatório',
    'ERRO',MB_ICONERROR+MB_OK);
    EditProduto.SetFocus;
    Exit;
  end;

  inherited;
end;

procedure TFormCadastroCampanha.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (ds.State = dsInsert) then Begin
    QueryCOD_CAMPAN.AsInteger:=
    Conexao.gerapk('COD_CAMPAN','CAMPANHA');
  End;
end;

end.
