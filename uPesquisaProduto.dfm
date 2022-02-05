object FrmPesquisaProduto: TFrmPesquisaProduto
  Left = 0
  Top = 0
  Caption = 'Pesquisa Produto'
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
  object pnButton: TPanel
    Left = 480
    Top = 80
    Width = 155
    Height = 219
    Align = alRight
    TabOrder = 0
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
  object pnHeader: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 80
    Align = alTop
    TabOrder = 1
    OnExit = pnHeaderExit
    object lbCodigo: TLabel
      Left = 36
      Top = 34
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
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
    TabOrder = 2
    object GridProduto: TDBGrid
      Left = 10
      Top = 11
      Width = 458
      Height = 193
      DataSource = dtsProduto
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
          FieldName = 'DESCRICAO'
          Width = 350
          Visible = True
        end>
    end
  end
  object qryProduto: TIBQuery
    Database = dmBanco.dbBanco
    Transaction = dmBanco.Transaction
    SQL.Strings = (
      'select p.codigo, p.descricao'
      'from produto p')
    Left = 408
    Top = 24
    object qryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 120
    end
  end
  object dtsProduto: TDataSource
    DataSet = qryProduto
    Left = 488
    Top = 24
  end
end
