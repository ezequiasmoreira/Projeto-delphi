inherited FormPesquisaAvancadaDeProduto: TFormPesquisaAvancadaDeProduto
  Caption = 'Pesquisa avan'#231'ada de produto'
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 755
    inherited RadioFiltro: TRadioGroup
      Width = 745
      Columns = 4
      Items.Strings = (
        'C'#243'digo'
        'C'#243'digo de barra'
        'Nome'
        'Fornecedor')
      OnClick = RadioFiltroClick
      ExplicitWidth = 745
    end
    inherited MaskEditPesquisar: TMaskEdit
      Height = 21
      ExplicitHeight = 21
    end
    inherited ButtonPesquisar: TBitBtn
      OnClick = ButtonPesquisarClick
    end
  end
  inherited GridPesquisa: TDBGrid
    Width = 755
  end
  inherited Query: TIBQuery
    Active = True
    SQL.Strings = (
      'SELECT PRODUTO.*, FORNECEDOR. NM_FORNECEDOR'
      ''
      'FROM PRODUTO'
      ''
      'INNER JOIN FORNECEDOR'
      ''
      
        'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR' +
        ')'
      ''
      'ORDER BY NM_PRODUTO')
    Left = 424
    Top = 80
    object QueryCD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CD_PRODUTO'
      Origin = '"PRODUTO"."CD_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCD_BARRA: TIntegerField
      DisplayLabel = 'C'#243'd de barra'
      DisplayWidth = 13
      FieldName = 'CD_BARRA'
      Origin = '"PRODUTO"."CD_BARRA"'
      Required = True
    end
    object QueryP_VENDA: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 8
      FieldName = 'P_VENDA'
      Origin = '"PRODUTO"."P_VENDA"'
      Required = True
      Precision = 15
      Size = 2
    end
    object QueryNM_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 42
      FieldName = 'NM_PRODUTO'
      Origin = '"PRODUTO"."NM_PRODUTO"'
      Required = True
      Size = 100
    end
    object QueryNM_FORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 42
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
    object QueryDT_ULTIMA_VENDA: TDateField
      DisplayLabel = 'Ultima venda'
      DisplayWidth = 13
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"PRODUTO"."DT_ULTIMA_VENDA"'
    end
    object QueryDT_ULTIMA_COMPRA: TDateField
      DisplayLabel = #218'ltima compra'
      DisplayWidth = 14
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"PRODUTO"."DT_ULTIMA_COMPRA"'
    end
    object QueryQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 11
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO"."QUANTIDADE"'
    end
    object QueryTEMSORTEIO: TIBStringField
      DisplayLabel = 'Campanha'
      DisplayWidth = 12
      FieldName = 'TEMSORTEIO'
      Origin = '"PRODUTO"."TEMSORTEIO"'
      FixedChar = True
      Size = 10
    end
    object QueryDATA_ULTIMA_MODIFICACAO: TDateField
      DisplayLabel = #218'ltima altera'#231#227'o'
      DisplayWidth = 16
      FieldName = 'DATA_ULTIMA_MODIFICACAO'
      Origin = '"PRODUTO"."DATA_ULTIMA_MODIFICACAO"'
    end
    object QueryVOLUME: TIBBCDField
      DisplayLabel = 'Volume/Litros'
      DisplayWidth = 13
      FieldName = 'VOLUME'
      Origin = '"PRODUTO"."VOLUME"'
      Precision = 18
      Size = 2
    end
    object QueryPESO: TIBBCDField
      DisplayLabel = 'Peso'
      DisplayWidth = 12
      FieldName = 'PESO'
      Origin = '"PRODUTO"."PESO"'
      Precision = 15
      Size = 2
    end
    object QueryVALIDADE: TDateField
      DisplayLabel = 'Validade'
      DisplayWidth = 12
      FieldName = 'VALIDADE'
      Origin = '"PRODUTO"."VALIDADE"'
    end
    object QueryLOTE: TIBStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 12
      FieldName = 'LOTE'
      Origin = '"PRODUTO"."LOTE"'
      Size = 10
    end
  end
end
