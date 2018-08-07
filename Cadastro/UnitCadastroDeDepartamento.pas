unit UnitCadastroDeDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroDepartamento = class(TFormCadastroPadrao)
    QueryCD_DEPARTAMENTO: TIntegerField;
    QueryNM_DEPARTAMENTO: TIBStringField;
    QueryEMPRESA_CD_EMPRESA: TIntegerField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    editCodEmpresa: TDBEdit;
    ButtonPesquisarEmpresa: TSpeedButton;
    Label4: TLabel;
    QueryRAZAO_SOCIAL: TIBStringField;
    EditEmpresa: TDBEdit;
    procedure ButtonSalvarClick(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ButtonPesquisarEmpresaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDepartamento: TFormCadastroDepartamento;

implementation

{$R *.dfm}

uses UnitTransacao, UnitpesquisaDeEmpresa, UnitPesquisadeDepartamento;

procedure TFormCadastroDepartamento.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaDeDepartamento:= TFormPesquisaDeDepartamento.Create(Self);
    FormPesquisaDeDepartamento.ShowModal;
  Finally
    if (FormPesquisaDeDepartamento.ModalResult=mrOk) then Begin
      Query.Locate('CD_DEPARTAMENTO',
      FormPesquisaDeDepartamento.QueryCD_DEPARTAMENTO.AsInteger,
      []);
    End;
    FormPesquisaDeDepartamento.Free;
  End;
end;

procedure TFormCadastroDepartamento.ButtonPesquisarEmpresaClick(
  Sender: TObject);
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

procedure TFormCadastroDepartamento.ButtonSalvarClick(Sender: TObject);
begin
  inherited;
   if (trim(EditEmpresa.Text)='') then
  begin
    Application.MessageBox('Selecione Uma empresa',
    'Erro', MB_ICONERROR+MB_OK);
    EditEmpresa.SetFocus;
    exit;
  end;

   if (trim(EditNome.Text)='') then
  begin
    Application.MessageBox('O nome do departamento é obrigatório',
    'Erro', MB_ICONERROR+MB_OK);
    EditNome.SetFocus;
    exit;
  end;
end;

procedure TFormCadastroDepartamento.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  QueryCD_DEPARTAMENTO.AsInteger:=
  Conexao.gerapk('CD_DEPARTAMENTO','DEPARTAMENTO');
end;

end.
