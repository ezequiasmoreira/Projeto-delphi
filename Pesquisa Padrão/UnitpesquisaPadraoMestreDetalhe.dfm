inherited FormPesquisaPadraoMestreDetalhe: TFormPesquisaPadraoMestreDetalhe
  Caption = 'FormPesquisaPadraoMestreDetalhe'
  ExplicitWidth = 524
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    ExplicitLeft = 8
    ExplicitTop = 146
    inherited MaskEditPesquisar: TMaskEdit
      Height = 21
      ExplicitHeight = 21
    end
  end
  object GridItem: TDBGrid [2]
    Left = 0
    Top = 160
    Width = 518
    Height = 74
    Align = alBottom
    DataSource = DsItem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object QueryItem: TIBQuery
    Database = Conexao.DB
    Transaction = Conexao.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 280
    Top = 24
  end
  object DsItem: TDataSource
    DataSet = QueryItem
    Left = 280
    Top = 104
  end
end
