inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de produto'
  ClientHeight = 317
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited ButtonPesquisar: TSpeedButton
    Left = 139
    Top = 42
    Width = 30
    Height = 22
    OnClick = ButtonPesquisarClick
    ExplicitLeft = 139
    ExplicitTop = 42
    ExplicitWidth = 30
    ExplicitHeight = 22
  end
  object Label1: TLabel [1]
    Left = 25
    Top = 46
    Width = 64
    Height = 13
    Caption = 'C'#243'd. Produto'
    FocusControl = EditCodProduto
  end
  object Label2: TLabel [2]
    Left = 194
    Top = 46
    Width = 42
    Height = 13
    Caption = 'Desci'#231#227'o'
    FocusControl = EditNomeProduto
  end
  object Label3: TLabel [3]
    Left = 159
    Top = 69
    Width = 77
    Height = 13
    Caption = 'C'#243'digo de barra'
    FocusControl = EditcodBarra
  end
  object Label4: TLabel [4]
    Left = 33
    Top = 69
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = EditQtd
  end
  object Label5: TLabel [5]
    Left = 18
    Top = 90
    Width = 71
    Height = 13
    Caption = 'Pre'#231'o de custo'
  end
  object Label6: TLabel [6]
    Left = 161
    Top = 92
    Width = 75
    Height = 13
    Caption = 'Pre'#231'o de venda'
  end
  object Label7: TLabel [7]
    Left = 364
    Top = 69
    Width = 87
    Height = 13
    Caption = 'Possui campanha?'
  end
  object Label8: TLabel [8]
    Left = 8
    Top = 115
    Width = 81
    Height = 13
    Caption = 'C'#243'd. Fornecedor'
    FocusControl = EditCodFornecedor
  end
  object Label9: TLabel [9]
    Left = 181
    Top = 115
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
    FocusControl = EditNomeFornecedor
  end
  object Label10: TLabel [10]
    Left = 357
    Top = 93
    Width = 29
    Height = 13
    Caption = 'Marca'
    FocusControl = EditMarca
  end
  object Label11: TLabel [11]
    Left = 196
    Top = 139
    Width = 40
    Height = 13
    Caption = 'Validade'
    FocusControl = editValidade
  end
  object Label12: TLabel [12]
    Left = 68
    Top = 139
    Width = 21
    Height = 13
    Caption = 'Lote'
    FocusControl = editLote
  end
  object Label13: TLabel [13]
    Left = 68
    Top = 186
    Width = 26
    Height = 13
    Caption = 'Peso '
  end
  object Label14: TLabel [14]
    Left = 25
    Top = 162
    Width = 64
    Height = 13
    Caption = 'Volume/Litros'
  end
  object Label15: TLabel [15]
    Left = 207
    Top = 163
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object Label16: TLabel [16]
    Left = 349
    Top = 162
    Width = 37
    Height = 13
    Caption = 'Largura'
  end
  object Label17: TLabel [17]
    Left = 322
    Top = 140
    Width = 64
    Height = 13
    Caption = 'Profundidade'
  end
  object Label18: TLabel [18]
    Left = 346
    Top = 185
    Width = 78
    Height = 13
    Caption = #218'ltima Altera'#231#227'o'
    FocusControl = EditUltimaAlteracao
  end
  object Label19: TLabel [19]
    Left = 174
    Top = 184
    Width = 62
    Height = 13
    Caption = #218'ltima venda'
    FocusControl = EditUltimaVenda
  end
  object Label20: TLabel [20]
    Left = 358
    Top = 208
    Width = 67
    Height = 13
    Caption = #218'ltima compra'
    FocusControl = EditUltimaCompra
  end
  object Label21: TLabel [21]
    Left = 8
    Top = 23
    Width = 81
    Height = 13
    Caption = 'C'#243'd. Funcion'#225'rio'
    FocusControl = EditCodFuncionario
  end
  object Label22: TLabel [22]
    Left = 181
    Top = 25
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
    FocusControl = EditNomeFuncionario
  end
  object ButtonPesquisarFornecedor: TSpeedButton [23]
    Left = 139
    Top = 111
    Width = 30
    Height = 24
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
    OnClick = ButtonPesquisarFornecedorClick
  end
  object Label23: TLabel [24]
    Left = 91
    Top = 3
    Width = 93
    Height = 13
    Caption = 'CADASTRADO POR'
  end
  object ButtonpesquisarFuncionario: TSpeedButton [25]
    Left = 139
    Top = 20
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
    OnClick = ButtonpesquisarFuncionarioClick
  end
  inherited GroupBox1: TGroupBox
    Top = 231
    ExplicitTop = 231
    inherited DBNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  object EditCodProduto: TDBEdit [27]
    Left = 94
    Top = 43
    Width = 46
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CD_PRODUTO'
    DataSource = ds
    ReadOnly = True
    TabOrder = 1
  end
  object EditNomeProduto: TDBEdit [28]
    Left = 240
    Top = 43
    Width = 252
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_PRODUTO'
    DataSource = ds
    TabOrder = 2
  end
  object EditcodBarra: TDBEdit [29]
    Left = 240
    Top = 66
    Width = 122
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CD_BARRA'
    DataSource = ds
    TabOrder = 3
  end
  object EditQtd: TDBEdit [30]
    Left = 94
    Top = 66
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUANTIDADE'
    DataSource = ds
    TabOrder = 4
  end
  object EditCodFornecedor: TDBEdit [31]
    Left = 95
    Top = 112
    Width = 45
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FORNECEDOR_CD_FORNECEDOR'
    DataSource = ds
    TabOrder = 5
  end
  object EditNomeFornecedor: TDBEdit [32]
    Left = 240
    Top = 113
    Width = 252
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_FORNECEDOR'
    DataSource = ds
    TabOrder = 6
  end
  object EditMarca: TDBEdit [33]
    Left = 388
    Top = 90
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MARCA'
    DataSource = ds
    TabOrder = 7
  end
  object editValidade: TDBEdit [34]
    Left = 240
    Top = 136
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALIDADE'
    DataSource = ds
    TabOrder = 8
  end
  object editLote: TDBEdit [35]
    Left = 95
    Top = 136
    Width = 74
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOTE'
    DataSource = ds
    TabOrder = 9
  end
  object EditUltimaAlteracao: TDBEdit [36]
    Left = 429
    Top = 182
    Width = 63
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DATA_ULTIMA_MODIFICACAO'
    DataSource = ds
    ReadOnly = True
    TabOrder = 10
  end
  object EditUltimaVenda: TDBEdit [37]
    Left = 240
    Top = 182
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DT_ULTIMA_VENDA'
    DataSource = ds
    TabOrder = 11
  end
  object EditUltimaCompra: TDBEdit [38]
    Left = 429
    Top = 205
    Width = 63
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DT_ULTIMA_COMPRA'
    DataSource = ds
    TabOrder = 12
  end
  object EditCodFuncionario: TDBEdit [39]
    Left = 94
    Top = 20
    Width = 46
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FUNCIONARIO_CD_FUNCIONARIO'
    DataSource = ds
    TabOrder = 13
  end
  object EditNomeFuncionario: TDBEdit [40]
    Left = 240
    Top = 20
    Width = 252
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NM_FUNCIONARIO'
    DataSource = ds
    TabOrder = 14
  end
  object EditAltura: TDBEdit [41]
    Left = 240
    Top = 159
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ALTURA'
    DataSource = ds
    TabOrder = 15
  end
  object EditPcusto: TDBEdit [42]
    Left = 95
    Top = 90
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    DataField = 'P_CUSTO'
    DataSource = ds
    TabOrder = 16
  end
  object EditPvenda: TDBEdit [43]
    Left = 240
    Top = 90
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    DataField = 'P_VENDA'
    DataSource = ds
    TabOrder = 17
  end
  object EditPeso: TDBEdit [44]
    Left = 94
    Top = 182
    Width = 75
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PESO'
    DataSource = ds
    TabOrder = 18
  end
  object Editvolume: TDBEdit [45]
    Left = 95
    Top = 159
    Width = 74
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VOLUME'
    DataSource = ds
    TabOrder = 19
  end
  object editLargura: TDBEdit [46]
    Left = 388
    Top = 160
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LARGURA'
    DataSource = ds
    TabOrder = 20
  end
  object EditProfundidade: TDBEdit [47]
    Left = 388
    Top = 136
    Width = 104
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PROFUNDIDADE'
    DataSource = ds
    TabOrder = 21
  end
  object Combotemcampanha: TComboBox [48]
    Left = 450
    Top = 66
    Width = 42
    Height = 21
    CharCase = ecUpperCase
    ItemIndex = 1
    TabOrder = 22
    Text = 'N'#195'O'
    OnClick = CombotemcampanhaClick
    Items.Strings = (
      'SIM'
      'N'#195'O')
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT PRODUTO.*, FORNECEDOR. NM_FORNECEDOR, '
      'FUNCIONARIO. NM_FUNCIONARIO '
      ''
      'FROM PRODUTO'
      ''
      'INNER JOIN FUNCIONARIO'
      ''
      
        'ON (PRODUTO.FUNCIONARIO_CD_FUNCIONARIO = FUNCIONARIO. CD_FUNCION' +
        'ARIO)'
      ''
      'INNER  JOIN FORNECEDOR'
      ''
      
        'ON (FORNECEDOR. CD_FORNECEDOR = PRODUTO. FORNECEDOR_CD_FORNECEDO' +
        'R)'
      ''
      'ORDER BY NM_PRODUTO')
    Left = 432
    Top = 22
    object QueryCD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CD_PRODUTO'
      Origin = '"PRODUTO"."CD_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_PRODUTO: TIBStringField
      DisplayLabel = 'Nome do produto'
      FieldName = 'NM_PRODUTO'
      Origin = '"PRODUTO"."NM_PRODUTO"'
      Required = True
      Size = 100
    end
    object QueryCD_BARRA: TIntegerField
      DisplayLabel = 'C'#243'digo de barra'
      FieldName = 'CD_BARRA'
      Origin = '"PRODUTO"."CD_BARRA"'
      Required = True
    end
    object QueryQUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO"."QUANTIDADE"'
    end
    object QueryTEMSORTEIO: TIBStringField
      DisplayLabel = 'Possui campanha?'
      FieldName = 'TEMSORTEIO'
      Origin = '"PRODUTO"."TEMSORTEIO"'
      FixedChar = True
      Size = 10
    end
    object QueryFORNECEDOR_CD_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'FORNECEDOR_CD_FORNECEDOR'
      Origin = '"PRODUTO"."FORNECEDOR_CD_FORNECEDOR"'
      Required = True
    end
    object QueryNM_FORNECEDOR: TIBStringField
      DisplayLabel = 'Nome do fornecedor'
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
    object QueryMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"PRODUTO"."MARCA"'
      Size = 50
    end
    object QueryVALIDADE: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"PRODUTO"."VALIDADE"'
      EditMask = '00/00/0000'
    end
    object QueryLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"PRODUTO"."LOTE"'
      Size = 10
    end
    object QueryDATA_ULTIMA_MODIFICACAO: TDateField
      DisplayLabel = #218'ltima Altera'#231#227'o'
      FieldName = 'DATA_ULTIMA_MODIFICACAO'
      Origin = '"PRODUTO"."DATA_ULTIMA_MODIFICACAO"'
      EditMask = '00/00/0000'
    end
    object QueryDT_ULTIMA_VENDA: TDateField
      DisplayLabel = #218'ltima venda'
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"PRODUTO"."DT_ULTIMA_VENDA"'
      EditMask = '00/00/0000'
    end
    object QueryDT_ULTIMA_COMPRA: TDateField
      DisplayLabel = #218'ltima compra'
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"PRODUTO"."DT_ULTIMA_COMPRA"'
      EditMask = '00/00/0000'
    end
    object QueryFUNCIONARIO_CD_FUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Funcion'#225'rio'
      FieldName = 'FUNCIONARIO_CD_FUNCIONARIO'
      Origin = '"PRODUTO"."FUNCIONARIO_CD_FUNCIONARIO"'
      Required = True
    end
    object QueryNM_FUNCIONARIO: TIBStringField
      DisplayLabel = 'Nome do funcion'#225'rio'
      FieldName = 'NM_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."NM_FUNCIONARIO"'
      Required = True
      Size = 100
    end
    object QueryALTURA: TIBBCDField
      FieldName = 'ALTURA'
      Origin = '"PRODUTO"."ALTURA"'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QueryP_CUSTO: TIBBCDField
      FieldName = 'P_CUSTO'
      Origin = '"PRODUTO"."P_CUSTO"'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QueryP_VENDA: TIBBCDField
      FieldName = 'P_VENDA'
      Origin = '"PRODUTO"."P_VENDA"'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QueryPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PRODUTO"."PESO"'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QueryVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PRODUTO"."VOLUME"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object QueryLARGURA: TIBBCDField
      FieldName = 'LARGURA'
      Origin = '"PRODUTO"."LARGURA"'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QueryPROFUNDIDADE: TIBBCDField
      FieldName = 'PROFUNDIDADE'
      Origin = '"PRODUTO"."PROFUNDIDADE"'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
  end
  inherited Update: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DT_ULTIMA_VENDA,'
      '  DT_ULTIMA_COMPRA,'
      '  QUANTIDADE,'
      '  TEMSORTEIO,'
      '  CD_PRODUTO,'
      '  CD_BARRA,'
      '  NM_PRODUTO,'
      '  P_CUSTO,'
      '  P_VENDA,'
      '  FORNECEDOR_CD_FORNECEDOR,'
      '  MARCA,'
      '  DATA_ULTIMA_MODIFICACAO,'
      '  VOLUME,'
      '  PESO,'
      '  VALIDADE,'
      '  LOTE,'
      '  ALTURA,'
      '  LARGURA,'
      '  PROFUNDIDADE,'
      '  FUNCIONARIO_CD_FUNCIONARIO'
      'from PRODUTO '
      'where'
      '  CD_PRODUTO = :CD_PRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  DT_ULTIMA_VENDA = :DT_ULTIMA_VENDA,'
      '  DT_ULTIMA_COMPRA = :DT_ULTIMA_COMPRA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  TEMSORTEIO = :TEMSORTEIO,'
      '  CD_PRODUTO = :CD_PRODUTO,'
      '  CD_BARRA = :CD_BARRA,'
      '  NM_PRODUTO = :NM_PRODUTO,'
      '  P_CUSTO = :P_CUSTO,'
      '  P_VENDA = :P_VENDA,'
      '  FORNECEDOR_CD_FORNECEDOR = :FORNECEDOR_CD_FORNECEDOR,'
      '  MARCA = :MARCA,'
      '  DATA_ULTIMA_MODIFICACAO = :DATA_ULTIMA_MODIFICACAO,'
      '  VOLUME = :VOLUME,'
      '  PESO = :PESO,'
      '  VALIDADE = :VALIDADE,'
      '  LOTE = :LOTE,'
      '  ALTURA = :ALTURA,'
      '  LARGURA = :LARGURA,'
      '  PROFUNDIDADE = :PROFUNDIDADE,'
      '  FUNCIONARIO_CD_FUNCIONARIO = :FUNCIONARIO_CD_FUNCIONARIO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (DT_ULTIMA_VENDA, DT_ULTIMA_COMPRA, QUANTIDADE, TEMSORTEIO, CD' +
        '_PRODUTO, '
      
        '   CD_BARRA, NM_PRODUTO, P_CUSTO, P_VENDA, FORNECEDOR_CD_FORNECE' +
        'DOR, MARCA, '
      
        '   DATA_ULTIMA_MODIFICACAO, VOLUME, PESO, VALIDADE, LOTE, ALTURA' +
        ', LARGURA, '
      '   PROFUNDIDADE, FUNCIONARIO_CD_FUNCIONARIO)'
      'values'
      
        '  (:DT_ULTIMA_VENDA, :DT_ULTIMA_COMPRA, :QUANTIDADE, :TEMSORTEIO' +
        ', :CD_PRODUTO, '
      
        '   :CD_BARRA, :NM_PRODUTO, :P_CUSTO, :P_VENDA, :FORNECEDOR_CD_FO' +
        'RNECEDOR, '
      
        '   :MARCA, :DATA_ULTIMA_MODIFICACAO, :VOLUME, :PESO, :VALIDADE, ' +
        ':LOTE, '
      
        '   :ALTURA, :LARGURA, :PROFUNDIDADE, :FUNCIONARIO_CD_FUNCIONARIO' +
        ')')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  CD_PRODUTO = :OLD_CD_PRODUTO')
    Left = 432
    Top = 102
  end
  inherited ds: TDataSource
    Left = 456
    Top = 157
  end
end
