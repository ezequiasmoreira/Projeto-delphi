inherited FormPesquisaFornecedor: TFormPesquisaFornecedor
  Caption = 'Pesquisa de fornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    inherited RadioFiltro: TRadioGroup
      Columns = 3
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cnpj')
      OnClick = RadioFiltroClick
    end
    inherited ButtonPesquisar: TBitBtn
      OnClick = ButtonPesquisarClick
    end
    inherited ButtonImprimir: TBitBtn
      OnClick = ButtonImprimirClick
    end
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT CNJP, CD_FORNECEDOR, NM_FORNECEDOR'
      ''
      'FROM FORNECEDOR'
      ''
      'ORDER BY NM_FORNECEDOR')
    object QueryCD_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_FORNECEDOR'
      Origin = '"FORNECEDOR"."CD_FORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_FORNECEDOR: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 51
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
  end
  object DatasetFornecedor: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 240
    Top = 104
  end
  object ReportFornecedor: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43059.886119050900000000
    ReportOptions.LastChange = 43059.886119050900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 264
    Top = 168
    Datasets = <
      item
        DataSet = DatasetFornecedor
        DataSetName = 'frxDBDataset1'
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
        Height = 34.456710000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = DatasetFornecedor
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_FORNECEDOR: TfrxMemoView
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CD_FORNECEDOR'
          DataSet = DatasetFornecedor
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_FORNECEDOR"]')
        end
        object frxDBDataset1NM_FORNECEDOR: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559060000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FORNECEDOR'
          DataSet = DatasetFornecedor
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FORNECEDOR"]')
        end
        object frxDBDataset1CNJP: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CNJP'
          DataSet = DatasetFornecedor
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CNJP"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 106.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 627.842920000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 628.063390000000000000
          Top = 27.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 628.842920000000000000
          Top = 51.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page]')
        end
        object Memo2: TfrxMemoView
          Left = 6.000000000000000000
          Top = 25.779530000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Fornecedor')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 2.220470000000000000
          Top = 72.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd. fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 112.606370000000000000
          Top = 72.472480000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome do fornecedor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 572.709030000000000000
          Top = 71.692950000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cnpj')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 101.370130000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 3.220470000000000000
          Top = 3.236240000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
