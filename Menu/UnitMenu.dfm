object FormMenu: TFormMenu
  Left = 0
  Top = 0
  Caption = 'CRM Kaipy'
  ClientHeight = 284
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object STstatus: TStatusBar
    Left = 0
    Top = 265
    Width = 447
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Text = 'Sistema Crm'
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 120
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Empresa1: TMenuItem
        Caption = 'Empresa'
        OnClick = Empresa1Click
      end
      object Departamento1: TMenuItem
        Caption = 'Departamento'
        OnClick = Departamento1Click
      end
      object Cargo1: TMenuItem
        Caption = 'Cargo'
        OnClick = Cargo1Click
      end
      object Funcionario1: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = Funcionario1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Campanha1: TMenuItem
        Caption = 'Campanha'
        OnClick = Campanha1Click
      end
      object CartoPontos1: TMenuItem
        Caption = 'Cart'#227'o Pontos'
        OnClick = CartoPontos1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
      object Funcionrio1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Funcionrio1Click
      end
    end
    object Pesquisa1: TMenuItem
      Caption = 'Pesquisa'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
      object Produto2: TMenuItem
        Caption = 'Produto'
        OnClick = Produto2Click
      end
      object Fornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = Fornecedor1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Relatriodeproduto1: TMenuItem
        Caption = 'Relat'#243'rio de produto por data de modifica'#231#227'o'
        OnClick = Relatriodeproduto1Click
      end
      object Relatriodeclientespordatadeaniversrio1: TMenuItem
        Caption = 'Relat'#243'rio de clientes por data de anivers'#225'rio'
        OnClick = Relatriodeclientespordatadeaniversrio1Click
      end
      object Relatriodefornecedoresqueparticiparamdecampanhas1: TMenuItem
        Caption = 'Relat'#243'rio de fornecedores que participaram de campanhas'
        OnClick = Relatriodefornecedoresqueparticiparamdecampanhas1Click
      end
      object Relatriodeprodutoscompradosporclientes1: TMenuItem
        Caption = 'Relat'#243'rio de produtos comprados por clientes'
        OnClick = Relatriodeprodutoscompradosporclientes1Click
      end
    end
    object Venda1: TMenuItem
      Caption = 'Venda'
      object Cadastrodevenda1: TMenuItem
        Caption = 'Cadastro de venda'
        OnClick = Cadastrodevenda1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 336
    Top = 144
  end
end
