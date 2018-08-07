object FormRelatorioClienteAniversario: TFormRelatorioClienteAniversario
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de clientes por data de anivers'#225'rio'
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
    Left = 16
    Top = 16
    Width = 263
    Height = 13
    Caption = 'Escolha o periodo em que os clientes fazem anivers'#225'rio'
  end
  object Dt_Inicio: TDateTimePicker
    Left = 16
    Top = 40
    Width = 153
    Height = 21
    Date = 43042.886883703700000000
    Time = 43042.886883703700000000
    TabOrder = 0
  end
  object Dt_Final: TDateTimePicker
    Left = 192
    Top = 40
    Width = 145
    Height = 21
    Date = 43042.887224606480000000
    Time = 43042.887224606480000000
    TabOrder = 1
  end
  object ButtonImprimir: TBitBtn
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = ButtonImprimirClick
  end
  object ButtonFechar: TBitBtn
    Left = 112
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = ButtonFecharClick
  end
  object DatasetAniversario: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 336
    Top = 88
  end
  object Query: TIBQuery
    Database = Conexao.DB
    Transaction = Conexao.Transacao
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT  CLI.CD_CLIENTE, CLI. NM_CLIENTE,'
      'CLI. DATA_NASC'
      ''
      'FROM CLIENTE CLI'
      ''
      'WHERE '
      'CLI.DATA_NASC BETWEEN :INICIAL AND :FINAL'
      ''
      '')
    Left = 280
    Top = 64
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
  end
  object reporteNiver: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43042.933286990700000000
    ReportOptions.LastChange = 43042.933286990700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 144
    Top = 96
    Datasets = <
      item
        DataSet = DatasetAniversario
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Time: TfrxMemoView
          Left = 631.181510000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 631.181510000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page]')
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 68.031540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente')
        end
        object Memo3: TfrxMemoView
          Left = 616.063390000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data ')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = DatasetAniversario
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_CLIENTE: TfrxMemoView
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CLIENTE'
          DataSet = DatasetAniversario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CLIENTE"]')
          ParentFont = False
        end
        object frxDBDataset1NM_CLIENTE: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CLIENTE'
          DataSet = DatasetAniversario
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CLIENTE"]')
        end
        object frxDBDataset1DATA_NASC: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_NASC'
          DataSet = DatasetAniversario
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_NASC"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object TotalPages: TfrxMemoView
          Left = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TotalPages]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
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
