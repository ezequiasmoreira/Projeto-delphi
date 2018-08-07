unit UnitCadastroDeFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroFuncionario = class(TFormCadastroPadrao)
    QueryCD_FUNCIONARIO: TIntegerField;
    QueryNM_FUNCIONARIO: TIBStringField;
    QueryCPF: TIBStringField;
    QueryCARGOS_CD_CARGOS: TIntegerField;
    QueryEMPRESA_CD_EMPRESA: TIntegerField;
    QueryNM_CARGOS: TIBStringField;
    QueryRAZAO_SOCIAL: TIBStringField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    EditCpf: TDBEdit;
    Label4: TLabel;
    EditCodCargos: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditCodEmpresa: TDBEdit;
    Label7: TLabel;
    EditNomecargo: TDBEdit;
    Label8: TLabel;
    EditnomeEmpresa: TDBEdit;
    ButtonPesquisarCargo: TSpeedButton;
    ButtonPesquisarEmpresa: TSpeedButton;
    QueryRG: TIBStringField;
    EditRg: TDBEdit;
    procedure ButtonPesquisarEmpresaClick(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonPesquisarCargoClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionario: TFormCadastroFuncionario;

implementation

{$R *.dfm}

uses UnitpesquisaDeEmpresa, UnitTransacao, UnitPesquisaDeCargos,
  UnitPesquisaDeFuncionario, validacao;

procedure TFormCadastroFuncionario.ButtonPesquisarCargoClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaCargos:=TFormPesquisaCargos.Create(Self);
    FormPesquisaCargos.ShowModal;
  finally
    if (FormPesquisaCargos.ModalResult = mrOk) then Begin
      QueryCARGOS_CD_CARGOS.AsInteger:=
      FormPesquisaCargos.QueryCD_CARGOS.AsInteger;
      QueryNM_CARGOS.AsString:=
      FormPesquisaCargos.QueryNM_CARGOS.AsString;
      QueryEMPRESA_CD_EMPRESA.AsInteger:=
      FormPesquisaCargos.QueryCD_EMPRESA.AsInteger;
      QueryRAZAO_SOCIAL.AsString:=
      FormPesquisaCargos.QueryRAZAO_SOCIAL.AsString;

    End;
    FormPesquisaCargos.Free;
  end;
end;

procedure TFormCadastroFuncionario.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaDeFuncionario:= TFormPesquisaDeFuncionario.Create(Self);
    FormPesquisaDeFuncionario.ShowModal;
  Finally
    if (FormPesquisaDeFuncionario.ModalResult=mrOk) then Begin
      Query.Locate('CD_FUNCIONARIO',
      FormPesquisaDeFuncionario.QueryCD_FUNCIONARIO.AsInteger,
      []);
    End;
    FormPesquisaDeFuncionario.Free;
  End;
end;

procedure TFormCadastroFuncionario.ButtonPesquisarEmpresaClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaEmpresa:=TFormPesquisaEmpresa.Create(Self);
    FormPesquisaEmpresa.ShowModal;
  finally
    if (FormPesquisaEmpresa.ModalResult = mrOk) then Begin
      QueryEMPRESA_CD_EMPRESA.AsInteger:=
      FormPesquisaEmpresa.QueryCD_EMPRESA.AsInteger;
      QueryRAZAO_SOCIAL.AsString:=
      FormPesquisaEmpresa.QueryRAZAO_SOCIAL.AsString;
    End;
    FormPesquisaEmpresa.Free;
  end;
end;

procedure TFormCadastroFuncionario.ButtonSalvarClick(Sender: TObject);
var
  numero : double;
  cpf: string;
begin


  if (trim(EditNome.Text)='') then
  begin
    Application.MessageBox('O nome do funcionário é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditNome.SetFocus;
    exit;
  end;

  if TryStrToFloat(EditNome.Text,numero) then
  begin
    Application.MessageBox('O Nome do funcionário não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNome.Clear;
    EditNome.SetFocus;
    exit;
  end;

  if not validacao.verificaSobrenome(EditNome.Text) then
  begin
    Application.MessageBox('Nome incoreto',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNome.Clear;
    EditNome.SetFocus;
    exit;
  end;

  if ((EditCpf.Text)='   .   .   -  ') then
  begin
    Application.MessageBox('O Cpf é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditCpf.SetFocus;
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


  if(trim(EditRG.Text)='') then
  begin
    Application.MessageBox('O RG do funcionário é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditRG.SetFocus;
    exit;
  end;

  if(trim(EditCodCargos.Text)='') then
  begin
    Application.MessageBox('Selecione um cargo',
    'Erro', MB_ICONERROR+MB_OK);
    EditCodCargos.SetFocus;
    exit;
  end;

  if(trim(EditNomecargo.Text)='') then
  begin
    Application.MessageBox('Selecione um cargo',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomecargo.SetFocus;
    exit;
  end;

  if(trim(EditCodEmpresa.Text)='') then
  begin
    Application.MessageBox('Selecione uma empresa',
    'Erro', MB_ICONERROR+MB_OK);
    EditCodEmpresa.SetFocus;
    exit;
  end;

  if(trim(EditnomeEmpresa.Text)='') then
  begin
    Application.MessageBox('Selecione uma empresa',
    'Erro', MB_ICONERROR+MB_OK);
    EditnomeEmpresa.SetFocus;
    exit;
  end;

  inherited;
end;

procedure TFormCadastroFuncionario.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  QueryCD_FUNCIONARIO.AsInteger:= Conexao.gerapk('CD_FUNCIONARIO','FUNCIONARIO');
end;

end.
