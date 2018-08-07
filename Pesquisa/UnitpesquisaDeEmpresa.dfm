inherited FormPesquisaEmpresa: TFormPesquisaEmpresa
  Caption = 'Pesquisa de empresa'
  ClientWidth = 560
  ExplicitWidth = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 560
    ExplicitWidth = 560
    inherited RadioFiltro: TRadioGroup
      Columns = 3
      Items.Strings = (
        'C'#243'digo'
        'Raz'#227'o Social'
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
  inherited GridPesquisa: TDBGrid
    Width = 560
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT *'
      ''
      'FROM EMPRESA'
      ''
      'ORDER BY RAZAO_SOCIAL')
    object QueryCD_EMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_EMPRESA'
      Origin = '"EMPRESA"."CD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Raz'#227'o social'
      DisplayWidth = 57
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"EMPRESA"."RAZAO_SOCIAL"'
      Size = 50
    end
    object QueryCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      Size = 18
    end
  end
  object ReportEmpresa: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43059.882796770800000000
    ReportOptions.LastChange = 43059.882796770800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 168
    Datasets = <
      item
        DataSet = DatasetEmpresa
        DataSetName = 'DatasetEmpresa'
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
        Height = 37.118120000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = DatasetEmpresa
        DataSetName = 'DatasetEmpresa'
        RowCount = 0
        object DatasetEmpresaCD_EMPRESA: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.000000000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CD_EMPRESA'
          DataSet = DatasetEmpresa
          DataSetName = 'DatasetEmpresa'
          Memo.UTF8W = (
            '[DatasetEmpresa."CD_EMPRESA"]')
        end
        object DatasetEmpresaRAZAO_SOCIAL: TfrxMemoView
          Left = 166.858380000000000000
          Top = 7.000000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = DatasetEmpresa
          DataSetName = 'DatasetEmpresa'
          Memo.UTF8W = (
            '[DatasetEmpresa."RAZAO_SOCIAL"]')
        end
        object DatasetEmpresaCNPJ: TfrxMemoView
          Left = 573.606680000000000000
          Top = 7.881880000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = DatasetEmpresa
          DataSetName = 'DatasetEmpresa'
          Memo.UTF8W = (
            '[DatasetEmpresa."CNPJ"]')
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
          Left = 629.401980000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 629.622450000000000000
          Top = 27.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 630.401980000000000000
          Top = 51.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page]')
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
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
            'Relat'#243'rio de Empresas')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 72.692950000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo da empresa')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 167.078850000000000000
          Top = 72.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Raz'#227'o social')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 574.268090000000000000
          Top = 72.692950000000000000
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
          Top = 97.590600000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.236240000000000000
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
  object DatasetEmpresa: TfrxDBDataset
    UserName = 'DatasetEmpresa'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 448
    Top = 184
  end
end
