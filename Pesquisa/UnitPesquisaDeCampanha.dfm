inherited FormPesquisaCampanha: TFormPesquisaCampanha
  Caption = 'Pesquisa de Campanha'
  ExplicitWidth = 524
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
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
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT NM_CAMPAN, COD_CAMPAN'
      ''
      'FROM CAMPANHA '
      ''
      'ORDER BY NM_CAMPAN')
    object QueryCOD_CAMPAN: TIntegerField
      DisplayLabel = 'C'#243'digo '
      FieldName = 'COD_CAMPAN'
      Origin = '"CAMPANHA"."COD_CAMPAN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_CAMPAN: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 72
      FieldName = 'NM_CAMPAN'
      Origin = '"CAMPANHA"."NM_CAMPAN"'
      Required = True
      Size = 70
    end
  end
  object ReportCampanha: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43058.887867835600000000
    ReportOptions.LastChange = 43058.887867835600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 72
    Datasets = <
      item
        DataSet = DatasetCampanha
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 627.945270000000000000
          Top = 4.440940000000000000
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
        object Memo1: TfrxMemoView
          Left = 4.322820000000000000
          Top = 7.440940000000000000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CAMPANHAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 4.322820000000000000
          Top = 37.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 87.472480000000000000
          Top = 37.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 79.370130000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 627.945270000000000000
          Top = 27.897650000000000000
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
          Left = 627.945270000000000000
          Top = 52.795300000000000000
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 40.795300000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = DatasetCampanha
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1COD_CAMPAN: TfrxMemoView
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'COD_CAMPAN'
          DataSet = DatasetCampanha
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."COD_CAMPAN"]')
        end
        object frxDBDataset1NM_CAMPAN: TfrxMemoView
          Left = 86.929190000000000000
          Top = 7.559060000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CAMPAN'
          DataSet = DatasetCampanha
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CAMPAN"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 4.322820000000000000
          Top = 3.000000000000000000
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
  object DatasetCampanha: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 248
    Top = 128
  end
end
