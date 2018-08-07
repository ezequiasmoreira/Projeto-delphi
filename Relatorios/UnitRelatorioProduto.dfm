object FormRelatorioDeProduto: TFormRelatorioDeProduto
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de produto'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label2: TLabel
    Left = 160
    Top = 10
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object DateInicial: TDateTimePicker
    Left = 8
    Top = 24
    Width = 129
    Height = 21
    Date = 43035.888005173610000000
    Time = 43035.888005173610000000
    TabOrder = 0
  end
  object DateFinal: TDateTimePicker
    Left = 160
    Top = 24
    Width = 137
    Height = 21
    Date = 43035.888005173610000000
    Time = 43035.888005173610000000
    TabOrder = 1
  end
  object ButtonImprimir: TButton
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = ButtonImprimirClick
  end
  object ButtonFechar: TButton
    Left = 105
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
  end
  object Query: TIBQuery
    Database = Conexao.DB
    Transaction = Conexao.Transacao
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT  PRO.CD_PRODUTO, PRO.NM_PRODUTO,'
      'PRO.CD_BARRA, PRO.DATA_ULTIMA_MODIFICACAO,'
      'PRO. P_VENDA, FORNECEDOR.NM_FORNECEDOR'
      ''
      'FROM PRODUTO PRO'
      ''
      'INNER JOIN FORNECEDOR '
      ''
      'ON(FORNECEDOR.CD_FORNECEDOR = PRO. FORNECEDOR_CD_FORNECEDOR)'
      ''
      'WHERE '
      'PRO.DATA_ULTIMA_MODIFICACAO BETWEEN :INICIAL AND :FINAL'
      ''
      'ORDER BY'
      ''
      ' FORNECEDOR.NM_FORNECEDOR,  PRO. NM_PRODUTO')
    Left = 328
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object QueryCD_PRODUTO: TIntegerField
      FieldName = 'CD_PRODUTO'
      Origin = '"PRODUTO"."CD_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNM_PRODUTO: TIBStringField
      FieldName = 'NM_PRODUTO'
      Origin = '"PRODUTO"."NM_PRODUTO"'
      Required = True
      Size = 100
    end
    object QueryCD_BARRA: TIntegerField
      FieldName = 'CD_BARRA'
      Origin = '"PRODUTO"."CD_BARRA"'
      Required = True
    end
    object QueryDATA_ULTIMA_MODIFICACAO: TDateField
      FieldName = 'DATA_ULTIMA_MODIFICACAO'
      Origin = '"PRODUTO"."DATA_ULTIMA_MODIFICACAO"'
    end
    object QueryP_VENDA: TIBBCDField
      FieldName = 'P_VENDA'
      Origin = '"PRODUTO"."P_VENDA"'
      Required = True
      Precision = 15
      Size = 2
    end
    object QueryNM_FORNECEDOR: TIBStringField
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
  end
  object reportProduto: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43035.891622349500000000
    ReportOptions.LastChange = 43035.891622349500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 80
    Datasets = <
      item
        DataSet = datasetProduto
        DataSetName = 'frxDBDataset2'
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
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133890000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Relat'#243'rio de produtos por fornecedor')
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 631.181510000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 631.181510000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = datasetProduto
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2CD_PRODUTO: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CD_PRODUTO'
          DataSet = datasetProduto
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."CD_PRODUTO"]')
        end
        object frxDBDataset2NM_PRODUTO: TfrxMemoView
          Left = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NM_PRODUTO'
          DataSet = datasetProduto
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."NM_PRODUTO"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."NM_FORNECEDOR"'
        object frxDBDataset2NM_FORNECEDOR: TfrxMemoView
          Left = 3.779530000000000000
          Top = 5.000000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FORNECEDOR'
          DataSet = datasetProduto
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."NM_FORNECEDOR"]')
        end
      end
    end
  end
  object datasetProduto: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 232
    Top = 64
  end
end
