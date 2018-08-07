inherited FormPesquisaAvancadaDeFornecedor: TFormPesquisaAvancadaDeFornecedor
  Caption = 'Pesquisa avan'#231'ada de fornecedor'
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 764
    inherited RadioFiltro: TRadioGroup
      Width = 754
      Columns = 3
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cnpj')
      OnClick = RadioFiltroClick
      ExplicitWidth = 754
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
    Width = 764
  end
  inherited Query: TIBQuery
    Active = True
    SQL.Strings = (
      'select *  from FORNECEDOR')
    object QueryCD_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'CD_FORNECEDOR'
      Origin = '"FORNECEDOR"."CD_FORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_FORNECEDOR: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
    object QueryCNJP: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNJP'
      Origin = '"FORNECEDOR"."CNJP"'
      Required = True
    end
    object QueryPESSOA_FIS_JUR: TIBStringField
      DisplayLabel = 'Pessoa F/J'
      DisplayWidth = 8
      FieldName = 'PESSOA_FIS_JUR'
      Origin = '"FORNECEDOR"."PESSOA_FIS_JUR"'
      Size = 10
    end
    object QueryCATEGORIA: TIBStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 30
      FieldName = 'CATEGORIA'
      Origin = '"FORNECEDOR"."CATEGORIA"'
      Size = 100
    end
    object QueryESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"FORNECEDOR"."ESTADO"'
      Size = 2
    end
    object QueryCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
    end
    object QueryCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 15
      FieldName = 'CIDADE'
      Origin = '"FORNECEDOR"."CIDADE"'
    end
    object QueryBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Size = 30
    end
    object QueryENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 35
      FieldName = 'ENDERECO'
      Origin = '"FORNECEDOR"."ENDERECO"'
      Size = 200
    end
    object QueryTELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 13
      FieldName = 'TELEFONE'
      Origin = '"FORNECEDOR"."TELEFONE"'
      Required = True
    end
    object QueryEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
      Required = True
      Size = 30
    end
    object QueryFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"FORNECEDOR"."FAX"'
    end
    object QueryPESSOA_CONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'PESSOA_CONTATO'
      Origin = '"FORNECEDOR"."PESSOA_CONTATO"'
    end
    object QueryREPRESENTANTE: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REPRESENTANTE'
      Origin = '"FORNECEDOR"."REPRESENTANTE"'
    end
  end
end
