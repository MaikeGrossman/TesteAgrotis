object FrmPesquisaPedido: TFrmPesquisaPedido
  Left = 0
  Top = 0
  Caption = 'Pesquisa Pedido'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 80
    Align = alTop
    TabOrder = 0
    OnExit = pnHeaderExit
    object lbCodigo: TLabel
      Left = 36
      Top = 34
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object edBusca: TMaskEdit
      Left = 88
      Top = 31
      Width = 133
      Height = 21
      BiDiMode = bdRightToLeft
      EditMask = '!999999;1; '
      MaxLength = 6
      ParentBiDiMode = False
      TabOrder = 0
      Text = '      '
    end
  end
  object pnButton: TPanel
    Left = 480
    Top = 80
    Width = 155
    Height = 219
    Align = alRight
    TabOrder = 1
    object btCancelar: TButton
      Left = 1
      Top = 172
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btCancelarClick
    end
    object btSelecionar: TButton
      Left = 1
      Top = 126
      Width = 153
      Height = 46
      Align = alBottom
      Caption = 'Selecionar'
      TabOrder = 1
      OnClick = btSelecionarClick
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 80
    Width = 480
    Height = 219
    Align = alClient
    TabOrder = 2
    object GridProduto: TDBGrid
      Left = 10
      Top = 11
      Width = 458
      Height = 193
      DataSource = dtsPedido
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = btSelecionarClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERACAO'
          Visible = True
        end>
    end
  end
  object qryPedido: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      
        'select p.codigo, p.referencia, p.numero, p.emissao, p.cliente, p' +
        '.valor, p.operacao'
      'from pedido p')
    Left = 392
    Top = 24
    object qryPedidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PEDIDO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoREFERENCIA: TIntegerField
      FieldName = 'REFERENCIA'
      Origin = '"PEDIDO"."REFERENCIA"'
    end
    object qryPedidoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"PEDIDO"."NUMERO"'
      Size = 6
    end
    object qryPedidoEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      Origin = '"PEDIDO"."EMISSAO"'
    end
    object qryPedidoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = '"PEDIDO"."CLIENTE"'
    end
    object qryPedidoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PEDIDO"."VALOR"'
    end
    object qryPedidoOPERACAO: TIBStringField
      FieldName = 'OPERACAO'
      Origin = '"PEDIDO"."OPERACAO"'
      FixedChar = True
      Size = 1
    end
  end
  object dtsPedido: TDataSource
    DataSet = qryPedido
    Left = 448
    Top = 24
  end
end
