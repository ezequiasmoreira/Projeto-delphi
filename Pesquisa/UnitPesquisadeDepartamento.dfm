inherited FormPesquisaDeDepartamento: TFormPesquisaDeDepartamento
  Caption = 'Pesquisa de departamento'
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
      'SELECT DEPARTAMENTO.*, EMPRESA. RAZAO_SOCIAL'
      ''
      ' FROM DEPARTAMENTO'
      ''
      'INNER JOIN EMPRESA'
      ''
      'ON (EMPRESA.CD_EMPRESA = DEPARTAMENTO.EMPRESA_CD_EMPRESA)'
      ''
      'ORDER BY NM_DEPARTAMENTO')
    object QueryCD_DEPARTAMENTO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CD_DEPARTAMENTO'
      Origin = '"DEPARTAMENTO"."CD_DEPARTAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_DEPARTAMENTO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NM_DEPARTAMENTO'
      Origin = '"DEPARTAMENTO"."NM_DEPARTAMENTO"'
      Required = True
      Size = 100
    end
    object QueryRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 38
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"EMPRESA"."RAZAO_SOCIAL"'
      Size = 50
    end
  end
  object DatasetDepartamento: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 256
    Top = 80
  end
  object ReportDepartamento: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43059.873251724500000000
    ReportOptions.LastChange = 43059.873251724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 176
    Top = 152
    Datasets = <
      item
        DataSet = DatasetDepartamento
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
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = DatasetDepartamento
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_DEPARTAMENTO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'CD_DEPARTAMENTO'
          DataSet = DatasetDepartamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_DEPARTAMENTO"]')
        end
        object frxDBDataset1NM_DEPARTAMENTO: TfrxMemoView
          Left = 117.165430000000000000
          Top = 7.559060000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'NM_DEPARTAMENTO'
          DataSet = DatasetDepartamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_DEPARTAMENTO"]')
        end
        object frxDBDataset1RAZAO_SOCIAL: TfrxMemoView
          Left = 442.205010000000000000
          Top = 7.559060000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = DatasetDepartamento
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."RAZAO_SOCIAL"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 1.102350000000000000
          Top = 2.677180000000000000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 110.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 643.063390000000000000
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
          Left = 2.440940000000000000
          Top = 87.472480000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. Departamento')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -22.338590000000000000
          Top = 107.944960000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 643.063390000000000000
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
          Left = 643.063390000000000000
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
          Left = 121.283550000000000000
          Top = 87.047310000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome do departamento')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 442.543600000000000000
          Top = 87.047310000000000000
          Width = 272.126160000000000000
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
        object Memo5: TfrxMemoView
          Left = 11.881880000000000000
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
            'RELAT'#211'RIO DE DEPARTAMENTOS')
          ParentFont = False
        end
      end
    end
  end
end
