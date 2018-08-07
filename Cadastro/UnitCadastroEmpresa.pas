unit UnitCadastroEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroEmpresa = class(TFormCadastroPadrao)
    Label1: TLabel;
    EditNomeFantasia: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditAtividade: TDBEdit;
    Label4: TLabel;
    EditEnguad_trib: TDBEdit;
    Label5: TLabel;
    EditCD_Empresa: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    EditCidade: TDBEdit;
    Estado: TLabel;
    EditEstado: TDBEdit;
    Label9: TLabel;
    EditEndereco: TDBEdit;
    QueryINSCRICAO_MUNICIPAL: TIntegerField;
    QueryINSCRICAO_ESTADUAL: TIBStringField;
    QueryRAZAO_SOCIAL: TIBStringField;
    QueryNM_FANTASIA: TIBStringField;
    QueryATIVIDADE: TIBStringField;
    QueryENQUA_TRIBUTARIO: TIBStringField;
    QueryCD_EMPRESA: TIntegerField;
    QueryBAIRRO: TIBStringField;
    QueryCIDADE: TIBStringField;
    QueryESTADO: TIBStringField;
    QueryCEP: TIBStringField;
    QueryTELEFONE: TIBStringField;
    QueryFAX: TIBStringField;
    QueryOBSERVACAO: TIBStringField;
    QuerySITE: TIBStringField;
    QueryENDERECO: TIBStringField;
    Label8: TLabel;
    editInscricaoMunicipal: TDBEdit;
    Label10: TLabel;
    editInscricaoEstadual: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    EditBairro: TDBEdit;
    Label13: TLabel;
    EditCep: TDBEdit;
    Label14: TLabel;
    EditTelefone: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    EditObservacao: TDBEdit;
    labelsite: TLabel;
    EditSite: TDBEdit;
    Label18: TLabel;
    GroupcONTATODaEmpresa: TGroupBox;
    GroupLocalizacao: TGroupBox;
    QueryCNPJ: TIBStringField;
    editCnpj: TDBEdit;
    Label17: TLabel;
    EditRazaoSocial: TDBEdit;
    EditFax: TDBEdit;
    QueryCAP_SOCIAL: TIBBCDField;
    EditCapSocial: TDBEdit;
    QueryEMAIL: TIBStringField;
    EditEmail: TDBEdit;
    ButtonPesquisaDeEstado: TSpeedButton;
    SpeedButton1: TSpeedButton;
    QueryCOD_ESTADO: TSmallintField;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ButtonPesquisaDeEstadoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function verificaEmail(email:string{; var ponto, arroba : string}):boolean;
  end;

var
  FormCadastroEmpresa: TFormCadastroEmpresa;

implementation

{$R *.dfm}

uses UnitTransacao, UnitpesquisaDeEmpresa, validacao, UnitPesquisaDeEstado,
  UnitPesquisaDeCidade;

function TFormCadastroEmpresa.verificaEmail(email:string{; var ponto, arroba : string}):boolean;
var
  P_arroba: integer;
  i,P_ponto: integer;
  repete_P,repete_arroba :integer;
begin
  repete_p:=0;
  repete_arroba:=0;
  P_arroba:= Pos('@',email);
 // arroba:= IntToStr(P_arroba);
  P_ponto := pos('.',email);
 // ponto:= IntToStr(P_ponto);

  for I := 1 to Length(email) do
  begin
    if not (email[i] in ['A'..'Z','_','@','.','0'..'9']) then
     begin
      verificaEmail:= False;
      exit;
    end;

  end;
  if email[1]= '@' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[1]='.' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[Length(email)] = '@' then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email[Length(email)] = '.' then
  begin
    verificaEmail:= False;
    exit;
  end;

  for I := 1 to Length(email) do
  begin
    if email[i]='.' then
    begin
      repete_p:=repete_p + 1;

    end;
    if email[i]='@' then
    begin
      repete_arroba:=repete_arroba + 1;

    end;

  end;
  //arroba:= IntToStr(P_arroba);
  //ponto:= IntToStr(P_ponto);
  if ((repete_P <> 1) or (repete_arroba <> 1)) then
  begin
    verificaEmail:= False;
    exit;
  end;

    if P_ponto - P_arroba = 1 then
  begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+1] <>'C' then
   begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+2] <>'O' then
   begin
    verificaEmail:= False;
    exit;
  end;
  if email [P_ponto+3] <>'M' then
   begin
    verificaEmail:= False;
    exit;
  end;

  if P_ponto < P_arroba  then
  begin
    verificaEmail:= False;
    exit;
  end;
end;

procedure TFormCadastroEmpresa.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  editCnpj.SetFocus;
end;

procedure TFormCadastroEmpresa.ButtonPesquisaDeEstadoClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaDeEstado:=TFormPesquisaDeEstado.Create(Self);
    FormPesquisaDeEstado.ShowModal;
  finally
    if (FormPesquisaDeEstado.ModalResult = mrOk) then Begin
      QueryESTADO.AsString:=
      FormPesquisaDeEstado.QuerySGL_ESTADO.AsString;

      QueryCOD_ESTADO.AsInteger:=
      FormPesquisaDeEstado.QueryCOD_ESTADO.AsInteger;
    End;
    FormPesquisaDeEstado.Free;
  end;
end;

procedure TFormCadastroEmpresa.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaEmpresa:= TFormPesquisaEmpresa.Create(Self);
    FormPesquisaEmpresa.ShowModal;
  Finally
    if (FormPesquisaEmpresa.ModalResult=mrOk) then Begin
      Query.Locate('CD_EMPRESA',
      FormPesquisaEmpresa.QueryCD_EMPRESA.AsInteger,
      []);
    End;
    FormPesquisaEmpresa.Free;
  End;
end;

procedure TFormCadastroEmpresa.ButtonSalvarClick(Sender: TObject);
var
  numero: double;
  cnpj,ponto, arroba : string;
begin
  if (editCNPJ.Text='  .   .   /    -  ')then
  begin
    Application.MessageBox('Cnpj obrigatório',
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
    editCnpj.SetFocus;
    exit;
  end;

  if (trim(EditCapSocial.Text)='') then
  begin
    Application.MessageBox('capital social obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditCapSocial.SetFocus;
    exit;
  end;


  if (trim(EditNomeFantasia.Text)='') then
  begin
    Application.MessageBox('Nome fantasia obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomeFantasia.SetFocus;
    exit;
  end;

  if (trim(EditRazaoSocial.Text)='') then
  begin
    Application.MessageBox('A razão social obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditRazaoSocial.SetFocus;
    exit;
  end;

  if (TryStrToFloat(EditRazaoSocial.Text,numero)) then
  begin
    Application.MessageBox('A razão social não pode ser composta apensa por número',
    'Erro', MB_ICONERROR+MB_OK);
    EditRazaoSocial.SetFocus;
    exit;
  end;

  if (trim(EditAtividade.Text)='') then
  begin
    Application.MessageBox('O campo ativiade é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditAtividade.SetFocus;
    exit;
  end;

  if (validacao.testanumero(EditAtividade.Text)) then
  begin
    Application.MessageBox('O campo atividade não pode conter números',
    'Erro', MB_ICONERROR+MB_OK);
    EditAtividade.Clear;
    EditAtividade.SetFocus;
    exit;
  end;

  if (EditTelefone.Text)='(  )    -    ' then
  begin
    Application.MessageBox('Telefone obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditTelefone.SetFocus;
    exit;
  end;

  if (trim(EditEmail.Text)='') then
  begin
    Application.MessageBox('Email obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditEmail.SetFocus;
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
    Application.MessageBox('O Cep é obrigatório',
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


  if (trim(EditBairro.Text)='') then
  begin
    Application.MessageBox('O bairro é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditBairro.SetFocus;
    exit;
  end;

  if (TryStrToFloat(EditBairro.Text,numero)) then
  begin
    Application.MessageBox('O bairro não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditBairro.Clear;
    EditBairro.SetFocus;
    exit;
  end;

  if (trim(EditEndereco.Text)='') then
  begin
    Application.MessageBox('Informe a rua e o número EX: R: são francisco,786',
    'Erro', MB_ICONERROR+MB_OK);
    EditEndereco.SetFocus;
    exit;
  end;

  if (TryStrToFloat(EditEndereco.Text,numero)) then
  begin
    Application.MessageBox('O endereço não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditEndereco.Clear;
    EditEndereco.SetFocus;
    exit;
  end;
  inherited;

end;

procedure TFormCadastroEmpresa.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ds.State = dsInsert) then Begin
    QueryCD_EMPRESA.AsInteger:=
    Conexao.gerapk('CD_EMPRESA','EMPRESA');
  End;
end;

procedure TFormCadastroEmpresa.SpeedButton1Click(Sender: TObject);
begin
  inherited;

    try
    FormPesquisaCidade:=TFormPesquisaCidade.Create(Self);
    FormPesquisaCidade.Query.close;
    FormPesquisaCidade.Query.ParamByName('SIGLA').Asinteger :=
     FormCadastroEmpresa.QueryCOD_ESTADO.Asinteger;
    FormPesquisaCidade.Query.open;
    FormPesquisaCidade.ShowModal;
  finally
    if (FormPesquisaCidade.ModalResult = mrOk) then Begin
      QueryCIDADE.AsString:=
      FormPesquisaCidade.QueryNOM_CIDADE.AsString;
    End;
    FormPesquisaCidade.Free;
  end;
end;

end.
