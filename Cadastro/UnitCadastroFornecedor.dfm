inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Left = 1512
  Top = 987
  Caption = 'Cadastro Fornecedor'
  ClientHeight = 392
  ClientWidth = 528
  ExplicitWidth = 534
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 33
    Top = 29
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 39
    Top = 53
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel [2]
    Left = 19
    Top = 75
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object Label7: TLabel [3]
    Left = 138
    Top = 29
    Width = 22
    Height = 13
    Caption = 'Cnpj'
  end
  object Label8: TLabel [4]
    Left = 302
    Top = 29
    Width = 72
    Height = 13
    Caption = 'Inscr. Estadual'
  end
  object Label9: TLabel [5]
    Left = 235
    Top = 53
    Width = 36
    Height = 13
    Caption = 'Pes.F/J'
  end
  inherited ButtonPesquisar: TSpeedButton
    Left = 103
    Top = 25
    Height = 23
    OnClick = ButtonPesquisarClick
    ExplicitLeft = 103
    ExplicitTop = 25
    ExplicitHeight = 23
  end
  object Label12: TLabel [7]
    Left = 326
    Top = 75
    Width = 99
    Height = 13
    Caption = 'Pessoa f'#237'sica/j'#250'ridica'
  end
  inherited GroupBox1: TGroupBox
    Top = 306
    Width = 528
    ExplicitTop = 306
    ExplicitWidth = 528
    inherited DBNavigator: TDBNavigator
      Width = 524
      Hints.Strings = ()
      ExplicitWidth = 524
    end
  end
  object GroupContatoDoFornecedor: TGroupBox [9]
    Left = 0
    Top = 94
    Width = 528
    Height = 79
    Caption = 'CONTATO DO FORNECEDOR'
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label15: TLabel
      Left = 173
      Top = 25
      Width = 18
      Height = 13
      Caption = 'Fax'
      FocusControl = EditFax
    end
    object Label16: TLabel
      Left = 305
      Top = 25
      Width = 39
      Height = 13
      Caption = 'Contato'
      FocusControl = EditPess_contato
    end
    object Label5: TLabel
      Left = 42
      Top = 47
      Width = 24
      Height = 13
      Caption = 'Email'
      FocusControl = editEmail
    end
    object Label17: TLabel
      Left = 301
      Top = 49
      Width = 72
      Height = 13
      Caption = 'Representante'
      FocusControl = EditRepresentante
    end
    object EditFax: TDBEdit
      Left = 197
      Top = 22
      Width = 102
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FAX'
      DataSource = ds
      TabOrder = 1
    end
    object EditPess_contato: TDBEdit
      Left = 348
      Top = 22
      Width = 175
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PESSOA_CONTATO'
      DataSource = ds
      TabOrder = 2
    end
    object editEmail: TDBEdit
      Left = 72
      Top = 45
      Width = 226
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMAIL'
      DataSource = ds
      TabOrder = 3
    end
    object EditRepresentante: TDBEdit
      Left = 376
      Top = 46
      Width = 147
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REPRESENTANTE'
      DataSource = ds
      TabOrder = 4
    end
    object EditTelefone: TDBEdit
      Left = 72
      Top = 22
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = ds
      TabOrder = 0
    end
  end
  object GroupLocalizacaoFornecedor: TGroupBox [10]
    Left = 0
    Top = 179
    Width = 528
    Height = 127
    Align = alBottom
    Caption = 'LOZALIZA'#199#195'O DO FORNECEDOR'
    TabOrder = 2
    object Label13: TLabel
      Left = 108
      Top = 23
      Width = 19
      Height = 13
      Caption = 'Cep'
      FocusControl = EditCep
    end
    object Label10: TLabel
      Left = 35
      Top = 23
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = editEstado
    end
    object Label11: TLabel
      Left = 251
      Top = 23
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = EditCidade
    end
    object Label14: TLabel
      Left = 38
      Top = 47
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = EditBairro
    end
    object Label6: TLabel
      Left = 231
      Top = 47
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = editEndereco
    end
    object Label18: TLabel
      Left = 14
      Top = 72
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
      FocusControl = EditRefencia
    end
    object Label19: TLabel
      Left = 3
      Top = 96
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      FocusControl = EditObservacoes
    end
    object editEstado: TDBEdit
      Left = 72
      Top = 20
      Width = 30
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADO'
      DataSource = ds
      TabOrder = 1
    end
    object EditCep: TDBEdit
      Left = 136
      Top = 20
      Width = 104
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = ds
      TabOrder = 0
    end
    object EditCidade: TDBEdit
      Left = 290
      Top = 20
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = ds
      TabOrder = 2
    end
    object EditBairro: TDBEdit
      Left = 72
      Top = 44
      Width = 146
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = ds
      TabOrder = 3
    end
    object editEndereco: TDBEdit
      Left = 290
      Top = 44
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = ds
      TabOrder = 4
    end
    object EditRefencia: TDBEdit
      Left = 72
      Top = 69
      Width = 453
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REFERECIA'
      DataSource = ds
      TabOrder = 5
    end
    object EditObservacoes: TDBEdit
      Left = 72
      Top = 93
      Width = 453
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OBSERVACOES'
      DataSource = ds
      TabOrder = 6
    end
  end
  object eDITCodigo: TDBEdit [11]
    Left = 72
    Top = 26
    Width = 31
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CD_FORNECEDOR'
    DataSource = ds
    ReadOnly = True
    TabOrder = 3
  end
  object EditCnpj: TDBEdit [12]
    Left = 163
    Top = 26
    Width = 136
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CNJP'
    DataSource = ds
    TabOrder = 4
  end
  object editIncr_estadual: TDBEdit [13]
    Left = 380
    Top = 26
    Width = 143
    Height = 21
    CharCase = ecUpperCase
    DataField = 'INSCRICAO_ESTADUAL'
    DataSource = ds
    TabOrder = 5
  end
  object EditNome: TDBEdit [14]
    Left = 72
    Top = 49
    Width = 451
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_FORNECEDOR'
    DataSource = ds
    TabOrder = 6
  end
  object EditCategoria: TDBEdit [15]
    Left = 72
    Top = 72
    Width = 251
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CATEGORIA'
    DataSource = ds
    TabOrder = 7
  end
  object ComboPess_F_J: TComboBox [16]
    Left = 428
    Top = 72
    Width = 95
    Height = 21
    CharCase = ecUpperCase
    ItemIndex = 1
    TabOrder = 8
    Text = 'PESSOA J'#218'RIDICA'
    OnChange = ComboPess_F_JChange
    Items.Strings = (
      'PESSOA F'#205'SICA'
      'PESSOA J'#218'RIDICA')
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'select *  from FORNECEDOR'
      'order by CD_FORNECEDOR')
    Left = 464
    object QueryINSCRICAO_ESTADUAL: TIBStringField
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = '"FORNECEDOR"."INSCRICAO_ESTADUAL"'
      Size = 10
    end
    object QueryPESSOA_FIS_JUR: TIBStringField
      FieldName = 'PESSOA_FIS_JUR'
      Origin = '"FORNECEDOR"."PESSOA_FIS_JUR"'
      Size = 10
    end
    object QueryNM_FORNECEDOR: TIBStringField
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
    object QueryCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = '"FORNECEDOR"."CD_FORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"FORNECEDOR"."CATEGORIA"'
      Size = 100
    end
    object QueryESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"FORNECEDOR"."ESTADO"'
      Size = 2
    end
    object QueryCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"FORNECEDOR"."CIDADE"'
    end
    object QueryTELEFONE: TIBStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      Origin = '"FORNECEDOR"."TELEFONE"'
      Required = True
      EditMask = '(00)0000-9999'
      Size = 13
    end
    object QueryEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"FORNECEDOR"."EMAIL"'
      Required = True
      Size = 30
    end
    object QueryENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FORNECEDOR"."ENDERECO"'
      Size = 200
    end
    object QueryCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"FORNECEDOR"."CEP"'
      EditMask = '00000-000'
    end
    object QueryBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FORNECEDOR"."BAIRRO"'
      Size = 30
    end
    object QueryFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"FORNECEDOR"."FAX"'
      EditMask = '(00)0000-9999'
    end
    object QueryPESSOA_CONTATO: TIBStringField
      FieldName = 'PESSOA_CONTATO'
      Origin = '"FORNECEDOR"."PESSOA_CONTATO"'
    end
    object QueryREPRESENTANTE: TIBStringField
      FieldName = 'REPRESENTANTE'
      Origin = '"FORNECEDOR"."REPRESENTANTE"'
    end
    object QueryREFERECIA: TIBStringField
      FieldName = 'REFERECIA'
      Origin = '"FORNECEDOR"."REFERECIA"'
      Size = 50
    end
    object QueryOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"FORNECEDOR"."OBSERVACOES"'
      Size = 30
    end
    object QueryCNJP: TIBStringField
      FieldName = 'CNJP'
      Origin = '"FORNECEDOR"."CNJP"'
      Required = True
      EditMask = '00.000.000/0000-00'
    end
  end
  inherited Update: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  INSCRICAO_ESTADUAL,'
      '  PESSOA_FIS_JUR,'
      '  CD_FORNECEDOR,'
      '  NM_FORNECEDOR,'
      '  CATEGORIA,'
      '  ESTADO,'
      '  CIDADE,'
      '  TELEFONE,'
      '  EMAIL,'
      '  ENDERECO,'
      '  CNJP,'
      '  CEP,'
      '  BAIRRO,'
      '  FAX,'
      '  PESSOA_CONTATO,'
      '  REPRESENTANTE,'
      '  REFERECIA,'
      '  OBSERVACOES'
      'from FORNECEDOR '
      'where'
      '  CD_FORNECEDOR = :CD_FORNECEDOR')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  INSCRICAO_ESTADUAL = :INSCRICAO_ESTADUAL,'
      '  PESSOA_FIS_JUR = :PESSOA_FIS_JUR,'
      '  CD_FORNECEDOR = :CD_FORNECEDOR,'
      '  NM_FORNECEDOR = :NM_FORNECEDOR,'
      '  CATEGORIA = :CATEGORIA,'
      '  ESTADO = :ESTADO,'
      '  CIDADE = :CIDADE,'
      '  TELEFONE = :TELEFONE,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  CNJP = :CNJP,'
      '  CEP = :CEP,'
      '  BAIRRO = :BAIRRO,'
      '  FAX = :FAX,'
      '  PESSOA_CONTATO = :PESSOA_CONTATO,'
      '  REPRESENTANTE = :REPRESENTANTE,'
      '  REFERECIA = :REFERECIA,'
      '  OBSERVACOES = :OBSERVACOES'
      'where'
      '  CD_FORNECEDOR = :OLD_CD_FORNECEDOR')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (INSCRICAO_ESTADUAL, PESSOA_FIS_JUR, CD_FORNECEDOR, NM_FORNECE' +
        'DOR, CATEGORIA, '
      
        '   ESTADO, CIDADE, TELEFONE, EMAIL, ENDERECO, CNJP, CEP, BAIRRO,' +
        ' FAX, PESSOA_CONTATO, '
      '   REPRESENTANTE, REFERECIA, OBSERVACOES)'
      'values'
      
        '  (:INSCRICAO_ESTADUAL, :PESSOA_FIS_JUR, :CD_FORNECEDOR, :NM_FOR' +
        'NECEDOR, '
      
        '   :CATEGORIA, :ESTADO, :CIDADE, :TELEFONE, :EMAIL, :ENDERECO, :' +
        'CNJP, :CEP, '
      
        '   :BAIRRO, :FAX, :PESSOA_CONTATO, :REPRESENTANTE, :REFERECIA, :' +
        'OBSERVACOES)')
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  CD_FORNECEDOR = :OLD_CD_FORNECEDOR')
    Left = 448
    Top = 84
  end
  inherited ds: TDataSource
    Left = 488
    Top = 96
  end
end
