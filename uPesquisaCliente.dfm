object FrmPesquisaCliente: TFrmPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'Pesquisar Cliente'
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
      Left = 55
      Top = 34
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object edBusca: TMaskEdit
      Left = 88
      Top = 31
      Width = 120
      Height = 21
      TabOrder = 0
    end
  end
  object pnBody: TPanel
    Left = 0
    Top = 80
    Width = 480
    Height = 219
    Align = alClient
    TabOrder = 1
    object GridCliente: TDBGrid
      Left = 10
      Top = 11
      Width = 458
      Height = 193
      DataSource = dtsCliente
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
          FieldName = 'NOME'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGRADOURO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPLEMENTO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOIBGE'
          Visible = True
        end>
    end
  end
  object pnButton: TPanel
    Left = 480
    Top = 80
    Width = 155
    Height = 219
    Align = alRight
    TabOrder = 2
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
  object qryCliente: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      
        'select c.codigo, c.nome, c.cep, c.logradouro, c.complemento, c.b' +
        'airro, c.cidade, c.uf, c.codigoibge'
      'from cliente c')
    Left = 312
    Top = 24
    object qryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CLIENTE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Size = 120
    end
    object qryClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTE"."CEP"'
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
    Left = 376
    Top = 24
  end
end
