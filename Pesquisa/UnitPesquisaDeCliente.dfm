inherited FormPesquisaCliente: TFormPesquisaCliente
  Caption = 'Pesquisa de Cliente'
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 537
    ExplicitWidth = 537
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
    Width = 537
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT CLIENTE. NM_CLIENTE, CLIENTE.CD_CLIENTE,'
      'CLIENTE.CPF'
      ''
      'FROM CLIENTE '
      ''
      'ORDER BY NM_CLIENTE')
    object QueryCD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CD_CLIENTE'
      Origin = '"CLIENTE"."CD_CLIENTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_CLIENTE: TIBStringField
      DisplayLabel = 'Nome do cliente'
      DisplayWidth = 57
      FieldName = 'NM_CLIENTE'
      Origin = '"CLIENTE"."NM_CLIENTE"'
      Required = True
      Size = 150
    end
    object QueryCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      Size = 14
    end
  end
  object DatasetCliente: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 304
    Top = 72
  end
  object ReportCliente: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43058.929460590300000000
    ReportOptions.LastChange = 43058.929460590300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 272
    Top = 144
    Datasets = <
      item
        DataSet = DatasetCliente
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
        Height = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = DatasetCliente
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_CLIENTE: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CLIENTE'
          DataSet = DatasetCliente
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CLIENTE"]')
        end
        object frxDBDataset1NM_CLIENTE: TfrxMemoView
          Left = 94.488250000000000000
          Top = 7.559060000000000000
          Width = 480.000310000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CLIENTE'
          DataSet = DatasetCliente
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CLIENTE"]')
        end
        object frxDBDataset1CPF: TfrxMemoView
          Left = 597.165740000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = DatasetCliente
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CPF"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 624.165740000000000000
          Top = 7.559060000000000000
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
        object Memo3: TfrxMemoView
          Left = 5.881880000000000000
          Top = 84.692950000000000000
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
          Left = -7.559060000000000000
          Top = 104.944960000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 624.165740000000000000
          Top = 31.015770000000000000
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
          Left = 624.165740000000000000
          Top = 55.913420000000000000
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
          Left = 94.488250000000000000
          Top = 84.047310000000000000
          Width = 487.559370000000000000
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
          Left = 597.165740000000000000
          Top = 84.047310000000000000
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
        object Memo5: TfrxMemoView
          Left = -7.015770000000000000
          Top = 7.559060000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 5.102350000000000000
          Top = 3.456710000000000000
          Width = 211.653680000000000000
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
