unit UnitCadastroDeCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroCargos = class(TFormCadastroPadrao)
    QueryCD_CARGOS: TIntegerField;
    QueryNM_CARGOS: TIBStringField;
    QueryFUNCAO: TIBStringField;
    QueryDEPARTAMENTO_CD_DEPARTAMENTO: TIntegerField;
    QueryNM_DEPARTAMENTO: TIBStringField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    EditFuncao: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditCodDepartamento: TDBEdit;
    Label6: TLabel;
    EditNomeDepartamento: TDBEdit;
    ButtonPesquisarDepartamento: TSpeedButton;
    QuerySAL_INICIAL: TIBBCDField;
    EditSalarioInicial: TDBEdit;
    procedure ButtonSalvarClick(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ButtonPesquisarDepartamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCargos: TFormCadastroCargos;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCargos, UnitPesquisadeDepartamento;

procedure TFormCadastroCargos.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaCargos:= TFormPesquisaCargos.Create(Self);
    FormPesquisaCargos.ShowModal;
  Finally
    if (FormPesquisaCargos.ModalResult=mrOk) then Begin
      Query.Locate('CD_CARGOS',
      FormPesquisaCargos.QueryCD_CARGOS.AsInteger,
      []);
    End;
    FormPesquisaCargos.Free;
  End;
end;

procedure TFormCadastroCargos.ButtonPesquisarDepartamentoClick(Sender: TObject);
begin
  inherited;
   try
    FormPesquisaDeDepartamento:=TFormPesquisaDeDepartamento.Create(Self);
    FormPesquisaDeDepartamento.ShowModal;
  finally
    if (FormPesquisaDeDepartamento.ModalResult = mrOk) then Begin
      QueryDEPARTAMENTO_CD_DEPARTAMENTO.AsInteger:=
      FormPesquisaDeDepartamento.QueryCD_DEPARTAMENTO.AsInteger;
      QueryNM_DEPARTAMENTO.AsString:=
      FormPesquisaDeDepartamento.QueryNM_DEPARTAMENTO.AsString;
    End;
    FormPesquisaDeDepartamento.Free;
  end;
end;

procedure TFormCadastroCargos.ButtonSalvarClick(Sender: TObject);
var
  numero : double;
begin


  if (trim(EditNome.Text)='') then
  begin
    Application.MessageBox('O nome do cargo é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditNome.SetFocus;
    exit;
  end;

   if TryStrToFloat(EditNome.Text,numero) then
  begin
    Application.MessageBox('O Nome do cargo não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditNome.Clear;
    EditNome.SetFocus;
    exit;
  end;

  if (trim(EditSalarioInicial.Text)='') then
  begin
    Application.MessageBox('O salario inicial é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditSalarioInicial.SetFocus;
    exit;
  end;

  if (trim(EditFuncao.Text)='') then
  begin
    Application.MessageBox('A Função do cargo é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditFuncao.SetFocus;
    exit;
  end;

   if TryStrToFloat(EditFuncao.Text,numero) then
  begin
    Application.MessageBox('O campo função não pode ser composto apenas por números',
    'ERRO', MB_ICONERROR + MB_OK);
    EditFuncao.Clear;
    EditFuncao.SetFocus;
    exit;
  end;

  if (trim(EditCodDepartamento.Text)='') then
  begin
    Application.MessageBox('Selecione um departamento',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomeDepartamento.SetFocus;
    exit;
  end;

  if (trim(EditNomeDepartamento.Text)='') then
  begin
    Application.MessageBox('Selecione um departamento',
    'Erro', MB_ICONERROR+MB_OK);
    EditNomeDepartamento.SetFocus;
    exit;
  end;

  inherited;
end;

procedure TFormCadastroCargos.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  QueryCD_CARGOS.AsInteger:=
  Conexao.gerapk('CD_CARGOS','CARGOS');
end;

end.
