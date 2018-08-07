inherited FormPesquisaDeFuncionario: TFormPesquisaDeFuncionario
  Caption = 'Pesquisa de funcion'#225'rio'
  ClientWidth = 511
  ExplicitWidth = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 511
    ExplicitWidth = 511
    inherited RadioFiltro: TRadioGroup
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
    Width = 511
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT * FROM  FUNCIONARIO'
      ''
      'ORDER BY NM_FUNCIONARIO'
      '')
    object QueryCD_FUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."CD_FUNCIONARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_FUNCIONARIO: TIBStringField
      DisplayLabel = 'Nome '
      DisplayWidth = 71
      FieldName = 'NM_FUNCIONARIO'
      Origin = '"FUNCIONARIO"."NM_FUNCIONARIO"'
      Required = True
      Size = 100
    end
  end
  object DatasetFuncionario: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 304
    Top = 72
  end
  object ReportFuncionario: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43059.889424780100000000
    ReportOptions.LastChange = 43059.889424780100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 144
    Datasets = <
      item
        DataSet = DatasetFuncionario
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
        Height = 31.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = DatasetFuncionario
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object DatasetEmpresaRAZAO_SOCIAL: TfrxMemoView
          Left = 112.267780000000000000
          Top = 7.000000000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FUNCIONARIO'
          DataSet = DatasetFuncionario
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FUNCIONARIO"]')
        end
        object frxDBDataset1CD_FUNCIONARIO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CD_FUNCIONARIO'
          DataSet = DatasetFuncionario
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_FUNCIONARIO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 99.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 610.504330000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 610.724800000000000000
          Top = 27.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 611.504330000000000000
          Top = 51.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page]')
        end
        object Memo2: TfrxMemoView
          Left = -11.338590000000000000
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
            'Relat'#243'rio de Funcion'#225'rios')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.881880000000000000
          Top = 74.692950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd. funcion'#225'rio')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 110.488250000000000000
          Top = 74.472480000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome do funcion'#225'rio')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.102350000000000000
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
      object Line1: TfrxLineView
        Left = 22.779530000000000000
        Top = 118.267780000000000000
        Width = 710.551640000000000000
        Color = clBlack
        Diagonal = True
      end
    end
  end
end
