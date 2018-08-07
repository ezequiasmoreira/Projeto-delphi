unit UnitCadastroDeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroProduto = class(TFormCadastroPadrao)
    QueryDT_ULTIMA_VENDA: TDateField;
    QueryDT_ULTIMA_COMPRA: TDateField;
    QueryQUANTIDADE: TIntegerField;
    QueryTEMSORTEIO: TIBStringField;
    QueryCD_PRODUTO: TIntegerField;
    QueryCD_BARRA: TIntegerField;
    QueryNM_PRODUTO: TIBStringField;
    QueryFORNECEDOR_CD_FORNECEDOR: TIntegerField;
    QueryMARCA: TIBStringField;
    QueryDATA_ULTIMA_MODIFICACAO: TDateField;
    QueryVALIDADE: TDateField;
    QueryLOTE: TIBStringField;
    QueryFUNCIONARIO_CD_FUNCIONARIO: TIntegerField;
    QueryNM_FORNECEDOR: TIBStringField;
    QueryNM_FUNCIONARIO: TIBStringField;
    Label1: TLabel;
    EditCodProduto: TDBEdit;
    Label2: TLabel;
    EditNomeProduto: TDBEdit;
    Label3: TLabel;
    EditcodBarra: TDBEdit;
    Label4: TLabel;
    EditQtd: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditCodFornecedor: TDBEdit;
    Label9: TLabel;
    EditNomeFornecedor: TDBEdit;
    Label10: TLabel;
    EditMarca: TDBEdit;
    Label11: TLabel;
    editValidade: TDBEdit;
    Label12: TLabel;
    editLote: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditUltimaAlteracao: TDBEdit;
    Label19: TLabel;
    EditUltimaVenda: TDBEdit;
    Label20: TLabel;
    EditUltimaCompra: TDBEdit;
    Label21: TLabel;
    EditCodFuncionario: TDBEdit;
    Label22: TLabel;
    EditNomeFuncionario: TDBEdit;
    ButtonPesquisarFornecedor: TSpeedButton;
    Label23: TLabel;
    ButtonpesquisarFuncionario: TSpeedButton;
    QueryALTURA: TIBBCDField;
    EditAltura: TDBEdit;
    QueryP_CUSTO: TIBBCDField;
    EditPcusto: TDBEdit;
    QueryP_VENDA: TIBBCDField;
    EditPvenda: TDBEdit;
    QueryPESO: TIBBCDField;
    EditPeso: TDBEdit;
    QueryVOLUME: TIBBCDField;
    Editvolume: TDBEdit;
    QueryLARGURA: TIBBCDField;
    QueryPROFUNDIDADE: TIBBCDField;
    editLargura: TDBEdit;
    EditProfundidade: TDBEdit;
    Combotemcampanha: TComboBox;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonPesquisarFornecedorClick(Sender: TObject);
    procedure ButtonpesquisarFuncionarioClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure CombotemcampanhaClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeFornecedor, UnitPesquisaDeFuncionario,
  UnitPesquisaDeProduto;

procedure TFormCadastroProduto.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  EditNomeFuncionario.SetFocus;
  QueryTEMSORTEIO.AsString:= 'N';
  QueryDATA_ULTIMA_MODIFICACAO.AsDateTime:= NOW;
end;

procedure TFormCadastroProduto.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaDeProduto:= TFormPesquisaDeProduto.Create(Self);
    FormPesquisaDeProduto.ShowModal;
  Finally
    if (FormPesquisaDeProduto.ModalResult=mrOk) then Begin
      Query.Locate('CD_PRODUTO',
      FormPesquisaDeProduto.QueryCD_PRODUTO.AsInteger,
      []);
    End;
    FormPesquisaDeProduto.Free;
  End;
end;

procedure TFormCadastroProduto.ButtonPesquisarFornecedorClick(Sender: TObject);
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

procedure TFormCadastroProduto.ButtonpesquisarFuncionarioClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaDeFuncionario:=TFormPesquisaDeFuncionario.Create(Self);
    FormPesquisaDeFuncionario.ShowModal;
  finally
    if (FormPesquisaDeFuncionario.ModalResult = mrOk) then Begin
      QueryFUNCIONARIO_CD_FUNCIONARIO.AsInteger:=
      FormPesquisaDeFuncionario.QueryCD_FUNCIONARIO.AsInteger;
      QueryNM_FUNCIONARIO.AsString:=
      FormPesquisaDeFuncionario.QueryNM_FUNCIONARIO.AsString;
    End;
    FormPesquisaDeFuncionario.Free;
  end;
end;

procedure TFormCadastroProduto.ButtonSalvarClick(Sender: TObject);
var
  numero : double;

begin
  inherited;

  if (trim(EditCodFuncionario.Text)='') then
  begin
    Application.MessageBox('Selecione o funcionário que irá cadastrar o produto',
    'Erro', MB_ICONERROR+MB_OK);
    EditCodFuncionario.SetFocus;
    exit;
  end;

  if (trim(EditNomeFuncionario.Text)='') then
  begin
    Application.MessageBox('Selecione o funcionário que irá cadastrar o produto',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomeFuncionario.SetFocus;
    exit;
  end;

  if (trim(EditNomeProduto.Text)='') then
  begin
    Application.MessageBox('O nome do produto é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomeProduto.SetFocus;
    exit;
  end;

  if TryStrToFloat(EditNomeProduto.Text,numero) then
  begin
    Application.MessageBox('O Nome do produto não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNomeProduto.Clear;
    EditNomeProduto.SetFocus;
    exit;
  end;

  if (trim(EditQtd.Text)='') then
  begin
    Application.MessageBox('Informe a quantidade em unidades de entrada do produto',
    'Erro', MB_ICONERROR+MB_OK);
    EditQtd.SetFocus;
    exit;
  end;

  if (trim(EditcodBarra.Text)='') then
  begin
    Application.MessageBox('O código de barra do produto é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditcodBarra.SetFocus;
    exit;
  end;

  if (trim(EditPcusto.Text)='') then
  begin
    Application.MessageBox('O preço de custo do produto é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditPcusto.SetFocus;
    exit;
  end;

  if (trim(Editpvenda.Text)='') then
  begin
    Application.MessageBox('O preço de venda do produto é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    Editpvenda.SetFocus;
    exit;
  end;

  if (trim(EditCodFornecedor.Text)='') then
  begin
    Application.MessageBox('Digite o código ou selecione um fornecedor',
    'Erro', MB_ICONERROR+MB_OK);
    EditCodFornecedor.SetFocus;
    exit;
  end;

  if (trim(EditNomeFornecedor.Text)='') then
  begin
    Application.MessageBox('Digite o nome ou selecione um fornecedor',
    'Erro', MB_ICONERROR+MB_OK);
    EditPcusto.SetFocus;
    exit;
  end;

end;

procedure TFormCadastroProduto.CombotemcampanhaClick(Sender: TObject);
begin
  inherited;
  case Combotemcampanha.ItemIndex of
    0: QueryTEMSORTEIO.AsString:= 'S';
    1: QueryTEMSORTEIO.AsString:= 'N';
  end;
end;

procedure TFormCadastroProduto.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  QueryCD_PRODUTO.AsInteger:=
  Conexao.gerapk('CD_PRODUTO','PRODUTO');
end;

end.
