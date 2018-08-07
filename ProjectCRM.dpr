program ProjectCRM;

uses
  Vcl.Forms,
  UnitTransacao in 'Data Module\UnitTransacao.pas' {Conexao: TDataModule},
  UnitCadastroPadrao1 in 'Cadastro Padrão\UnitCadastroPadrao1.pas' {FormCadastroPadrao},
  UnitCadastroCliente in 'Cadastro\UnitCadastroCliente.pas' {FormCadastroCliente},
  UnitCadastroEmpresa in 'Cadastro\UnitCadastroEmpresa.pas' {FormCadastroEmpresa},
  UnitCadastroFornecedor in 'Cadastro\UnitCadastroFornecedor.pas' {FormCadastroFornecedor},
  UnitLogin in 'Login\UnitLogin.pas' {FormLogin},
  UnitCadastrodecampanha in 'Cadastro\UnitCadastrodecampanha.pas' {FormCadastroCampanha},
  UnitpesquisaPadrao in 'Pesquisa Padrão\UnitpesquisaPadrao.pas' {FormPesquisaPadrao},
  UnitPesquisaDeCliente in 'Pesquisa\UnitPesquisaDeCliente.pas' {FormPesquisaCliente},
  UnitpesquisaDeEmpresa in 'Pesquisa\UnitpesquisaDeEmpresa.pas' {FormPesquisaEmpresa},
  UnitPesquisaDeFornecedor in 'Pesquisa\UnitPesquisaDeFornecedor.pas' {FormPesquisaFornecedor},
  UnitPesquisaDeCampanha in 'Pesquisa\UnitPesquisaDeCampanha.pas' {FormPesquisaCampanha},
  UnitCadastroDeDepartamento in 'Cadastro\UnitCadastroDeDepartamento.pas' {FormCadastroDepartamento},
  UnitPesquisadeDepartamento in 'Pesquisa\UnitPesquisadeDepartamento.pas' {FormPesquisaDeDepartamento},
  UnitCadastroDeCargos in 'Cadastro\UnitCadastroDeCargos.pas' {FormCadastroCargos},
  UnitPesquisaDeCargos in 'Pesquisa\UnitPesquisaDeCargos.pas' {FormPesquisaCargos},
  UnitCadastroDeFuncionario in 'Cadastro\UnitCadastroDeFuncionario.pas' {FormCadastroFuncionario},
  UnitPesquisaDeFuncionario in 'Pesquisa\UnitPesquisaDeFuncionario.pas' {FormPesquisaDeFuncionario},
  UnitCadastroDeCartaoPontos in 'Cadastro\UnitCadastroDeCartaoPontos.pas' {FormCadastroCartaoPontos},
  UnitPesquisaDeCartaoPontos in 'Pesquisa\UnitPesquisaDeCartaoPontos.pas' {FormPesquisaCartaoPontos},
  UnitCadastroDeProduto in 'Cadastro\UnitCadastroDeProduto.pas' {FormCadastroProduto},
  UnitPesquisaDeProduto in 'Pesquisa\UnitPesquisaDeProduto.pas' {FormPesquisaDeProduto},
  UnitMenu in 'Menu\UnitMenu.pas' {FormMenu},
  validacao in 'Unit Validação\validacao.pas',
  UnitPesquisaAvancadaDeCliente in 'Pesquisa Avançada\UnitPesquisaAvancadaDeCliente.pas' {FormPesquisaAvancadaCliente},
  UnitPesquisaAvancadaDeProduto in 'Pesquisa Avançada\UnitPesquisaAvancadaDeProduto.pas' {FormPesquisaAvancadaDeProduto},
  UnitPesquisaAvancadaDeFornecedor in 'Pesquisa Avançada\UnitPesquisaAvancadaDeFornecedor.pas' {FormPesquisaAvancadaDeFornecedor},
  UnitPesquisaDeEstado in 'Pesquisa\UnitPesquisaDeEstado.pas' {FormPesquisaDeEstado},
  UnitPesquisaDeCidade in 'Pesquisa\UnitPesquisaDeCidade.pas' {FormPesquisaCidade},
  UnitRelatorioProduto in 'Relatorios\UnitRelatorioProduto.pas' {FormRelatorioDeProduto},
  UnitClienteAniversario in 'Relatorios\UnitClienteAniversario.pas' {FormRelatorioClienteAniversario},
  UnitRelatorioProduto_cliente in 'Relatorios\UnitRelatorioProduto_cliente.pas' {FormRelatorioProduto_cliente},
  UnitRelatorioFornecedor_campanha in 'Relatorios\UnitRelatorioFornecedor_campanha.pas' {FormrelatorioFornecedor_campanha},
  UnitCadastroPadraoMestreDetalhe in 'Cadastro Padrão\UnitCadastroPadraoMestreDetalhe.pas' {FormCadastroPadraoMestreDetalhe},
  UnitCadastraoDeVenda in 'Cadastro\UnitCadastraoDeVenda.pas' {FormCadastroDevendas},
  UnitpesquisaPadraoMestreDetalhe in 'Pesquisa Padrão\UnitpesquisaPadraoMestreDetalhe.pas' {FormPesquisaPadraoMestreDetalhe},
  UnitPesquisaDevenda in 'Pesquisa\UnitPesquisaDevenda.pas' {FormPesquisadeVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.Run;
end.
