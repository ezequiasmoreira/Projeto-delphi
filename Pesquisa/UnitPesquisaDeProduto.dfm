inherited FormPesquisaDeProduto: TFormPesquisaDeProduto
  Caption = 'Pesquisa de produto'
  ClientWidth = 721
  ExplicitWidth = 727
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 721
    ExplicitWidth = 721
    inherited RadioFiltro: TRadioGroup
      Width = 711
      Columns = 4
      Items.Strings = (
        'C'#243'digo'
        'C'#243'digo de barra'
        'Nome'
        'Fornecedor')
      OnClick = RadioFiltroClick
      ExplicitWidth = 711
    end
    inherited ButtonPesquisar: TBitBtn
      OnClick = ButtonPesquisarClick
    end
    inherited ButtonImprimir: TBitBtn
      OnClick = ButtonImprimirClick
    end
  end
  inherited GridPesquisa: TDBGrid
    Width = 721
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'SELECT  P_VENDA, CD_PRODUTO, CD_BARRA, NM_PRODUTO, QUANTIDADE,'
      'FORNECEDOR. NM_FORNECEDOR, FORNECEDOR.CD_FORNECEDOR'
      ''
      'FROM PRODUTO'
      ''
      'INNER JOIN FORNECEDOR'
      ''
      
        'ON (PRODUTO. FORNECEDOR_CD_FORNECEDOR = FORNECEDOR.CD_FORNECEDOR' +
        ')'
      ''
      'ORDER BY NM_PRODUTO')
    object QueryCD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_PRODUTO'
      Origin = '"PRODUTO"."CD_PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCD_BARRA: TIntegerField
      DisplayLabel = 'C'#243'digo de barra'
      FieldName = 'CD_BARRA'
      Origin = '"PRODUTO"."CD_BARRA"'
      Required = True
    end
    object QueryNM_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NM_PRODUTO'
      Origin = '"PRODUTO"."NM_PRODUTO"'
      Required = True
      Size = 100
    end
    object QueryQUANTIDADE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO"."QUANTIDADE"'
    end
    object QueryP_VENDA: TIBBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'P_VENDA'
      Origin = '"PRODUTO"."P_VENDA"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QueryNM_FORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 30
      FieldName = 'NM_FORNECEDOR'
      Origin = '"FORNECEDOR"."NM_FORNECEDOR"'
      Required = True
      Size = 150
    end
    object QueryCD_FORNECEDOR: TIntegerField
      FieldName = 'CD_FORNECEDOR'
      Origin = '"FORNECEDOR"."CD_FORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DatasetProduto: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Query
    BCDToCurrency = False
    Left = 240
    Top = 64
  end
  object ReportProduto: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43059.905334213000000000
    ReportOptions.LastChange = 43059.905334213000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 136
    Datasets = <
      item
        DataSet = DatasetProduto
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
        Height = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = DatasetProduto
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_PRODUTO: TfrxMemoView
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'C'#243'd. Produto [frxDBDataset1."CD_PRODUTO"]')
        end
        object frxDBDataset1CD_BARRA: TfrxMemoView
          Left = 154.960730000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'C'#243'd. Barra [frxDBDataset1."CD_BARRA"]')
        end
        object frxDBDataset1NM_PRODUTO: TfrxMemoView
          Left = 631.181510000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'Qtd: [frxDBDataset1."NM_PRODUTO"]')
        end
        object frxDBDataset1QUANTIDADE: TfrxMemoView
          Left = 355.275820000000000000
          Top = 3.779530000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'Nome [frxDBDataset1."QUANTIDADE"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 627.945270000000000000
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
        object Line1: TfrxLineView
          Top = 78.488250000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Diagonal = True
        end
        object Time: TfrxMemoView
          Left = 627.945270000000000000
          Top = 23.456710000000000000
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
          Top = 48.354360000000000000
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
        object Memo5: TfrxMemoView
          Left = -3.236240000000000000
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
        Top = 317.480520000000000000
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
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."CD_FORNECEDOR"'
        PrintChildIfInvisible = True
        object frxDBDataset1CD_FORNECEDOR: TfrxMemoView
          Left = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'C'#243'd. Fornecedor [frxDBDataset1."CD_FORNECEDOR"]')
        end
        object frxDBDataset1NM_FORNECEDOR: TfrxMemoView
          Left = 154.960730000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          AllowHTMLTags = True
          DataSet = DatasetProduto
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            'Fornecedor: [frxDBDataset1."NM_FORNECEDOR"]')
        end
      end
    end
  end
end
