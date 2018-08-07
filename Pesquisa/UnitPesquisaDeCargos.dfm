inherited FormPesquisaCargos: TFormPesquisaCargos
  Caption = 'Pesquisa de cargos'
  ExplicitWidth = 524
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    inherited RadioFiltro: TRadioGroup
      OnClick = RadioFiltroClick
    end
    inherited MaskEditPesquisar: TMaskEdit
      Height = 21
      ExplicitHeight = 21
    end
    inherited ButtonPesquisar: TBitBtn
      Top = 73
      OnClick = ButtonPesquisarClick
      ExplicitTop = 73
    end
    inherited ButtonImprimir: TBitBtn
      OnClick = ButtonImprimirClick
    end
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT CD_CARGOS, NM_CARGOS, EMPRESA. RAZAO_SOCIAL,'
      ' EMPRESA. CD_EMPRESA'
      ''
      'FROM CARGOS'
      ''
      'INNER JOIN DEPARTAMENTO'
      ''
      
        'ON (CARGOS.DEPARTAMENTO_CD_DEPARTAMENTO= DEPARTAMENTO. CD_DEPART' +
        'AMENTO)'
      ''
      'INNER JOIN EMPRESA'
      ''
      'ON (EMPRESA.CD_EMPRESA = DEPARTAMENTO.EMPRESA_CD_EMPRESA)'
      ''
      'ORDER BY NM_CARGOS')
    Left = 272
    Top = 128
    object QueryCD_CARGOS: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_CARGOS'
      Origin = '"CARGOS"."CD_CARGOS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_CARGOS: TIBStringField
      DisplayLabel = 'Nome do cargo'
      DisplayWidth = 45
      FieldName = 'NM_CARGOS'
      Origin = '"CARGOS"."NM_CARGOS"'
      Required = True
      Size = 100
    end
    object QueryRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 50
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"EMPRESA"."RAZAO_SOCIAL"'
      Size = 50
    end
    object QueryCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Origin = '"EMPRESA"."CD_EMPRESA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  inherited DS: TDataSource
    Left = 376
    Top = 160
  end
  object DatasetCargos: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 376
    Top = 56
  end
  object ReportCargos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43058.912071134300000000
    ReportOptions.LastChange = 43058.912071134300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 432
    Top = 120
    Datasets = <
      item
        DataSet = DatasetCargos
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
        Height = 34.015770000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = DatasetCargos
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_CARGOS: TfrxMemoView
          Left = 3.236240000000000000
          Top = 5.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CARGOS'
          DataSet = DatasetCargos
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CARGOS"]')
        end
        object frxDBDataset1NM_CARGOS: TfrxMemoView
          Left = 86.385900000000000000
          Top = 5.574830000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CARGOS'
          DataSet = DatasetCargos
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CARGOS"]')
        end
        object frxDBDataset1CD_EMPRESA: TfrxMemoView
          Left = 354.732530000000000000
          Top = 4.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CD_EMPRESA'
          DataSet = DatasetCargos
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_EMPRESA"]')
        end
        object frxDBDataset1RAZAO_SOCIAL: TfrxMemoView
          Left = 445.441250000000000000
          Top = 4.574830000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = DatasetCargos
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."RAZAO_SOCIAL"]')
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
        Height = 115.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 634.961040000000000000
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
        object Memo2: TfrxMemoView
          Left = 5.338590000000000000
          Top = 81.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd.  Cargos')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 88.488250000000000000
          Top = 81.133890000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome do cargo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.236240000000000000
          Top = 105.165430000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 634.961040000000000000
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
          Left = 634.961040000000000000
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
          Left = 354.732530000000000000
          Top = 80.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd.  Empresa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 445.441250000000000000
          Top = 80.488250000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Raz'#227'o social')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 4.456710000000000000
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
