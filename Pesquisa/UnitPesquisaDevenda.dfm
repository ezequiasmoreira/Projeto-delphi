inherited FormPesquisadeVendas: TFormPesquisadeVendas
  Caption = 'Pesquisa de vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    ExplicitLeft = 0
    ExplicitTop = 234
    inherited RadioFiltro: TRadioGroup
      Items.Strings = (
        'C'#243'digo')
    end
    inherited ButtonPesquisar: TBitBtn
      OnClick = ButtonPesquisarClick
    end
    inherited ButtonImprimir: TBitBtn
      Enabled = False
    end
  end
  inherited GridItem: TDBGrid
    Top = 144
    Height = 90
  end
  inherited Query: TIBQuery
    AfterScroll = QueryAfterScroll
    Active = True
    SQL.Strings = (
      'SELECT  VENDA.CD_VENDA ,VENDA. DATA_COMPRA, CLIENTE. NM_CLIENTE,'
      '        FUNCIONARIO. NM_FUNCIONARIO'
      'FROM VENDA'
      ''
      'INNER JOIN CLIENTE'
      ''
      'ON (CLIENTE.CD_CLIENTE = VENDA. CLIENTE_CD_CLIENTE)'
      ''
      'INNER JOIN FUNCIONARIO'
      ''
      'ON (FUNCIONARIO.CD_FUNCIONARIO = VENDA.'
      'FUNCIONARIO_CD_FUNCIONARIO)'
      ''
      'ORDER BY VENDA.CD_VENDA;')
    object QueryCD_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd.venda'
      FieldName = 'CD_VENDA'
      Origin = '"VENDA"."CD_VENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryDATA_COMPRA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA_COMPRA'
      Origin = '"VENDA"."DATA_COMPRA"'
      Required = True
    end
    object QueryNM_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'NM_CLIENTE'
      Origin = '"CLIENTE"."NM_CLIENTE"'
      Required = True
      Size = 150
    end
    object QueryNM_FUNCIONARIO: TIBStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 30
      FieldName = 'NM_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."NM_FUNCIONARIO"'
      Required = True
      Size = 100
    end
  end
  inherited QueryItem: TIBQuery
    SQL.Strings = (
      'SELECT VENDA.CD_VENDA, '
      ' PRODUTO.CD_BARRA,  PRODUTO.P_VENDA,'
      ' PRODUTO.QUANTIDADE'
      ''
      'FROM VENDA'
      ''
      'INNER JOIN ITEM_VENDAS'
      ''
      'ON(ITEM_VENDAS.VENDA_CD_VENDA= VENDA.CD_VENDA)'
      ''
      'INNER JOIN PRODUTO'
      ''
      ''
      'ON( PRODUTO.CD_PRODUTO = ITEM_VENDAS.PRODUTO_CD_PRODUTO)'
      ''
      'WHERE  ITEM_VENDAS.VENDA_CD_VENDA =:CODIGO'
      ''
      'ORDER BY ITEM_VENDAS.VENDA_CD_VENDA;')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QueryItemCD_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd.Venda'
      FieldName = 'CD_VENDA'
      Origin = '"VENDA"."CD_VENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryItemCD_BARRA: TIntegerField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'CD_BARRA'
      Origin = '"PRODUTO"."CD_BARRA"'
      Required = True
    end
    object QueryItemP_VENDA: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'P_VENDA'
      Origin = '"PRODUTO"."P_VENDA"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryItemQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO"."QUANTIDADE"'
    end
  end
end
