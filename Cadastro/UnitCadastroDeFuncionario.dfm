inherited FormCadastroFuncionario: TFormCadastroFuncionario
  Caption = 'Cadastro de funcion'#225'rio'
  ClientHeight = 189
  ClientWidth = 506
  ExplicitWidth = 512
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited ButtonPesquisar: TSpeedButton
    Left = 120
    Top = 5
    Height = 22
    OnClick = ButtonPesquisarClick
    ExplicitLeft = 120
    ExplicitTop = 5
    ExplicitHeight = 22
  end
  object Label1: TLabel [1]
    Left = 38
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = EditCodigo
  end
  object Label2: TLabel [2]
    Left = 155
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = EditNome
  end
  object Label3: TLabel [3]
    Left = 54
    Top = 31
    Width = 17
    Height = 13
    Caption = 'Cpf'
    FocusControl = EditCpf
  end
  object Label4: TLabel [4]
    Left = 16
    Top = 54
    Width = 55
    Height = 13
    Caption = 'C'#243'd. Cargo'
    FocusControl = EditCodCargos
  end
  object Label5: TLabel [5]
    Left = 307
    Top = 31
    Width = 108
    Height = 13
    Caption = 'Registro de identidade'
  end
  object Label6: TLabel [6]
    Left = 4
    Top = 77
    Width = 67
    Height = 13
    Caption = 'C'#243'd. Empresa'
    FocusControl = EditCodEmpresa
  end
  object Label7: TLabel [7]
    Left = 160
    Top = 54
    Width = 72
    Height = 13
    Caption = 'Nome do cargo'
    FocusControl = EditNomecargo
  end
  object Label8: TLabel [8]
    Left = 146
    Top = 78
    Width = 86
    Height = 13
    Caption = 'Nome da empresa'
    FocusControl = EditnomeEmpresa
  end
  object ButtonPesquisarCargo: TSpeedButton [9]
    Left = 120
    Top = 51
    Width = 33
    Height = 22
    Glyph.Data = {
      B60D0000424DB60D000000000000360000002800000030000000180000000100
      180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
      E7DBDBDBE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFC8D0E1285A9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFE5E5E59B9B9B9797979D9D9DC8C8C8FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D1E3285EA55BD3F977DBF426589F70
      7B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69B9B9BADAD
      ADB0B0B0979797ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D2E5
      2963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE6E6E69D9D9DAEAEAEB2B2B2A8A8A89E9E9E9A9A9AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
      D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69E9E9EAEAEAEB2B2B2A8A8
      A89F9F9F9B9B9BE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC
      7FE3FA44AFF1177FE41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
      E7E79F9F9FAEAEAEB2B2B2A8A8A89F9F9F9C9C9CE7E7E7FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC9D6EA2971C15CD5FC7EE3FA44AFF1177FE41F63BDC9D6EAFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7A0A0A0AEAEAEB2B2B2A8A8A89F9F9F9D9D
      9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F7E7
      E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551C3F47EE3FA44AFEF
      177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFAFAFAF1F1F1F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFADADADAB
      ABABB2B2B2A8A8A89F9F9F9E9E9EE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
      F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFEFED5D5D5A9A9A9929292939393939393909090
      A2A2A2CDCDCDFAFAFAF4F4F4CECECE9E9E9EA6A6A69F9F9F9F9F9FE7E7E7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFF
      E6C4FFEECDFFF5CCC0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2
      C9DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A8A8A89595
      95A4A4A4B5B5B5B8B8B8BABABABABABAAEAEAE989898949494A0A0A0A9A9A9A9
      A9A99D9D9DA0A0A0E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF
      5D56618E7753F2C18FFFCFA9FFD6B3FFE6C9FFEDD0FFF2D3FFF8D8FFFCDF97AC
      A6453B45726374C8C1CBE0EEFAD4E3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFF5F5F59E9E9E9C9C9CB0B0B0B4B4B4B6B6B6B9B9B9BABABABBBBBB
      BBBBBBBCBCBCA8A8A89090909B9B9BD5D5D5F2F2F2EDEDEDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC91F6BD91FFD8B6FF
      E8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CDC9CDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE9B9B9BADADADB0B0
      B0B0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEA9A9A9909090DF
      DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
      DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
      F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDEDEDE979797A9A9A9AEAEAEABABABB0B0B0B6B6B6B9B9B9BABABABBBBBB
      BCBCBCBEBEBEBFBFBFBEBEBE9C9C9CCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FF
      E7CEFFEDD4FFF2DAFFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B79E9E9EABABABA9A9A9AAAA
      AAB0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEBDBDBDB2B2B29F
      9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF706471C4905D
      DDA479D39A6FF8BF94FFD0ACFFDABCFFEBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8
      E1FFF9DEFFFAD75D525FF0F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9F9F9FA4A4A4AAAAAAA7A7A7B0B0B0B4B4B4B7B7B7BABABABABABABBBBBB
      BCBCBCBCBCBCBCBCBCBCBCBCBCBCBC969696F7F7F7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA176E5AC81FDC498FF
      DCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D7179D6D5D8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9A9AEAEAEA9A9
      A9ACACACB2B2B2B7B7B7BBBBBBBABABABABABABBBBBBBBBBBBBBBBBBBABABA9D
      9D9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
      D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
      D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9E9E9EA2A2A2A8A8A8ABABABB4B4B4B8B8B8B7B7B7B3B3B3B8B8B8BBBBBB
      BABABABABABABABABABABABABABABA9E9E9EE9E9E9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FF
      DABDFFCBA3FFE6D1FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5A2A2A2A6A6A6AFAFAFB8B8
      B8BBBBBBBEBEBEB7B7B7B3B3B3B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B999
      9999F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A0ACA68053
      CB9267EBB287FFD9BBFFEADAFFF1E7FFDEC5F1B88DFFDBBFFFCCA3FED3AEFFD8
      B6FFDDC0D3C594796F7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC0C0C09F9F9FA5A5A5ADADADB6B6B6BABABABCBCBCB8B8B8AFAFAFB7B7B7
      B3B3B3B5B5B5B6B6B6B7B7B7AEAEAEA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC398FFDCC2FFE5D2FF
      CCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BCB8BEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E79E9E9EA2A2A2A9A9A9B1B1
      B1B7B7B7B9B9B9B4B4B4B1B1B1B1B1B1ADADADAFAFAFB3B3B3B3B3B39F9F9FD4
      D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
      9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
      91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFBFBFBF9F9F9FA3A3A3A9A9A9AEAEAEB1B1B1B0B0B0AEAEAEA7A7A7
      AAAAAAAFAFAFB0B0B0A5A5A5ADADADFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DD
      A479DBA277E3AA7FEAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB0B0B0A0A0A0A2A2
      A2A6A6A6A8A8A8AAAAAAA9A9A9ABABABADADADABABABA4A4A4A7A7A7F1F1F1FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FAFAFAB2ABB598867DAD875AC38C5BBC8558C28B5DCF9967BA9668958475968F
      9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFBFBFBC1C1C1A2A2A2A1A1A1A3A3A3A2A2A2A3A3A3A6A6A6
      A4A4A4A1A1A1B3B3B3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E4B7AFBA9D91A09F
      919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
      E8C4C4C4ACACACA6A6A6A6A6A6A9A9A9BBBBBBE1E1E1FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 2
    OnClick = ButtonPesquisarCargoClick
  end
  object ButtonPesquisarEmpresa: TSpeedButton [10]
    Left = 472
    Top = 73
    Width = 20
    Height = 24
    Caption = '...'
    Enabled = False
    Visible = False
    OnClick = ButtonPesquisarEmpresaClick
  end
  inherited GroupBox1: TGroupBox
    Top = 103
    Width = 506
    ExplicitTop = 103
    ExplicitWidth = 506
    inherited DBNavigator: TDBNavigator
      Width = 502
      Hints.Strings = ()
      ExplicitWidth = 502
    end
  end
  object EditCodigo: TDBEdit [12]
    Left = 77
    Top = 5
    Width = 44
    Height = 21
    DataField = 'CD_FUNCIONARIO'
    DataSource = ds
    TabOrder = 1
  end
  object EditNome: TDBEdit [13]
    Left = 185
    Top = 4
    Width = 316
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_FUNCIONARIO'
    DataSource = ds
    TabOrder = 2
  end
  object EditCpf: TDBEdit [14]
    Left = 77
    Top = 28
    Width = 76
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = ds
    TabOrder = 3
  end
  object EditCodCargos: TDBEdit [15]
    Left = 77
    Top = 51
    Width = 44
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CARGOS_CD_CARGOS'
    DataSource = ds
    TabOrder = 4
  end
  object EditCodEmpresa: TDBEdit [16]
    Left = 77
    Top = 74
    Width = 44
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMPRESA_CD_EMPRESA'
    DataSource = ds
    Enabled = False
    TabOrder = 5
  end
  object EditNomecargo: TDBEdit [17]
    Left = 237
    Top = 51
    Width = 264
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_CARGOS'
    DataSource = ds
    TabOrder = 6
  end
  object EditnomeEmpresa: TDBEdit [18]
    Left = 237
    Top = 74
    Width = 264
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds
    Enabled = False
    TabOrder = 7
  end
  object EditRg: TDBEdit [19]
    Left = 424
    Top = 28
    Width = 77
    Height = 21
    DataField = 'RG'
    DataSource = ds
    TabOrder = 8
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT FUNCIONARIO.*, CARGOS.NM_CARGOS, '
      'EMPRESA. RAZAO_SOCIAL'
      ''
      'FROM FUNCIONARIO'
      ''
      'INNER JOIN CARGOS'
      ''
      'ON (CARGOS.CD_CARGOS = FUNCIONARIO.CARGOS_CD_CARGOS)'
      ''
      'INNER JOIN EMPRESA'
      ''
      'ON (EMPRESA. CD_EMPRESA = FUNCIONARIO.EMPRESA_CD_EMPRESA)'
      ''
      'ORDER BY NM_FUNCIONARIO')
    object QueryCD_FUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."CD_FUNCIONARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_FUNCIONARIO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NM_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."NM_FUNCIONARIO"'
      Required = True
      Size = 100
    end
    object QueryCPF: TIBStringField
      DisplayLabel = 'Cpf'
      FieldName = 'CPF'
      Origin = '"FUNCIONARIO"."CPF"'
      EditMask = '000.000.000-00'
      FixedChar = True
      Size = 14
    end
    object QueryCARGOS_CD_CARGOS: TIntegerField
      DisplayLabel = 'C'#243'd. Cargo'
      FieldName = 'CARGOS_CD_CARGOS'
      Origin = '"FUNCIONARIO"."CARGOS_CD_CARGOS"'
      Required = True
    end
    object QueryEMPRESA_CD_EMPRESA: TIntegerField
      DisplayLabel = 'C'#243'd. Empresa'
      FieldName = 'EMPRESA_CD_EMPRESA'
      Origin = '"FUNCIONARIO"."EMPRESA_CD_EMPRESA"'
      Required = True
    end
    object QueryNM_CARGOS: TIBStringField
      DisplayLabel = 'Nome do cargo'
      DisplayWidth = 50
      FieldName = 'NM_CARGOS'
      Origin = '"CARGOS"."NM_CARGOS"'
      Required = True
      Size = 100
    end
    object QueryRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Nome da empresa'
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"EMPRESA"."RAZAO_SOCIAL"'
      Size = 25
    end
    object QueryRG: TIBStringField
      FieldName = 'RG'
      Origin = '"FUNCIONARIO"."RG"'
      Size = 15
    end
  end
  inherited Update: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CD_FUNCIONARIO,'
      '  NM_FUNCIONARIO,'
      '  CPF,'
      '  CARGOS_CD_CARGOS,'
      '  RG,'
      '  EMPRESA_CD_EMPRESA'
      'from FUNCIONARIO '
      'where'
      '  CD_FUNCIONARIO = :CD_FUNCIONARIO')
    ModifySQL.Strings = (
      'update FUNCIONARIO'
      'set'
      '  CD_FUNCIONARIO = :CD_FUNCIONARIO,'
      '  NM_FUNCIONARIO = :NM_FUNCIONARIO,'
      '  CPF = :CPF,'
      '  CARGOS_CD_CARGOS = :CARGOS_CD_CARGOS,'
      '  RG = :RG,'
      '  EMPRESA_CD_EMPRESA = :EMPRESA_CD_EMPRESA'
      'where'
      '  CD_FUNCIONARIO = :OLD_CD_FUNCIONARIO')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO'
      
        '  (CD_FUNCIONARIO, NM_FUNCIONARIO, CPF, CARGOS_CD_CARGOS, RG, EM' +
        'PRESA_CD_EMPRESA)'
      'values'
      
        '  (:CD_FUNCIONARIO, :NM_FUNCIONARIO, :CPF, :CARGOS_CD_CARGOS, :R' +
        'G, :EMPRESA_CD_EMPRESA)')
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO'
      'where'
      '  CD_FUNCIONARIO = :OLD_CD_FUNCIONARIO')
  end
end
