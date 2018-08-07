unit UnitCadastraoDeVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadraoMestreDetalhe,
  Data.DB, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroDevendas = class(TFormCadastroPadraoMestreDetalhe)
    QueryItemVENDA_CD_VENDA: TIntegerField;
    QueryItemPRODUTO_CD_PRODUTO: TIntegerField;
    QueryItemNM_PRODUTO: TIBStringField;
    QueryItemP_VENDA: TIBBCDField;
    QueryItemQUANTIDADE: TIntegerField;
    QueryCD_VENDA: TIntegerField;
    QueryDATA_COMPRA: TDateField;
    QueryFUNCIONARIO_CD_FUNCIONARIO: TIntegerField;
    QueryCLIENTE_CD_CLIENTE: TIntegerField;
    QueryNM_CLIENTE: TIBStringField;
    QueryNM_FUNCIONARIO: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BOTAOp: TSpeedButton;
    LabeledEdit1: TLabeledEdit;
    procedure QueryAfterScroll(DataSet: TDataSet);
    procedure ButtonNovoItemClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
    procedure ButtonPesquisarClick(Sender: TObject);
    procedure BOTAOpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroDevendas: TFormCadastroDevendas;

implementation

{$R *.dfm}

uses UnitPesquisaDeFuncionario, UnitPesquisaDeCliente, UnitTransacao,
  UnitPesquisaDevenda, UnitPesquisaDeProduto;

procedure TFormCadastroDevendas.BOTAOpClick(Sender: TObject);
begin
  inherited;
  try
    FormPesquisaDeProduto:=TFormPesquisaDeProduto.Create(Self);
    FormPesquisaDeProduto.ShowModal;
  finally
    if (FormPesquisaDeProduto.ModalResult = mrOk) then Begin
      QueryItemPRODUTO_CD_PRODUTO.AsInteger:=
      FormPesquisaDeProduto.QueryCD_PRODUTO.AsInteger;

      QueryItemNM_PRODUTO.AsString:=
      FormPesquisaDeProduto.QueryNM_PRODUTO.AsString;

      QueryItemQUANTIDADE.AsInteger:=
      FormPesquisaDeProduto.QueryQUANTIDADE.AsInteger;

      QueryItemP_VENDA.AsString:=
      FormPesquisaDeProduto.QueryP_VENDA.AsString;
    End;
    FormPesquisaDeProduto.Free;
  end;
end;

procedure TFormCadastroDevendas.ButtonNovoClick(Sender: TObject);
begin
  inherited;
  QueryDATA_COMPRA.AsDateTime:=  Now;
end;

procedure TFormCadastroDevendas.ButtonNovoItemClick(Sender: TObject);
begin
  inherited;
  QueryItemVENDA_CD_VENDA.AsInteger:=
  QueryCD_VENDA.AsInteger;
end;

procedure TFormCadastroDevendas.ButtonPesquisarClick(Sender: TObject);
begin
  inherited;
  Try
    FormPesquisadeVendas:= TFormPesquisadeVendas.Create(Self);
    FormPesquisadeVendas.ShowModal;
  Finally
    if (FormPesquisadeVendas.ModalResult=mrOk) then Begin
      Query.Locate('CD_VENDA',
      FormPesquisadeVendas.QueryCD_VENDA.AsInteger,
      []);
    End;
    FormPesquisadeVendas.Free;
  End;
end;

procedure TFormCadastroDevendas.QueryAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QueryItem.Close;
  QueryItem.ParamByName('CODIGO').AsInteger:=
  QueryCD_VENDA.AsInteger;
  QueryItem.Open;

end;

procedure TFormCadastroDevendas.QueryBeforePost(DataSet: TDataSet);
begin
   inherited;

  if (DS.State = dsInsert) then Begin
    QueryCD_VENDA.AsInteger:=
    Conexao.geraPK('CD_VENDA','VENDA');
  End;

end;

procedure TFormCadastroDevendas.SpeedButton1Click(Sender: TObject);
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

procedure TFormCadastroDevendas.SpeedButton2Click(Sender: TObject);
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

end.
