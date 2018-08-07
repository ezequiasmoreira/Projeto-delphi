unit UnitCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroFornecedor = class(TFormCadastroPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    editEndereco: TDBEdit;
    Label7: TLabel;
    editEmail: TDBEdit;
    QueryINSCRICAO_ESTADUAL: TIBStringField;
    QueryPESSOA_FIS_JUR: TIBStringField;
    QueryCD_FORNECEDOR: TIntegerField;
    QueryNM_FORNECEDOR: TIBStringField;
    QueryCATEGORIA: TIBStringField;
    QueryESTADO: TIBStringField;
    QueryCIDADE: TIBStringField;
    QueryTELEFONE: TIBStringField;
    QueryEMAIL: TIBStringField;
    QueryENDERECO: TIBStringField;
    QueryCEP: TIBStringField;
    QueryBAIRRO: TIBStringField;
    QueryFAX: TIBStringField;
    QueryPESSOA_CONTATO: TIBStringField;
    QueryREPRESENTANTE: TIBStringField;
    QueryREFERECIA: TIBStringField;
    QueryOBSERVACOES: TIBStringField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    editEstado: TDBEdit;
    Label11: TLabel;
    EditCidade: TDBEdit;
    Label13: TLabel;
    EditCep: TDBEdit;
    Label14: TLabel;
    EditBairro: TDBEdit;
    Label15: TLabel;
    EditFax: TDBEdit;
    Label16: TLabel;
    EditPess_contato: TDBEdit;
    Label17: TLabel;
    EditRepresentante: TDBEdit;
    Label18: TLabel;
    EditRefencia: TDBEdit;
    Label19: TLabel;
    EditObservacoes: TDBEdit;
    GroupContatoDoFornecedor: TGroupBox;
    GroupLocalizacaoFornecedor: TGroupBox;
    QueryCNJP: TIBStringField;
    EditTelefone: TDBEdit;
    eDITCodigo: TDBEdit;
    EditCnpj: TDBEdit;
    editIncr_estadual: TDBEdit;
    EditNome: TDBEdit;
    EditCategoria: TDBEdit;
    Label12: TLabel;
    ComboPess_F_J: TComboBox;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ComboPess_F_JChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeFornecedor, validacao;

procedure TFormCadastroFornecedor.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  editCnpj.SetFocus;
  QueryPESSOA_FIS_JUR.AsString:= 'JÚRIDICA';
end;

procedure TFormCadastroFornecedor.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaFornecedor:= TFormPesquisaFornecedor.Create(Self);
    FormPesquisaFornecedor.ShowModal;
  finally
    if (FormPesquisaFornecedor.ModalResult = mrOk) then
    begin
      Query.Locate('CD_FORNECEDOR',
      FormPesquisaFornecedor.QueryCD_FORNECEDOR.AsInteger,[]);
    end;
    FormPesquisaFornecedor.Free;
  end;
end;

procedure TFormCadastroFornecedor.ButtonSalvarClick(Sender: TObject);
var
  numero: double;
  cnpj: string;
begin
  if editCnpj.Text='  .   .   /    -  'then
  begin
     Application.MessageBox('Cnpj ínvalido',
    'Erro', MB_ICONERROR+MB_OK);
    editCNPJ.SetFocus;
    exit;
  end;

  cnpj:=editCnpj.Text;
  delete(cnpj,3,1);
  delete(cnpj,6,1);
  delete(cnpj,9,1);
  delete(cnpj,13,1);
  if not validacao.isCNPJ (cnpj)then
   begin
    Application.MessageBox('Cnpj inválido',
    'Erro', MB_ICONERROR+MB_OK);
    EditCnpj.SetFocus;
    exit;
  end;


  if (trim(editNome.Text)='') then
  begin
    Application.MessageBox('Nome obrigatório',
    'Erro', MB_ICONERROR +MB_OK);
    editNome.SetFocus;
    exit;
  end;

  if (TryStrToFloat(editNome.Text,numero)) then
  begin
     Application.MessageBox('O nome não pode ser composto apenas por números',
    'Erro', MB_ICONERROR +MB_OK);
    editNome.SetFocus;
    exit;
  end;


  if (trim(editCategoria.Text)='') then
  begin
    Application.MessageBox('Campo categoria obrigatório',
    'Erro', MB_ICONERROR +MB_OK);
    editCategoria.SetFocus;
    exit;
  end;

  if (TryStrToFloat(editCategoria.Text,numero)) then
  begin
     Application.MessageBox('O campo categoria não pode ser composto apenas por números',
    'Erro', MB_ICONERROR +MB_OK);
    editCategoria.SetFocus;
    exit;
  end;


  if editTelefone.Text = '(  )    -    'then
  begin
    Application.MessageBox('Telefone obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    editTelefone.SetFocus;
    exit;
  end;

  if (Trim(EditPess_contato.Text)='') then
  begin
    Application.MessageBox('O campo Contato pode ser preenchido com o nome do supervisor '
                    +'ou a pessoa que representa o fornecedor' ,
    'Erro', MB_ICONERROR+MB_OK);
    EditPess_contato.SetFocus;
    exit;
  end;

   if (TryStrToFloat(EditPess_contato.Text,numero)) then
  begin
     Application.MessageBox('O campo contato não pode ser composto apenas por números',
    'Erro', MB_ICONERROR +MB_OK);
    EditPess_contato.SetFocus;
    exit;
  end;

  if (Trim(editEmail.Text)='') then
  begin
    Application.MessageBox('Email obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    editEndereco.SetFocus;
    exit;
  end;

  if  validacao.verificaEmail(EditEmail.TEXT) = FALSE then
  begin
    Application.MessageBox('Email inválido',
    'Erro', MB_ICONERROR+MB_OK);
    EditEmail.SetFocus;
    exit;
  end;

  if (trim(EditEstado.Text)='') then
  begin
    Application.MessageBox('Estado obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditEstado.SetFocus;
    exit;
  end;

  if (not validacao.verificaEstado(EditEstado.Text)) then
  begin
    Application.MessageBox('Estado Inválido digite uma sigla válida EX: SC, MG, RJ..',
    'ERRO', MB_ICONERROR + MB_OK);
    EditEstado.SetFocus;
    exit;
  end;

  if (EditCep.Text)='     -   'then
  begin
    Application.MessageBox('Cep obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditCep.SetFocus;
    exit;
  end;

  if not (validacao.VerificaCEP(EditCep.Text,EditEstado.Text)) then
  begin
    Application.MessageBox('O cep inválido para este estado ',
    'Erro', MB_ICONERROR+MB_OK);
    EditCep.Clear;
    EditCep.SetFocus;
    exit;
  end;

  if (trim(EditCidade.Text)='') then
  begin
    Application.MessageBox('Campo da cidade é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditCidade.SetFocus;
    exit;
  end;

  if (validacao.testanumero(EditCidade.Text)) then
  begin
    Application.MessageBox('Não pode ter números no nome da cidade ',
    'Erro', MB_ICONERROR+MB_OK);
    EditCidade.SetFocus;
    exit;
  end;




  if (Trim(editEndereco.Text)='') then
  begin
    Application.MessageBox('Endereço obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    editEndereco.SetFocus;
    exit;
  end;

  if(TryStrToFloat(editEndereco.Text,numero))then
  begin
    Application.MessageBox('Endereço não pode ser composto apenas por números',
    'Erro', MB_ICONERROR+MB_OK);
    editEndereco.SetFocus;
    exit;
  end;















  inherited;

end;

procedure TFormCadastroFornecedor.ComboPess_F_JChange(Sender: TObject);
begin
  inherited;
  case ComboPess_F_J.ItemIndex of
    0: QueryPESSOA_FIS_JUR.AsString:= 'FÍSICA';
    1: QueryPESSOA_FIS_JUR.AsString:= 'JÚRIDICA';
  end;
end;

procedure TFormCadastroFornecedor.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  QueryCD_FORNECEDOR.AsInteger:=
  Conexao.gerapk('CD_FORNECEDOR','FORNECEDOR');
end;

end.
