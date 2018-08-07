unit UnitCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroCliente = class(TFormCadastroPadrao)
    labelcodCliente: TLabel;
    EditCodigo: TDBEdit;
    LabelNM_Cliente: TLabel;
    EditNomeCliente: TDBEdit;
    Label3: TLabel;
    EditdataNasc: TDBEdit;
    LabelSexo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditEmail: TDBEdit;
    EditTelefone: TDBEdit;
    Label9: TLabel;
    EditRG: TDBEdit;
    Label10: TLabel;
    EditCPF: TDBEdit;
    Label11: TLabel;
    Label7: TLabel;
    EditNUNContrato: TDBEdit;
    Label12: TLabel;
    EditBairro: TDBEdit;
    Label13: TLabel;
    EditCidade: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    EditEstado: TDBEdit;
    Label16: TLabel;
    EditLimite: TDBEdit;
    Label17: TLabel;
    EditVencimento: TDBEdit;
    Label18: TLabel;
    EditCep: TDBEdit;
    GroupDadosdoCliente: TGroupBox;
    GroupContatodoCliente: TGroupBox;
    QueryCD_CLIENTE: TIntegerField;
    QueryNUN_CONTRATO: TIntegerField;
    QueryNM_CLIENTE: TIBStringField;
    QueryDATA_NASC: TDateField;
    QuerySEXO: TIBStringField;
    QueryP_EMAIL: TIBStringField;
    QueryEMAIL: TIBStringField;
    QueryBAIRRO: TIBStringField;
    QueryCIDADE: TIBStringField;
    QueryENEDERECO_TIPO: TIBStringField;
    QueryENDERECO_RUA_NUN: TIBStringField;
    QueryRG: TIBStringField;
    QueryCPF: TIBStringField;
    QueryESTADO: TIBStringField;
    QueryLIMITE: TIntegerField;
    QueryDT_VENCIMENTO_BOLETO: TDateField;
    QueryCEP: TIBStringField;
    EditEndereco: TDBEdit;
    GrouplOCALIZACAOcLIENTE: TGroupBox;
    GroupBox2: TGroupBox;
    QueryTELEFONE: TIBStringField;
    Radiosexo: TRadioGroup;
    RadioPermicao: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QueryCOD_ESTADO: TSmallintField;
    Label1: TLabel;
    procedure ButtonSalvarClick(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure GroupDadosdoClienteClick(Sender: TObject);
    procedure RadiosexoClick(Sender: TObject);
    procedure RadioPermicaoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCliente, validacao, UnitPesquisaDeEstado,
  UnitPesquisaDeCidade;

procedure TFormCadastroCliente.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  QuerySEXO.AsString:='M';
  QueryP_EMAIL.AsString:='S';
  EditNomeCliente.SetFocus;
end;

procedure TFormCadastroCliente.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
   Try
    FormPesquisaCliente:= TFormPesquisaCliente.Create(Self);
    FormPesquisaCliente.ShowModal;
  Finally
    if (FormPesquisaCliente.ModalResult=mrOk) then Begin
      Query.Locate('CD_CLIENTE',
      FormPesquisaCliente.QueryCD_CLIENTE.AsInteger,
      []);
    End;
    FormPesquisaCliente.Free;
  End;
end;

procedure TFormCadastroCliente.ButtonSalvarClick(Sender: TObject);
var
  numero: Double;
  cpf : string;
begin
  if (trim(EditNomeCliente.Text)='') then
  begin
    Application.MessageBox('O Nome do cliente é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNomeCliente.SetFocus;
    exit;
  end;

  if TryStrToFloat(EditNomeCliente.Text,numero) then
  begin
    Application.MessageBox('O Nome do cliente não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNomeCliente.SetFocus;
    exit;
  end;

  if not validacao.verificaSobrenome(EditNomeCliente.Text) then
  begin
    Application.MessageBox('Nome incoreto',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNomeCliente.SetFocus;
    exit;
  end;



  if (trim(EditRG.Text)='') then
  begin
    Application.MessageBox('O RG é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditRG.SetFocus;
    exit;
  end;

  if ((EditCPF.Text)='   .   .   -  ') then
  begin
    Application.MessageBox('CPF obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditCPF.SetFocus;
    exit;
  end;

  cpf:=EditCPF.Text;
  delete(cpf,4,1);
  delete(cpf,7,1);
  delete(cpf,10,1);

   if not validacao.isCPF (cpf)then
   begin
    Application.MessageBox('cpf inválido',
    'Erro', MB_ICONERROR+MB_OK);
    EditCPF.SetFocus;
    exit;
  end;

  if ((EditdataNasc.Text)='  /  /    ') then
  begin
    Application.MessageBox('Data de nascimento obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditdataNasc.SetFocus;
    exit;
  end;


  if ((EditTelefone.Text)='(  )    -    ') then
  begin
    Application.MessageBox('Telefone obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditTelefone.SetFocus;
    exit;
  end;

  if ((RadioPermicao.ItemIndex = 0) and (trim(EditEmail.Text)='')) then
  begin
    Application.MessageBox('Email obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditEmail.SetFocus;
    exit;
  end;

  if ((RadioPermicao.ItemIndex = 0) and (not(validacao.verificaEmail(EditEmail.text)))) then
  begin
    Application.MessageBox('Email inválido',
    'ERRO', MB_ICONERROR + MB_OK);
    EditEmail.SetFocus;
    exit;
  end;

  if (trim(EditEstado.Text)='') then
  begin
    Application.MessageBox('Estado obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
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

  if (trim(EditCidade.Text)='') then
  begin
    Application.MessageBox('O campo cidade é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditCidade.SetFocus;
    exit;
  end;

  if (TryStrToFloat(EditCidade.Text,numero)) then
  begin
    Application.MessageBox('O campo cidade não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditCidade.Clear;
    EditCidade.SetFocus;
    exit;
  end;

  if (trim(EditBairro.Text)='') then
  begin
    Application.MessageBox('O campo bairro é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditBairro.SetFocus;
    exit;
  end;

  if (TryStrToFloat(EditCidade.Text,numero)) then
  begin
    Application.MessageBox('O campo bairro não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditBairro.Clear;
    EditBairro.SetFocus;
    exit;
  end;

  if (trim(EditBairro.Text)='') then
  begin
    Application.MessageBox('O campo bairro é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditBairro.SetFocus;
    exit;
  end;

  if (trim(EditCep.Text)='') then
  begin
    Application.MessageBox('O campo cep é obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
    EditCep.SetFocus;
    exit;
  end;


  if not validacao.VerificaCEP(EditCep.Text,EditEstado.Text) then
  begin
    Application.MessageBox('Cep é inválido, para este estado',
    'ERRO', MB_ICONERROR + MB_OK);
    EditCep.SetFocus;
    exit;
  end;

  if (trim(EditEndereco.Text)='') then
  begin
    Application.MessageBox('Endereço obrigatório',
    'ERRO', MB_ICONERROR + MB_OK);
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

procedure TFormCadastroCliente.GroupDadosdoClienteClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaCliente:= TFormPesquisaCliente.Create(Self);
    FormPesquisaCliente.ShowModal;
  Finally
    if (FormPesquisaCliente.ModalResult=mrOk) then Begin
      Query.Locate('CD_CLIENTE',
      FormPesquisaCliente.QueryCD_CLIENTE.AsInteger,
      []);
    End;
    FormPesquisaCliente.Free;
  End;

end;

procedure TFormCadastroCliente.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (ds.State = dsInsert) then Begin
    QueryCD_CLIENTE.AsInteger:=
    Conexao.gerapk('CD_CLIENTE','CLIENTE');
  End;
end;

procedure TFormCadastroCliente.RadioPermicaoClick(Sender: TObject);
begin
  inherited;
  case RadioPermicao.ItemIndex of
    0: QueryP_EMAIL.AsString:= 'S';
    1: QueryP_EMAIL.AsString:= 'N';
  end;
end;

procedure TFormCadastroCliente.RadiosexoClick(Sender: TObject);
begin
  inherited;
  case Radiosexo.ItemIndex of
    0: QuerySEXO.AsString:= 'M';
    1: QuerySEXO.AsString:= 'F';
  end;

end;

procedure TFormCadastroCliente.SpeedButton1Click(Sender: TObject);
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

procedure TFormCadastroCliente.SpeedButton2Click(Sender: TObject);
begin
  inherited;


    try
    FormPesquisaCidade:=TFormPesquisaCidade.Create(Self);
    FormPesquisaCidade.Query.close;
    FormPesquisaCidade.Query.ParamByName('SIGLA').Asinteger :=
     FormCadastroCliente.QueryCOD_ESTADO.Asinteger;
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
