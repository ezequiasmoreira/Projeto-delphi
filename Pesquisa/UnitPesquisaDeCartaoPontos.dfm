inherited FormPesquisaCartaoPontos: TFormPesquisaCartaoPontos
  Caption = 'Pesquisa de cart'#227'o pontos'
  ClientWidth = 548
  ExplicitWidth = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 548
    ExplicitWidth = 548
    inherited RadioFiltro: TRadioGroup
      Columns = 3
      Items.Strings = (
        'N'#186' do cart'#227'o'
        'Nome do cliente'
        'Cpf')
      OnClick = RadioFiltroClick
    end
    inherited ButtonPesquisar: TBitBtn
      OnClick = ButtonPesquisarClick
    end
    inherited ButtonImprimir: TBitBtn
      OnClick = ButtonImprimirClick
    end
  end
  inherited GridPesquisa: TDBGrid
    Width = 548
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT CARTAO_PONTOS.*, CLIENTE. NM_CLIENTE, CLIENTE.CPF'
      ''
      'FROM CARTAO_PONTOS'
      ''
      'INNER JOIN CLIENTE'
      ''
      'ON (CLIENTE.CD_CLIENTE = CARTAO_PONTOS.CLIENTE_CD_CLIENTE)'
      ''
      'ORDER BY DATA_CARTAO')
    object QueryNUN_CARTAO: TIntegerField
      DisplayLabel = 'N'#186' do cart'#227'o '
      FieldName = 'NUN_CARTAO'
      Origin = '"CARTAO_PONTOS"."NUN_CARTAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryACUMULA_PONTOS: TIntegerField
      DisplayLabel = 'Pontos'
      FieldName = 'ACUMULA_PONTOS'
      Origin = '"CARTAO_PONTOS"."ACUMULA_PONTOS"'
    end
    object QueryNM_CLIENTE: TIBStringField
      DisplayLabel = 'Nome do cliente'
      DisplayWidth = 40
      FieldName = 'NM_CLIENTE'
      Origin = '"CLIENTE"."NM_CLIENTE"'
      Required = True
      Size = 150
    end
    object QueryCPF: TIBStringField
      DisplayLabel = 'Cpf'
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      Size = 14
    end
    object QueryCLIENTE_CD_CLIENTE: TIntegerField
      FieldName = 'CLIENTE_CD_CLIENTE'
      Origin = '"CARTAO_PONTOS"."CLIENTE_CD_CLIENTE"'
      Required = True
    end
  end
  object DatasetCartao_pontos: TfrxDBDataset
    UserName = 'DatasetCartao_pontos'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 280
    Top = 112
  end
  object ReportCartao_pontos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43058.918084398100000000
    ReportOptions.LastChange = 43058.918084398100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 40
    Datasets = <
      item
        DataSet = DatasetCartao_pontos
        DataSetName = 'DatasetCartao_pontos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = DatasetCartao_pontos
        DataSetName = 'DatasetCartao_pontos'
        RowCount = 0
        object DatasetCartao_pontosNUN_CARTAO: TfrxMemoView
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUN_CARTAO'
          DataSet = DatasetCartao_pontos
          DataSetName = 'DatasetCartao_pontos'
          Memo.UTF8W = (
            '[DatasetCartao_pontos."NUN_CARTAO"]')
        end
        object DatasetCartao_pontosCLIENTE_CD_CLIENTE: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE_CD_CLIENTE'
          DataSet = DatasetCartao_pontos
          DataSetName = 'DatasetCartao_pontos'
          Memo.UTF8W = (
            '[DatasetCartao_pontos."CLIENTE_CD_CLIENTE"]')
        end
        object DatasetCartao_pontosNM_CLIENTE: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CLIENTE'
          DataSet = DatasetCartao_pontos
          DataSetName = 'DatasetCartao_pontos'
          Memo.UTF8W = (
            '[DatasetCartao_pontos."NM_CLIENTE"]')
        end
        object DatasetCartao_pontosCPF: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = DatasetCartao_pontos
          DataSetName = 'DatasetCartao_pontos'
          Memo.UTF8W = (
            '[DatasetCartao_pontos."CPF"]')
        end
        object DatasetCartao_pontosACUMULA_PONTOS: TfrxMemoView
          Left = 612.283860000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ACUMULA_PONTOS'
          DataSet = DatasetCartao_pontos
          DataSetName = 'DatasetCartao_pontos'
          Memo.UTF8W = (
            '[DatasetCartao_pontos."ACUMULA_PONTOS"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 111.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.559060000000000000
          Top = 77.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' Cart'#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 84.708720000000000000
          Top = 77.354360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.543290000000000000
          Top = 105.165430000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 631.181510000000000000
          Top = 27.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 173.315090000000000000
          Top = 76.708720000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome do cliente')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 494.575140000000000000
          Top = 76.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cpf')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CART'#195'O PONTOS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pontos')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 0.779530000000000000
          Top = 3.456710000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
