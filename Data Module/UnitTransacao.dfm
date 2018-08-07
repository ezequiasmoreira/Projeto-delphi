object Conexao: TConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object DB: TIBDatabase
    DatabaseName = 
      'LOCALHOST\C:\Users\ezequ\Documents\Ezequias\Esucri\Sistema de In' +
      'forma'#231#227'o\2017 - 2\PROGRAMA'#199#195'O AVAN'#199'ADA II\trabalho  de programa'#231 +
      #227'o avan'#231'ada 2\Trabalho CRM\Dados\BANCO2.FDB'
    Params.Strings = (
      'password=masterkey'
      'user_name=SYSDBA')
    LoginPrompt = False
    DefaultTransaction = Transacao
    ServerType = 'IBServer'
    Left = 24
    Top = 24
  end
  object Transacao: TIBTransaction
    DefaultDatabase = DB
    Left = 88
    Top = 56
  end
  object Query: TIBQuery
    Database = DB
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 144
    Top = 40
  end
end
