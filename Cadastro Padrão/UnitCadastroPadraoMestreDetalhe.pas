unit UnitCadastroPadraoMestreDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPadrao1, Data.DB,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroPadraoMestreDetalhe = class(TFormCadastroPadrao)
    QueryItem: TIBQuery;
    DsItem: TDataSource;
    UpdateItem: TIBUpdateSQL;
    GroupItem: TGroupBox;
    GridItens: TDBGrid;
    ButtonEditarItem: TSpeedButton;
    ButtonSalvarItem: TSpeedButton;
    ButtonDesfazerItem: TSpeedButton;
    ButtonExcluirItem: TSpeedButton;
    ButtonNovoItem: TSpeedButton;
    procedure ButtonNovoItemClick(Sender: TObject);
    procedure ButtonEditarItemClick(Sender: TObject);
    procedure ButtonSalvarItemClick(Sender: TObject);
    procedure ButtonDesfazerItemClick(Sender: TObject);
    procedure ButtonExcluirItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsStateChange(Sender: TObject);
    procedure DsItemStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPadraoMestreDetalhe: TFormCadastroPadraoMestreDetalhe;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormCadastroPadraoMestreDetalhe.ButtonDesfazerItemClick(
  Sender: TObject);
begin
  inherited;
  QueryItem.CancelUpdates;
end;

procedure TFormCadastroPadraoMestreDetalhe.ButtonEditarItemClick(
  Sender: TObject);
begin
  inherited;
  query.Edit;
end;

procedure TFormCadastroPadraoMestreDetalhe.ButtonExcluirItemClick(
  Sender: TObject);
begin
  inherited;
  if(Application.MessageBox('Confirma?',
  'Aviso',MB_ICONQUESTION+mb_yesno)=IDNO) then
  begin
    exit;
  end;
  if NOT(Conexao.Transacao.InTransaction) then
  begin
    Conexao.Transacao.StartTransaction;
  end;

  try
    QueryItem.Delete;
    Conexao.Transacao.Commit;
  except
    Conexao.Transacao.Rollback;
    Application.MessageBox('Erro ao remover',
    'Erro', MB_ICONERROR+MB_OK);
  end;
  query.Open;
end;

procedure TFormCadastroPadraoMestreDetalhe.ButtonNovoItemClick(Sender: TObject);
begin
  inherited;
  QueryItem.Append;
end;

procedure TFormCadastroPadraoMestreDetalhe.ButtonSalvarItemClick(
  Sender: TObject);
begin
  inherited;
  if not(Conexao.Transacao.InTransaction) then
  begin
    Conexao.Transacao.StartTransaction;
  end;

  try
    QueryItem.Post;
    Conexao.Transacao.Commit;
  except
    Conexao.Transacao.Rollback;
    Application.MessageBox('Erro ao gravar',
    'Erro', MB_ICONERROR+MB_OK);
  end;
  query.Open;
end;

procedure TFormCadastroPadraoMestreDetalhe.DsItemStateChange(Sender: TObject);
begin
  inherited;
  ButtonNovoItem.Enabled           := DsItem.State in [dsBrowse];
  ButtonEditarItem.Enabled         := DsItem.State in [dsBrowse];
  ButtonSalvarItem.Enabled         := DsItem.State in [dsInsert,dsEdit];
  ButtonDesfazerItem.Enabled       := DsItem.State in [dsInsert,dsEdit];
  ButtonExcluirItem.Enabled        := DsItem.State in [dsBrowse];
end;

procedure TFormCadastroPadraoMestreDetalhe.dsStateChange(Sender: TObject);
begin
  inherited;
  GroupItem.Enabled:= ds.State = dsBrowse;
end;

procedure TFormCadastroPadraoMestreDetalhe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QueryItem.Close;
end;

end.
