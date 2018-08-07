inherited FormPesquisaAvancadaCliente: TFormPesquisaAvancadaCliente
  Caption = 'Pesquisa avan'#231'ada de cliente'
  ClientWidth = 756
  ExplicitWidth = 762
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 756
    inherited RadioFiltro: TRadioGroup
      Columns = 3
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cpf')
      OnClick = RadioFiltroClick
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
    Width = 756
  end
  inherited Query: TIBQuery
    Active = True
    SQL.Strings = (
      'select * from  CLIENTE'
      'order by NM_CLIENTE')
    object QueryCD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'CD_CLIENTE'
      Origin = '"CLIENTE"."CD_CLIENTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_CLIENTE: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'NM_CLIENTE'
      Origin = '"CLIENTE"."NM_CLIENTE"'
      Required = True
      Size = 150
    end
    object QueryRG: TIBStringField
      DisplayLabel = 'Rg'
      FieldName = 'RG'
      Origin = '"CLIENTE"."RG"'
      Size = 15
    end
    object QueryCPF: TIBStringField
      DisplayLabel = 'Cpf'
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      Size = 14
    end
    object QueryNUN_CONTRATO: TIntegerField
      DisplayLabel = 'Nun contrato'
      FieldName = 'NUN_CONTRATO'
      Origin = '"CLIENTE"."NUN_CONTRATO"'
    end
    object QueryLIMITE: TIntegerField
      DisplayLabel = 'Limite'
      FieldName = 'LIMITE'
      Origin = '"CLIENTE"."LIMITE"'
    end
    object QueryDT_VENCIMENTO_BOLETO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCIMENTO_BOLETO'
      Origin = '"CLIENTE"."DT_VENCIMENTO_BOLETO"'
    end
    object QueryDATA_NASC: TDateField
      DisplayLabel = 'Data de nasc.'
      FieldName = 'DATA_NASC'
      Origin = '"CLIENTE"."DATA_NASC"'
      Required = True
    end
    object QuerySEXO: TIBStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = '"CLIENTE"."SEXO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryEMAIL: TIBStringField
      DisplayLabel = 'Email'
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Origin = '"CLIENTE"."EMAIL"'
      Size = 100
    end
    object QueryTELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = '"CLIENTE"."TELEFONE"'
      FixedChar = True
      Size = 14
    end
    object QueryCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CLIENTE"."CIDADE"'
    end
    object QueryBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CLIENTE"."BAIRRO"'
    end
    object QueryENDERECO_RUA_NUN: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 35
      FieldName = 'ENDERECO_RUA_NUN'
      Origin = '"CLIENTE"."ENDERECO_RUA_NUN"'
      Size = 200
    end
    object QueryESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"CLIENTE"."ESTADO"'
      Size = 2
    end
    object QueryCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"CLIENTE"."CEP"'
    end
  end
end
