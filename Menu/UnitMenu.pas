unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Empresa1: TMenuItem;
    Departamento1: TMenuItem;
    Cargo1: TMenuItem;
    Funcionario1: TMenuItem;
    Clientes1: TMenuItem;
    Campanha1: TMenuItem;
    CartoPontos1: TMenuItem;
    Produto1: TMenuItem;
    Funcionrio1: TMenuItem;
    Pesquisa1: TMenuItem;
    Cliente1: TMenuItem;
    Produto2: TMenuItem;
    Fornecedor1: TMenuItem;
    N1: TMenuItem;
    Timer1: TTimer;
    STstatus: TStatusBar;
    Relatrios1: TMenuItem;
    Relatriodeproduto1: TMenuItem;
    Relatriodeclientespordatadeaniversrio1: TMenuItem;
    Relatriodefornecedoresqueparticiparamdecampanhas1: TMenuItem;
    Relatriodeprodutoscompradosporclientes1: TMenuItem;
    Venda1: TMenuItem;
    Cadastrodevenda1: TMenuItem;
    procedure Empresa1Click(Sender: TObject);
    procedure Departamento1Click(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Campanha1Click(Sender: TObject);
    procedure CartoPontos1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Relatriodeproduto1Click(Sender: TObject);
    procedure Relatriodeclientespordatadeaniversrio1Click(Sender: TObject);
    procedure Relatriodefornecedoresqueparticiparamdecampanhas1Click(
      Sender: TObject);
    procedure Relatriodeprodutoscompradosporclientes1Click(Sender: TObject);
    procedure Cadastrodevenda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses UnitCadastroEmpresa, UnitCadastroDeDepartamento, UnitCadastroDeCargos,
  UnitCadastroDeFuncionario, UnitCadastroCliente, UnitCadastrodecampanha,
  UnitCadastroDeCartaoPontos, UnitCadastroDeProduto, UnitCadastroFornecedor,
  UnitLogin, UnitPesquisaDeCliente, UnitPesquisaAvancadaDeCliente,
  UnitPesquisaAvancadaDeProduto, UnitPesquisaAvancadaDeFornecedor,
  UnitRelatorioProduto, UnitClienteAniversario,
  UnitRelatorioFornecedor_campanha, UnitRelatorioProduto_cliente,
  UnitCadastraoDeVenda;

procedure TFormMenu.Cadastrodevenda1Click(Sender: TObject);
begin
  Try
    FormCadastroDevendas:= TFormCadastroDevendas.Create(Self);
    FormCadastroDevendas.ShowModal;
  Finally
    FormCadastroDevendas.Free;
  End;

end;

procedure TFormMenu.Campanha1Click(Sender: TObject);
begin
 Try
    FormCadastroCampanha:= TFormCadastroCampanha.Create(Self);
    FormCadastroCampanha.ShowModal;
  Finally
    FormCadastroCampanha.Free;
  End;
end;

procedure TFormMenu.Cargo1Click(Sender: TObject);
begin
   Try
    FormCadastroCargos:= TFormCadastroCargos.Create(Self);
    FormCadastroCargos.ShowModal;
  Finally
    FormCadastroCargos.Free;
  End;
end;

procedure TFormMenu.CartoPontos1Click(Sender: TObject);
begin
   Try
    FormCadastroCartaoPontos:= TFormCadastroCartaoPontos.Create(Self);
    FormCadastroCartaoPontos.ShowModal;
  Finally
    FormCadastroCartaoPontos.Free;
  End;
end;

procedure TFormMenu.Cliente1Click(Sender: TObject);
begin
   Try
    FormPesquisaAvancadaCliente:= TFormPesquisaAvancadaCliente.Create(Self);
    FormPesquisaAvancadaCliente.ShowModal;
  Finally
    FormPesquisaAvancadaCliente.Free;
  End;

end;

procedure TFormMenu.Clientes1Click(Sender: TObject);
begin
   Try
    FormCadastroCliente:= TFormCadastroCliente.Create(Self);
    FormCadastroCliente.ShowModal;
  Finally
    FormCadastroCliente.Free;
  End;
end;

procedure TFormMenu.Departamento1Click(Sender: TObject);
begin
   Try
    FormCadastroDepartamento:= TFormCadastroDepartamento.Create(Self);
    FormCadastroDepartamento.ShowModal;
  Finally
    FormCadastroDepartamento.Free;
  End;

end;

procedure TFormMenu.Empresa1Click(Sender: TObject);
begin
   Try
    FormCadastroEmpresa:= TFormCadastroEmpresa.Create(Self);
    FormCadastroEmpresa.ShowModal;
  Finally
    FormCadastroEmpresa.Free;
  End;
end;

procedure TFormMenu.FormCreate(Sender: TObject);
begin
  try
    FormLogin:= TFormLogin.Create(Self);
    FormLogin.ShowModal;
  finally
    if (FormLogin.ModalResult <> mrOK) then Begin
       Application.Terminate;
    End;
    FormLogin.Free;
  end;
  STstatus.Panels[2].Text := FormLogin.Editusuario.text;
end;

procedure TFormMenu.Fornecedor1Click(Sender: TObject);
begin
  Try
    FormPesquisaAvancadaDeFornecedor:= TFormPesquisaAvancadaDeFornecedor.Create(Self);
    FormPesquisaAvancadaDeFornecedor.ShowModal;
  Finally
    FormPesquisaAvancadaDeFornecedor.Free;
  End;

end;

procedure TFormMenu.Funcionario1Click(Sender: TObject);
begin
   Try
    FormCadastroFuncionario:= TFormCadastroFuncionario.Create(Self);
    FormCadastroFuncionario.ShowModal;
  Finally
    FormCadastroFuncionario.Free;
  End;
end;

procedure TFormMenu.Funcionrio1Click(Sender: TObject);
begin
   Try
    FormCadastroFornecedor:= TFormCadastroFornecedor.Create(Self);
    FormCadastroFornecedor.ShowModal;
  Finally
    FormCadastroFornecedor.Free;
  End;
end;

procedure TFormMenu.Produto1Click(Sender: TObject);
begin
   Try
    FormCadastroProduto:= TFormCadastroProduto.Create(Self);
    FormCadastroProduto.ShowModal;
  Finally
    FormCadastroProduto.Free;
  End;
end;

procedure TFormMenu.Produto2Click(Sender: TObject);
begin
   Try
    FormPesquisaAvancadaDeProduto:= TFormPesquisaAvancadaDeProduto.Create(Self);
    FormPesquisaAvancadaDeProduto.ShowModal;
  Finally
    FormPesquisaAvancadaDeProduto.Free;
  End;

end;

procedure TFormMenu.Relatriodeclientespordatadeaniversrio1Click(
  Sender: TObject);
begin
  Try
   FormRelatorioClienteAniversario:= TFormRelatorioClienteAniversario.Create(Self);
    FormRelatorioClienteAniversario.ShowModal;
  Finally
    FormRelatorioClienteAniversario.Free;
  End;
end;

procedure TFormMenu.Relatriodefornecedoresqueparticiparamdecampanhas1Click(
  Sender: TObject);
begin
  Try
    FormrelatorioFornecedor_campanha:= TFormrelatorioFornecedor_campanha.Create(Self);
    FormrelatorioFornecedor_campanha.ShowModal;
  Finally
    FormrelatorioFornecedor_campanha.Free;
  End;

end;

procedure TFormMenu.Relatriodeproduto1Click(Sender: TObject);
begin
   Try
    FormRelatorioDeProduto:= TFormRelatorioDeProduto.Create(Self);
    FormRelatoriodeProduto.ShowModal;
  Finally
    FormRelatoriodeProduto.Free;
  End;
end;

procedure TFormMenu.Relatriodeprodutoscompradosporclientes1Click(
  Sender: TObject);
begin
   Try
    FormRelatorioProduto_cliente:= TFormRelatorioProduto_cliente.Create(Self);
    FormRelatorioProduto_cliente.ShowModal;
  Finally
    FormRelatorioProduto_cliente.Free;
  End;
end;

procedure TFormMenu.Timer1Timer(Sender: TObject);
begin
  STstatus.Panels[0].Text:= DateToStr(now);
  STstatus.Panels[1].Text:= TimeToStr(now);
end;

end.
