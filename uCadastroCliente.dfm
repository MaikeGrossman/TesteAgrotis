object FrmCadastroCliente: TFrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 373
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 80
    Align = alTop
    TabOrder = 0
    OnExit = pnHeaderExit
    object lbCodigo: TLabel
      Left = 48
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object btPesquisarCliente: TSpeedButton
      Left = 247
      Top = 27
      Width = 27
      Height = 27
      Hint = 'Pesquisar Cliente - F2'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFF64949F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFF49FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF49FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5249
        4952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49FFFF49FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF49FFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52F7F752FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF52070752FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA400525200A4FFFFFFFFFFFFFFFFFFFFFFFFFF0007F75252F70700FFFFFFFF
        FFFFFFFFFFFFFF00F600F7FFFFF700F600FFFFFFFFFFFFFFFFFFA40700FFFFFF
        FFFFFF0007A4FFFFFFFFFFFFFFFF49F7F7FFFFFFFF07FFF7F749FFFFFFFFFFFF
        FFFF5252FFFFFFFFFF07FFFF5252FFFFFFFFFFFFFFFF5252FFFFFFFFFFFF5BFF
        5252FFFFFFFFFFFFFFFF49F7F7FFFFFFFFFFFFF7F749FFFFFFFFFFFFFFFFA407
        00FFFFFFFFFFFF0007A4FFFFFFFFFFFFFFFFFF00F600F7FFFFF700F600FFFFFF
        FFFFFFFFFFFFFFFF0007F75252F70700FFFFFFFFFFFFFFFFFFFFFFFFFFA4525B
        5B52A4FFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btPesquisarClick
    end
    object btInserirNovo: TSpeedButton
      Left = 214
      Top = 27
      Width = 27
      Height = 27
      Hint = 'Inserir novo - F1'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF08000008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49000049FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF49000049FFFFFFFFFFFFFFFF084900000000
        0049000000004900000000004908000000000000000000000000000000000000
        0000000000000000000000000000000000000000000008490000000000490000
        00004900000000004908FFFFFFFFFFFFFFFF49000049FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF49000049FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0800
        0008FFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btInserirClick
    end
    object edCodigo: TMaskEdit
      Left = 88
      Top = 31
      Width = 120
      Height = 21
      EditMask = '!99999;1; '
      MaxLength = 5
      TabOrder = 0
      Text = '     '
      OnEnter = edCodigoEnter
      OnKeyDown = edCodigoKeyDown
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 80
    Width = 633
    Height = 293
    Align = alClient
    TabOrder = 1
    OnEnter = pnBodyEnter
    object lbNome: TLabel
      Left = 49
      Top = 43
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbCEP: TLabel
      Left = 57
      Top = 73
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lbLogradouro: TLabel
      Left = 21
      Top = 100
      Width = 55
      Height = 13
      Caption = 'Logradouro'
    end
    object lbComplemento: TLabel
      Left = 11
      Top = 127
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object lbBairro: TLabel
      Left = 48
      Top = 154
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object lbCidade: TLabel
      Left = 43
      Top = 181
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbUF: TLabel
      Left = 63
      Top = 208
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label7: TLabel
      Left = 31
      Top = 235
      Width = 45
      Height = 13
      Caption = 'Cod IBGE'
    end
    object edNome: TDBEdit
      Left = 82
      Top = 40
      Width = 297
      Height = 21
      DataField = 'NOME'
      DataSource = dtsCliente
      TabOrder = 0
    end
    object edCEP: TDBEdit
      Left = 82
      Top = 70
      Width = 121
      Height = 21
      DataField = 'CEP'
      DataSource = dtsCliente
      TabOrder = 1
    end
    object edLogradouro: TDBEdit
      Left = 82
      Top = 97
      Width = 215
      Height = 21
      DataField = 'LOGRADOURO'
      DataSource = dtsCliente
      TabOrder = 2
    end
    object edComplemento: TDBEdit
      Left = 82
      Top = 124
      Width = 121
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = dtsCliente
      TabOrder = 3
    end
    object edBairro: TDBEdit
      Left = 82
      Top = 151
      Width = 121
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dtsCliente
      TabOrder = 4
    end
    object edCidade: TDBEdit
      Left = 82
      Top = 178
      Width = 121
      Height = 21
      DataField = 'CIDADE'
      DataSource = dtsCliente
      TabOrder = 5
    end
    object edUF: TDBEdit
      Left = 82
      Top = 205
      Width = 121
      Height = 21
      DataField = 'UF'
      DataSource = dtsCliente
      TabOrder = 6
    end
    object edCodIBGE: TDBEdit
      Left = 82
      Top = 232
      Width = 121
      Height = 21
      DataField = 'CODIGOIBGE'
      DataSource = dtsCliente
      TabOrder = 7
    end
    object btViaCep: TButton
      Left = 209
      Top = 65
      Width = 88
      Height = 27
      Caption = 'Auto-preencher'
      TabOrder = 8
      OnClick = btViaCepClick
    end
  end
  object pnButton: TPanel
    Left = 633
    Top = 80
    Width = 155
    Height = 293
    Align = alRight
    TabOrder = 2
    object btExcluir: TButton
      Left = 1
      Top = 246
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = btExcluirClick
    end
    object btSalvar: TButton
      Left = 1
      Top = 154
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btSalvarClick
    end
    object btCancelar: TButton
      Left = 1
      Top = 200
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btCancelarClick
    end
  end
  object qryCliente: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    CachedUpdates = True
    SQL.Strings = (
      
        'select c.codigo, c.nome, c.cep, c.logradouro, c.complemento, c.b' +
        'airro, c.cidade, c.uf, c.codigoibge'
      'from cliente c'
      'where c.codigo = :codigo')
    UpdateObject = updCliente
    Left = 440
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CLIENTE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Size = 120
    end
    object qryClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTE"."CEP"'
      EditMask = '00000\-999;1; '
      Size = 9
    end
    object qryClienteLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"CLIENTE"."LOGRADOURO"'
      Size = 120
    end
    object qryClienteCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CLIENTE"."COMPLEMENTO"'
      Size = 120
    end
    object qryClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTE"."BAIRRO"'
      Size = 120
    end
    object qryClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTE"."CIDADE"'
      Size = 120
    end
    object qryClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CLIENTE"."UF"'
      Size = 2
    end
    object qryClienteCODIGOIBGE: TIBStringField
      FieldName = 'CODIGOIBGE'
      Origin = '"CLIENTE"."CODIGOIBGE"'
      Size = 7
    end
  end
  object dtsCliente: TDataSource
    DataSet = qryCliente
    Left = 496
    Top = 24
  end
  object updCliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  CEP,'
      '  LOGRADOURO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CODIGOIBGE'
      'from cliente '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update cliente'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CODIGOIBGE = :CODIGOIBGE,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NOME = :NOME,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cliente'
      
        '  (BAIRRO, CEP, CIDADE, CODIGOIBGE, COMPLEMENTO, LOGRADOURO, NOM' +
        'E, UF)'
      'values'
      
        '  (:BAIRRO, :CEP, :CIDADE, :CODIGOIBGE, :COMPLEMENTO, :LOGRADOUR' +
        'O, :NOME, '
      '   :UF)')
    DeleteSQL.Strings = (
      'delete from cliente'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 376
    Top = 24
  end
  object qryCodigoCliente: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'SELECT (GEN_ID(generator_idcliente, 0)) as id FROM RDB$DATABASE')
    Left = 632
    Top = 24
    object qryCodigoClienteID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
  end
end
