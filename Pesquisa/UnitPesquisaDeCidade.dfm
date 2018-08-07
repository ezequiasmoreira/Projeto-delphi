inherited FormPesquisaCidade: TFormPesquisaCidade
  Caption = 'Pesquisa de cidade'
  ExplicitWidth = 524
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupOpcoes: TGroupBox
    inherited MaskEditPesquisar: TMaskEdit
      Enabled = False
    end
    inherited ButtonImprimir: TBitBtn
      Enabled = False
    end
  end
  inherited Query: TIBQuery
    SQL.Strings = (
      
        'SELECT CIDADE.* , ESTADO.COD_ESTADO AS CD_ESTADO, ESTADO. NOM_ES' +
        'TADO'
      ''
      'FROM CIDADE'
      ''
      'INNER JOIN ESTADO'
      ''
      'ON(ESTADO.COD_ESTADO = CIDADE.COD_ESTADO)'
      ''
      'WHERE (ESTADO.COD_ESTADO= :SIGLA)'
      ''
      'ORDER BY NOM_CIDADE')
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SIGLA'
        ParamType = ptUnknown
      end>
    object QueryCOD_CIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'COD_CIDADE'
      Origin = '"CIDADE"."COD_CIDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryNOM_CIDADE: TIBStringField
      FieldName = 'NOM_CIDADE'
      Origin = '"CIDADE"."NOM_CIDADE"'
      Required = True
      Size = 50
    end
    object QueryCD_ESTADO: TSmallintField
      FieldName = 'CD_ESTADO'
      Origin = '"ESTADO"."COD_ESTADO"'
      Required = True
    end
    object QueryNOM_ESTADO: TIBStringField
      FieldName = 'NOM_ESTADO'
      Origin = '"ESTADO"."NOM_ESTADO"'
      Required = True
      Size = 50
    end
  end
end
