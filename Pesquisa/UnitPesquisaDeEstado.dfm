inherited FormPesquisaDeEstado: TFormPesquisaDeEstado
  Caption = 'Pesquisa de estado'
  ClientWidth = 533
  ExplicitWidth = 539
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    Width = 533
    ExplicitWidth = 533
    inherited RadioFiltro: TRadioGroup
      OnClick = RadioFiltroClick
    end
    inherited ButtonPesquisar: TBitBtn
      Top = 72
      OnClick = ButtonPesquisarClick
      ExplicitTop = 72
    end
    inherited ButtonImprimir: TBitBtn
      Enabled = False
    end
  end
  inherited GridPesquisa: TDBGrid
    Width = 533
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      'Select ESTADO.*, PAIS.NOM_PAIS from  ESTADO'
      ''
      'inner join PAIS'
      ''
      'on (PAIS.COD_PAIS = ESTADO.COD_PAIS)'
      'order by SGL_ESTADO')
    object QueryCOD_ESTADO: TSmallintField
      DisplayLabel = 'C'#243'd. Estado'
      FieldName = 'COD_ESTADO'
      Origin = '"ESTADO"."COD_ESTADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QuerySGL_ESTADO: TIBStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 2
      FieldName = 'SGL_ESTADO'
      Origin = '"ESTADO"."SGL_ESTADO"'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QueryNOM_ESTADO: TIBStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 49
      FieldName = 'NOM_ESTADO'
      Origin = '"ESTADO"."NOM_ESTADO"'
      Required = True
      Size = 50
    end
    object QueryNOM_PAIS: TIBStringField
      DisplayLabel = 'Pais'
      DisplayWidth = 14
      FieldName = 'NOM_PAIS'
      Origin = '"PAIS"."NOM_PAIS"'
      Required = True
      Size = 50
    end
  end
end
