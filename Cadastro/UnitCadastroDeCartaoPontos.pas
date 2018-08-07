unit UnitCadastroDeCartaoPontos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroCartaoPontos = class(TFormCadastroPadrao)
    QueryNUN_CARTAO: TIntegerField;
    QueryDATA_CARTAO: TDateField;
    QueryCLIENTE_CD_CLIENTE: TIntegerField;
    QueryACUMULA_PONTOS: TIntegerField;
    QueryNM_CLIENTE: TIBStringField;
    Label1: TLabel;
    editCodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditCodCliente: TDBEdit;
    Label4: TLabel;
    EditPontos: TDBEdit;
    Label5: TLabel;
    EditNome_cliente: TDBEdit;
    EditdataCriacao: TDBEdit;
    ButtonPesquisarCliente: TSpeedButton;
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure ButtonPesquisarClienteClick(Sender: TObject);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCartaoPontos: TFormCadastroCartaoPontos;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCliente, UnitPesquisaDeCartaoPontos;

procedure TFormCadastroCartaoPontos.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  QueryDATA_CARTAO.AsDateTime:=  Now;
  EditPontos.SetFocus;
end;

procedure TFormCadastroCartaoPontos.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisaCartaoPontos:= TFormPesquisaCartaoPontos.Create(Self);
    FormPesquisaCartaoPontos.ShowModal;
  Finally
    if (FormPesquisaCartaoPontos.ModalResult=mrOk) then Begin
      Query.Locate('NUN_CARTAO',
      FormPesquisaCartaoPontos.QueryNUN_CARTAO.AsInteger,
      []);
    End;
    FormPesquisaCartaoPontos.Free;
  End;

end;

procedure TFormCadastroCartaoPontos.ButtonPesquisarClienteClick(
  Sender: TObject);
begin
  inherited;
  try
    FormPesquisaCliente:=TFormPesquisaCliente.Create(Self);
    FormPesquisaCliente.ShowModal;
  finally
    if (FormPesquisaCliente.ModalResult = mrOk) then Begin
      QueryCLIENTE_CD_CLIENTE.AsInteger:=
      FormPesquisaCliente.QueryCD_CLIENTE.AsInteger;

      QueryNM_CLIENTE.AsString:=
      FormPesquisaCliente.QueryNM_CLIENTE.AsString;
    End;
    FormPesquisaCliente.Free;
  end;
end;

procedure TFormCadastroCartaoPontos.ButtonSalvarClick(Sender: TObject);
begin

  if (trim(EditPontos.Text)='') then
  begin
    Application.MessageBox('O campo pontos deve ser preenchido',
    'Erro', MB_ICONERROR+MB_OK);
    EditPontos.SetFocus;
    exit;
  end;

  if (trim(EditCodCliente.Text)='') then
  begin
    Application.MessageBox('Selecione um cliente',
    'Erro', MB_ICONERROR+MB_OK);
    EditCodCliente.SetFocus;
    exit;
  end;

  if (trim(editnome_cliente.Text)='') then
  begin
    Application.MessageBox('Selecione um cliente',
    'Erro', MB_ICONERROR+MB_OK);
    EditNome_cliente.SetFocus;
    exit;
  end;

inherited;
end;






procedure TFormCadastroCartaoPontos.QueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DS.State = dsInsert) then Begin
    QueryNUN_CARTAO.AsInteger:=
    Conexao.geraPK('NUN_CARTAO','CARTAO_PONTOS');
  End;
end;

end.
