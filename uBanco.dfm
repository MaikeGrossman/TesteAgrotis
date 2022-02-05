object dmBanco: TdmBanco
  OldCreateOrder = False
  Height = 252
  Width = 412
  object dbBanco: TIBDatabase
    DatabaseName = 'C:\DB\BANCO.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    Left = 24
    Top = 32
  end
  object Transaction: TIBTransaction
    DefaultDatabase = dbBanco
    Left = 88
    Top = 32
  end
end
