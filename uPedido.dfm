object FrmPedido: TFrmPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 463
  ClientWidth = 852
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
    Width = 852
    Height = 80
    Align = alTop
    TabOrder = 0
    OnExit = pnHeaderExit
    object lbCodigo: TLabel
      Left = 49
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object btInserirNovo: TSpeedButton
      Left = 210
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
    object btPesquisarPedido: TSpeedButton
      Left = 243
      Top = 27
      Width = 27
      Height = 27
      Hint = 'Pesquisar Pedido - F2'
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
    object edCodigo: TMaskEdit
      Left = 88
      Top = 31
      Width = 116
      Height = 21
      EditMask = '!99999;1; '
      MaxLength = 5
      TabOrder = 0
      Text = '     '
      OnEnter = edCodigoEnter
      OnKeyDown = edCodigoKeyDown
    end
  end
  object pnButton: TPanel
    Left = 697
    Top = 80
    Width = 155
    Height = 383
    Align = alRight
    TabOrder = 1
    object btCancelar: TButton
      Left = 1
      Top = 290
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btCancelarClick
    end
    object btSalvar: TButton
      Left = 1
      Top = 244
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btSalvarClick
    end
    object btExcluir: TButton
      Left = 1
      Top = 336
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btExcluirClick
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 80
    Width = 697
    Height = 383
    Align = alClient
    TabOrder = 2
    OnEnter = pnBodyEnter
    object Label1: TLabel
      Left = 45
      Top = 27
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label2: TLabel
      Left = 44
      Top = 59
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object Label3: TLabel
      Left = 49
      Top = 122
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object lbReferencia: TLabel
      Left = 30
      Top = 90
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
    end
    object Label4: TLabel
      Left = 482
      Top = 354
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object btPesquisaReferencia: TSpeedButton
      Left = 214
      Top = 84
      Width = 27
      Height = 27
      Hint = 'Pesquisar pedido refer'#234'ncia'
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
      OnClick = btPesquisaReferenciaClick
    end
    object btPesquisaCliente: TSpeedButton
      Left = 165
      Top = 116
      Width = 27
      Height = 27
      Hint = 'Pesquisar Cliente'
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
      OnClick = btPesquisaClienteClick
    end
    object edNumero: TDBEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 21
      DataField = 'NUMERO'
      DataSource = dtsPedido
      Enabled = False
      TabOrder = 0
    end
    object edDataEmissao: TDBEdit
      Left = 88
      Top = 56
      Width = 121
      Height = 21
      DataField = 'EMISSAO'
      DataSource = dtsPedido
      Enabled = False
      TabOrder = 1
    end
    object edCodigocliente: TDBEdit
      Left = 88
      Top = 119
      Width = 73
      Height = 21
      DataField = 'CLIENTE'
      DataSource = dtsPedido
      TabOrder = 2
      OnKeyDown = edCodigoclienteKeyDown
    end
    object gridProdutos: TDBGrid
      Left = 88
      Top = 152
      Width = 545
      Height = 193
      DataSource = dtsProdutos
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnExit = gridProdutosExit
      OnKeyDown = gridProdutosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'CODIGO DO PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          ReadOnly = True
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORUNITARIO'
          Title.Caption = 'VALOR UNITARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORITEM'
          ReadOnly = True
          Title.Caption = 'TOTAL ITEM'
          Visible = True
        end>
    end
    object edNomeCliente: TEdit
      Left = 201
      Top = 119
      Width = 218
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edReferencia: TDBEdit
      Left = 88
      Top = 87
      Width = 121
      Height = 21
      Hint = 'Referenciar outro pedido'
      DataField = 'REFERENCIA'
      DataSource = dtsPedido
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = edReferenciaKeyDown
    end
    object edTotal: TDBEdit
      Left = 512
      Top = 351
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'VALOR'
      DataSource = dtsPedido
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
    end
    object rgOperacao: TRadioGroup
      Left = 472
      Top = 11
      Width = 153
      Height = 88
      Caption = 'Opera'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      TabOrder = 7
    end
  end
  object qryPedido: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    AfterInsert = qryPedidoAfterInsert
    AfterOpen = qryPedidoAfterOpen
    BeforePost = qryPedidoBeforePost
    CachedUpdates = True
    SQL.Strings = (
      
        'select p.codigo, p.referencia, p.numero, p.emissao, p.cliente,  ' +
        'p.valor, p.operacao'
      'from pedido p'
      'where p.codigo = :codigo')
    UpdateObject = updPedido
    Left = 504
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PEDIDO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = qryPedidoCODIGOChange
    end
    object qryPedidoREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = '"PEDIDO"."REFERENCIA"'
    end
    object qryPedidoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"PEDIDO"."NUMERO"'
      EditMask = '000000;1;0'
      Size = 6
    end
    object qryPedidoEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      Origin = '"PEDIDO"."EMISSAO"'
      EditMask = '!99/99/0000;1; '
    end
    object qryPedidoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"PEDIDO"."CLIENTE"'
      OnChange = qryPedidoCLIENTEChange
    end
    object qryPedidoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PEDIDO"."VALOR"'
      DisplayFormat = '#,##0.00'
    end
    object qryPedidoOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = '"PEDIDO"."OPERACAO"'
      Size = 1
    end
  end
  object dtsPedido: TDataSource
    DataSet = qryPedido
    Left = 560
    Top = 24
  end
  object updPedido: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  REFERENCIA,'
      '  NUMERO,'
      '  EMISSAO,'
      '  CLIENTE,'
      '  OPERACAO,'
      '  VALOR'
      'from pedido '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update pedido'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  EMISSAO = :EMISSAO,'
      '  NUMERO = :NUMERO,'
      '  OPERACAO = :OPERACAO,'
      '  REFERENCIA = :REFERENCIA,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into pedido'
      
        '  (CODIGO, CLIENTE, EMISSAO, NUMERO, OPERACAO, REFERENCIA, VALOR' +
        ')'
      'values'
      
        '  (:CODIGO, :CLIENTE, :EMISSAO, :NUMERO, :OPERACAO, :REFERENCIA,' +
        ' :VALOR)')
    DeleteSQL.Strings = (
      'delete from pedido'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 24
  end
  object qryProdutos: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    AfterPost = qryProdutosAfterPost
    CachedUpdates = True
    SQL.Strings = (
      
        'select i.codigo, i.pedido, i.produto, i.quantidade, p.descricao,' +
        ' i.valorunitario,'
      '       (i.quantidade * i.valorunitario) as valoritem'
      'from pedidoitem i'
      'left join produto p on p.codigo = i.produto'
      'where i.pedido = :codpedido')
    UpdateObject = updProdutos
    Left = 736
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codpedido'
        ParamType = ptUnknown
      end>
    object qryProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PEDIDOITEM"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProdutosPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Origin = '"PEDIDOITEM"."PEDIDO"'
    end
    object qryProdutosPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = '"PEDIDOITEM"."PRODUTO"'
      OnChange = qryProdutosPRODUTOChange
    end
    object qryProdutosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"PEDIDOITEM"."QUANTIDADE"'
      OnChange = qryProdutosQUANTIDADEChange
    end
    object qryProdutosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 120
    end
    object qryProdutosVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
      Origin = '"PEDIDOITEM"."VALORUNITARIO"'
      OnChange = qryProdutosQUANTIDADEChange
      DisplayFormat = '#,##0.00'
    end
    object qryProdutosVALORITEM: TFloatField
      FieldName = 'VALORITEM'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
    end
  end
  object dtsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 792
    Top = 24
  end
  object updProdutos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  PEDIDO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  VALORUNITARIO,'
      '  DESCRICAO'
      'from pedidoitem '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update pedidoitem'
      'set'
      '  PEDIDO = :PEDIDO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALORUNITARIO = :VALORUNITARIO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into pedidoitem'
      '  (PEDIDO, PRODUTO, QUANTIDADE, VALORUNITARIO)'
      'values'
      '  (:PEDIDO, :PRODUTO, :QUANTIDADE, :VALORUNITARIO)')
    DeleteSQL.Strings = (
      'delete from pedidoitem'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 672
    Top = 24
  end
  object qryCodigoPedido: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'SELECT (GEN_ID(generator_idpedido, 1)) as id FROM RDB$DATABASE')
    Left = 744
    Top = 80
    object qryCodigoPedidoID: TLargeintField
      FieldName = 'ID'
      ProviderFlags = []
    end
  end
  object qryNomeCliente: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'select c.nome'
      'from cliente c'
      'where c.codigo = :codigo')
    Left = 744
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryNomeClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Size = 120
    end
  end
  object qryDescProduto: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'select p.descricao'
      'from produto p'
      'where p.codigo = :codigo')
    Left = 744
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryDescProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 120
    end
  end
  object qryValidarReferencia: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'select p.codigo'
      'from pedido p'
      'where p.codigo = :codigo')
    Left = 744
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryValidarReferenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PEDIDO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryValidarReferente: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'select p.codigo'
      'from pedido p'
      'where p.referencia = :codigo')
    Left = 648
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryValidarReferenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PEDIDO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
