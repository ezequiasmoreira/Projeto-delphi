unit UnitCadastroPadrao1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TFormCadastroPadrao = class(TForm)
    Query: TIBQuery;
    Update: TIBUpdateSQL;
    ds: TDataSource;
    GroupBox1: TGroupBox;
    ButtonNovo: TBitBtn;
    ButtonEditar: TBitBtn;
    ButtonSalvar: TBitBtn;
    ButtonExcluir: TBitBtn;
    ButtonFechar: TBitBtn;
    DBNavigator: TDBNavigator;
    ButtonDesfazer: TBitBtn;
    ButtonPesquisar: TSpeedButton;
    procedure ButtonDesfazerClick(Sender: TObject);
    procedure ButtonEditarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
    procedure ButtonNovoClick(Sender: TObject);
    procedure ButtonSalvarClick(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QueryBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPadrao: TFormCadastroPadrao;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormCadastroPadrao.ButtonDesfazerClick(Sender: TObject);
begin
  QUERY.CancelUpdates;
end;

procedure TFormCadastroPadrao.ButtonEditarClick(Sender: TObject);
begin
  QUERY.EDIT;
end;

procedure TFormCadastroPadrao.ButtonExcluirClick(Sender: TObject);
begin
  if (Application.MessageBox(
    'Deseja excluir?',
    'Aviso',
    MB_ICONQUESTION + MB_YESNO) = ID_NO) then
  begin
    exit;
  end;

  if not (Conexao.Transacao.InTransaction) then
  begin
    Conexao.Transacao.StartTransaction;
  end;

  try
    query.Delete;
    Conexao.Transacao.Commit;
  except
    Conexao.Transacao.Rollback;
    Application.MessageBox(
      'Erro ao excluir',
      'ERRO',
      MB_ICONERROR + MB_OK
    );
  end;
  query.Open;
end;

procedure TFormCadastroPadrao.ButtonFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroPadrao.ButtonNovoClick(Sender: TObject);
begin
  query.Append;
end;

procedure TFormCadastroPadrao.ButtonSalvarClick(Sender: TObject);
begin
  if not (Conexao.Transacao.InTransaction) then
  begin
    Conexao.Transacao.StartTransaction;
  end;

  try
    query.Post;
    Conexao.Transacao.Commit;
  except
    Conexao.Transacao.Rollback;
    Application.MessageBox(
      'Erro ao gravar',
      'Erro',
      MB_ICONERROR + MB_OK
    );
  end;
  query.Open;
end;

procedure TFormCadastroPadrao.dsStateChange(Sender: TObject);
begin
  ButtonNovo.Enabled        :=ds.State in [dsBrowse];
  ButtonEditar.Enabled      :=ds.State in [dsBrowse];
  ButtonSalvar.Enabled      :=ds.State in [dsInsert,dsEdit];
  ButtonDesfazer.Enabled    :=ds.State in [dsInsert,dsEdit];
  ButtonExcluir.Enabled     :=ds.State in [dsBrowse];
  ButtonFechar.Enabled      :=ds.State in [dsBrowse];
  ButtonPesquisar.Enabled   :=ds.State in [dsBrowse];
  DBNavigator.Enabled       :=ds.State in [dsBrowse];
end;

procedure TFormCadastroPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query.Close;
end;

procedure TFormCadastroPadrao.FormCreate(Sender: TObject);
begin
  Query.Open;
end;

procedure TFormCadastroPadrao.QueryBeforePost(DataSet: TDataSet);
begin
  if (ds.State = dsEdit) then
  begin
    exit;
  end;

end;

end.
