unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormLogin = class(TForm)
    editUsuario: TLabeledEdit;
    EditSenha: TLabeledEdit;
    ButtonOK: TBitBtn;
    Buttoncancelar: TBitBtn;
    procedure ButtonOKClick(Sender: TObject);
    procedure ButtoncancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormLogin.ButtoncancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLogin.ButtonOKClick(Sender: TObject);
var
  sql: String;
begin
  sql:= 'select * from login where usuario= :login and senha= :senha';
  Conexao.alteraSQL(Conexao.Query,sql);

  Conexao.Query.Close;
  Conexao.Query.ParamByName('login').AsString:= editUsuario.Text;
  Conexao.Query.ParamByName('senha').AsString:= EditSenha.Text;
  Conexao.Query.open;

  if conexao.Query.IsEmpty then
  begin
    Application.MessageBox('Usuário/Senha Inválidos',
    'ERRO',MB_ICONERROR+MB_OK);
    editUsuario.SetFocus;
    Exit;
  end;

  ModalResult := mrOk;

end;

end.
