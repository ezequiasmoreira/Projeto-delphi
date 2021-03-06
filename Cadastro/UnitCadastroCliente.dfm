inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro Cliente'
  ClientHeight = 430
  ClientWidth = 462
  ExplicitWidth = 468
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 8
    Top = 295
    Width = 71
    Height = 13
    Caption = 'N'#176' do contrato'
    FocusControl = EditNUNContrato
  end
  object Label16: TLabel [1]
    Left = 222
    Top = 295
    Width = 27
    Height = 13
    Caption = 'Limite'
    FocusControl = EditLimite
  end
  object Label17: TLabel [2]
    Left = 24
    Top = 318
    Width = 55
    Height = 13
    Caption = 'Vencimento'
    FocusControl = EditVencimento
  end
  inherited ButtonPesquisar: TSpeedButton
    Left = 113
    Top = 11
    Width = 36
    Height = 23
    OnClick = ButtonPesquisarClick
    ExplicitLeft = 113
    ExplicitTop = 11
    ExplicitWidth = 36
    ExplicitHeight = 23
  end
  inherited GroupBox1: TGroupBox
    Top = 344
    Width = 462
    ExplicitTop = 344
    ExplicitWidth = 462
    inherited DBNavigator: TDBNavigator
      Width = 458
      Hints.Strings = ()
      ExplicitWidth = 458
    end
    inherited ButtonEditar: TBitBtn
      Left = 78
      Width = 76
      ExplicitLeft = 78
      ExplicitWidth = 76
    end
    inherited ButtonExcluir: TBitBtn
      Left = 302
      Width = 81
      ExplicitLeft = 302
      ExplicitWidth = 81
    end
    inherited ButtonFechar: TBitBtn
      Left = 379
      Width = 81
      ExplicitLeft = 379
      ExplicitWidth = 81
    end
    inherited ButtonNovo: TBitBtn
      Left = 0
      Width = 81
      ExplicitLeft = 0
      ExplicitWidth = 81
    end
    inherited ButtonSalvar: TBitBtn
      Left = 151
      Width = 76
      ExplicitLeft = 151
      ExplicitWidth = 76
    end
    inherited ButtonDesfazer: TBitBtn
      Left = 224
      Width = 81
      ExplicitLeft = 224
      ExplicitWidth = 81
    end
  end
  object EditNUNContrato: TDBEdit [5]
    Left = 82
    Top = 292
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUN_CONTRATO'
    DataSource = ds
    TabOrder = 4
  end
  object EditLimite: TDBEdit [6]
    Left = 255
    Top = 290
    Width = 196
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LIMITE'
    DataSource = ds
    TabOrder = 5
  end
  object EditVencimento: TDBEdit [7]
    Left = 82
    Top = 315
    Width = 134
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DT_VENCIMENTO_BOLETO'
    DataSource = ds
    TabOrder = 6
  end
  object GroupDadosdoCliente: TGroupBox [8]
    Left = 0
    Top = 0
    Width = 462
    Height = 89
    Align = alTop
    Caption = 'DADOS DO CLIENTE'
    TabOrder = 1
    OnClick = GroupDadosdoClienteClick
    object labelcodCliente: TLabel
      Left = 20
      Top = 19
      Width = 59
      Height = 13
      Caption = 'C'#243'd. Cliente'
      FocusControl = EditCodigo
    end
    object LabelSexo: TLabel
      Left = 228
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object LabelNM_Cliente: TLabel
      Left = 3
      Top = 41
      Width = 76
      Height = 13
      Caption = 'Nome do cliente'
      FocusControl = EditNomeCliente
    end
    object Label3: TLabel
      Left = 281
      Top = 65
      Width = 95
      Height = 13
      Caption = 'Data de nascimento'
      FocusControl = EditdataNasc
    end
    object Label9: TLabel
      Left = 65
      Top = 64
      Width = 14
      Height = 13
      Caption = 'RG'
      FocusControl = EditRG
    end
    object Label10: TLabel
      Left = 172
      Top = 64
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = EditCPF
    end
    object EditCodigo: TDBEdit
      Left = 82
      Top = 12
      Width = 32
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CD_CLIENTE'
      DataSource = ds
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditNomeCliente: TDBEdit
      Left = 82
      Top = 38
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NM_CLIENTE'
      DataSource = ds
      TabOrder = 2
    end
    object EditdataNasc: TDBEdit
      Left = 380
      Top = 61
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DATA_NASC'
      DataSource = ds
      TabOrder = 5
    end
    object EditRG: TDBEdit
      Left = 82
      Top = 61
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG'
      DataSource = ds
      TabOrder = 3
    end
    object EditCPF: TDBEdit
      Left = 194
      Top = 61
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = ds
      TabOrder = 4
    end
    object Radiosexo: TRadioGroup
      Left = 269
      Top = 0
      Width = 151
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 1
      OnClick = RadiosexoClick
    end
  end
  object GroupContatodoCliente: TGroupBox [9]
    Left = 0
    Top = 97
    Width = 454
    Height = 75
    Align = alCustom
    Caption = 'CONTATO DO CLIENTE'
    TabOrder = 2
    object Label6: TLabel
      Left = 55
      Top = 43
      Width = 24
      Height = 13
      Caption = 'Email'
      FocusControl = EditEmail
    end
    object Label11: TLabel
      Left = 37
      Top = 20
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label5: TLabel
      Left = 169
      Top = 20
      Width = 85
      Height = 13
      Caption = 'Permi'#231#227'o de Email'
    end
    object EditEmail: TDBEdit
      Left = 82
      Top = 40
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMAIL'
      DataSource = ds
      TabOrder = 1
    end
    object EditTelefone: TDBEdit
      Left = 82
      Top = 17
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = ds
      TabOrder = 0
    end
    object RadioPermicao: TRadioGroup
      Left = 269
      Top = 7
      Width = 185
      Height = 31
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 2
      OnClick = RadioPermicaoClick
    end
  end
  object GrouplOCALIZACAOcLIENTE: TGroupBox [10]
    Left = 0
    Top = 178
    Width = 458
    Height = 106
    Caption = 'LOCALIZA'#199#195'O DO CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label18: TLabel
      Left = 309
      Top = 43
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = EditCep
    end
    object Label15: TLabel
      Left = 46
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Estado'
      FocusControl = EditEstado
    end
    object Label13: TLabel
      Left = 147
      Top = 20
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = EditCidade
    end
    object Label12: TLabel
      Left = 51
      Top = 44
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = EditBairro
    end
    object Label14: TLabel
      Left = 12
      Top = 66
      Width = 67
      Height = 13
      Caption = 'Rua e n'#250'mero'
    end
    object SpeedButton1: TSpeedButton
      Left = 113
      Top = 16
      Width = 30
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 420
      Top = 16
      Width = 30
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
      OnClick = SpeedButton2Click
    end
    object Label1: TLabel
      Left = 169
      Top = 66
      Width = 68
      Height = 13
      Caption = 'COD_ESTADO'
    end
    object EditEstado: TDBEdit
      Left = 82
      Top = 17
      Width = 32
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ESTADO'
      DataSource = ds
      TabOrder = 0
    end
    object EditCidade: TDBEdit
      Left = 186
      Top = 17
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = ds
      TabOrder = 1
    end
    object EditCep: TDBEdit
      Left = 333
      Top = 40
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = ds
      TabOrder = 3
    end
    object EditBairro: TDBEdit
      Left = 82
      Top = 40
      Width = 221
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = ds
      TabOrder = 2
    end
    object EditEndereco: TDBEdit
      Left = 82
      Top = 62
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO_RUA_NUN'
      DataSource = ds
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox [11]
    Left = 0
    Top = 268
    Width = 454
    Height = 21
    TabOrder = 7
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'select CLIENTE .*,  ESTADO. COD_ESTADO  from CLIENTE,ESTADO'
      ''
      'order by CD_CLIENTE')
    Left = 384
    Top = 34
    object QueryLIMITE: TIntegerField
      FieldName = 'LIMITE'
      Origin = '"CLIENTE"."LIMITE"'
    end
    object QueryCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
      Origin = '"CLIENTE"."CD_CLIENTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNUN_CONTRATO: TIntegerField
      FieldName = 'NUN_CONTRATO'
      Origin = '"CLIENTE"."NUN_CONTRATO"'
    end
    object QueryNM_CLIENTE: TIBStringField
      FieldName = 'NM_CLIENTE'
      Origin = '"CLIENTE"."NM_CLIENTE"'
      Required = True
      Size = 150
    end
    object QueryDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      Origin = '"CLIENTE"."DATA_NASC"'
      Required = True
      EditMask = '00/00/0000'
    end
    object QuerySEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"CLIENTE"."SEXO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryP_EMAIL: TIBStringField
      FieldName = 'P_EMAIL'
      Origin = '"CLIENTE"."P_EMAIL"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTE"."EMAIL"'
      Size = 100
    end
    object QueryBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTE"."BAIRRO"'
    end
    object QueryCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTE"."CIDADE"'
    end
    object QueryENEDERECO_TIPO: TIBStringField
      FieldName = 'ENEDERECO_TIPO'
      Origin = '"CLIENTE"."ENEDERECO_TIPO"'
    end
    object QueryENDERECO_RUA_NUN: TIBStringField
      FieldName = 'ENDERECO_RUA_NUN'
      Origin = '"CLIENTE"."ENDERECO_RUA_NUN"'
      Size = 200
    end
    object QueryRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTE"."RG"'
      Size = 15
    end
    object QueryCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      EditMask = '000.000.000-00'
      Size = 14
    end
    object QueryESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTE"."ESTADO"'
      Size = 2
    end
    object QueryDT_VENCIMENTO_BOLETO: TDateField
      FieldName = 'DT_VENCIMENTO_BOLETO'
      Origin = '"CLIENTE"."DT_VENCIMENTO_BOLETO"'
      EditMask = '00/00/0000'
    end
    object QueryCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTE"."CEP"'
      EditMask = '00000-000'
    end
    object QueryTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTE"."TELEFONE"'
      EditMask = '(00)0000-9999'
      FixedChar = True
      Size = 14
    end
    object QueryCOD_ESTADO: TSmallintField
      FieldName = 'COD_ESTADO'
      Origin = '"ESTADO"."COD_ESTADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  inherited Update: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CD_CLIENTE,'
      '  NUN_CONTRATO,'
      '  NM_CLIENTE,'
      '  DATA_NASC,'
      '  SEXO,'
      '  P_EMAIL,'
      '  EMAIL,'
      '  TELEFONE,'
      '  BAIRRO,'
      '  CIDADE,'
      '  ENEDERECO_TIPO,'
      '  ENDERECO_RUA_NUN,'
      '  RG,'
      '  CPF,'
      '  ESTADO,'
      '  LIMITE,'
      '  DT_VENCIMENTO_BOLETO,'
      '  CEP'
      'from CLIENTE '
      'where'
      '  CD_CLIENTE = :CD_CLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CD_CLIENTE = :CD_CLIENTE,'
      '  NUN_CONTRATO = :NUN_CONTRATO,'
      '  NM_CLIENTE = :NM_CLIENTE,'
      '  DATA_NASC = :DATA_NASC,'
      '  SEXO = :SEXO,'
      '  P_EMAIL = :P_EMAIL,'
      '  EMAIL = :EMAIL,'
      '  TELEFONE = :TELEFONE,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  ENEDERECO_TIPO = :ENEDERECO_TIPO,'
      '  ENDERECO_RUA_NUN = :ENDERECO_RUA_NUN,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  ESTADO = :ESTADO,'
      '  LIMITE = :LIMITE,'
      '  DT_VENCIMENTO_BOLETO = :DT_VENCIMENTO_BOLETO,'
      '  CEP = :CEP'
      'where'
      '  CD_CLIENTE = :OLD_CD_CLIENTE')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (CD_CLIENTE, NUN_CONTRATO, NM_CLIENTE, DATA_NASC, SEXO, P_EMAI' +
        'L, EMAIL, '
      
        '   TELEFONE, BAIRRO, CIDADE, ENEDERECO_TIPO, ENDERECO_RUA_NUN, R' +
        'G, CPF, '
      '   ESTADO, LIMITE, DT_VENCIMENTO_BOLETO, CEP)'
      'values'
      
        '  (:CD_CLIENTE, :NUN_CONTRATO, :NM_CLIENTE, :DATA_NASC, :SEXO, :' +
        'P_EMAIL, '
      
        '   :EMAIL, :TELEFONE, :BAIRRO, :CIDADE, :ENEDERECO_TIPO, :ENDERE' +
        'CO_RUA_NUN, '
      '   :RG, :CPF, :ESTADO, :LIMITE, :DT_VENCIMENTO_BOLETO, :CEP)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  CD_CLIENTE = :OLD_CD_CLIENTE')
    Left = 385
    Top = 162
  end
  inherited ds: TDataSource
    Left = 416
    Top = 90
  end
end
