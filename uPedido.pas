unit uPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, dblookup, MaskUtils, Buttons;

type
  TFrmPedido = class(TForm)
    pnHeader: TPanel;
    lbCodigo: TLabel;
    edCodigo: TMaskEdit;
    pnButton: TPanel;
    btCancelar: TButton;
    btSalvar: TButton;
    btExcluir: TButton;
    pnBody: TPanel;
    edNumero: TDBEdit;
    edDataEmissao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCodigocliente: TDBEdit;
    Label3: TLabel;
    gridProdutos: TDBGrid;
    qryPedido: TIBQuery;
    dtsPedido: TDataSource;
    updPedido: TIBUpdateSQL;
    qryProdutos: TIBQuery;
    dtsProdutos: TDataSource;
    updProdutos: TIBUpdateSQL;
    qryPedidoCODIGO: TIntegerField;
    qryPedidoREFERENCIA: TIntegerField;
    qryPedidoNUMERO: TIBStringField;
    qryPedidoEMISSAO: TDateTimeField;
    qryPedidoCLIENTE: TIntegerField;
    qryPedidoVALOR: TFloatField;
    qryProdutosCODIGO: TIntegerField;
    qryProdutosPEDIDO: TIntegerField;
    qryProdutosPRODUTO: TIntegerField;
    qryProdutosQUANTIDADE: TIntegerField;
    qryProdutosDESCRICAO: TIBStringField;
    edNomeCliente: TEdit;
    edReferencia: TDBEdit;
    lbReferencia: TLabel;
    Label4: TLabel;
    edTotal: TDBEdit;
    rgOperacao: TRadioGroup;
    qryCodigoPedido: TIBQuery;
    qryCodigoPedidoID: TLargeintField;
    qryProdutosVALORUNITARIO: TFloatField;
    qryNomeCliente: TIBQuery;
    qryDescProduto: TIBQuery;
    qryNomeClienteNOME: TIBStringField;
    qryDescProdutoDESCRICAO: TIBStringField;
    qryPedidoOPERACAO: TIBStringField;
    qryProdutosVALORITEM: TFloatField;
    qryValidarReferencia: TIBQuery;
    btInserirNovo: TSpeedButton;
    btPesquisarPedido: TSpeedButton;
    btPesquisaReferencia: TSpeedButton;
    btPesquisaCliente: TSpeedButton;
    qryValidarReferenciaCODIGO: TIntegerField;
    qryValidarReferente: TIBQuery;
    qryValidarReferenteCODIGO: TIntegerField;
    procedure pnHeaderExit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure qryPedidoAfterInsert(DataSet: TDataSet);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisaClienteClick(Sender: TObject);
    procedure qryPedidoCODIGOChange(Sender: TField);
    procedure edCodigoEnter(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure qryPedidoCLIENTEChange(Sender: TField);
    procedure qryProdutosAfterPost(DataSet: TDataSet);
    procedure gridProdutosExit(Sender: TObject);
    procedure qryProdutosPRODUTOChange(Sender: TField);
    procedure qryPedidoAfterOpen(DataSet: TDataSet);
    procedure qryPedidoBeforePost(DataSet: TDataSet);
    procedure qryProdutosQUANTIDADEChange(Sender: TField);
    procedure edCodigoclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPesquisaReferenciaClick(Sender: TObject);
    procedure pnBodyEnter(Sender: TObject);
    procedure edReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Function PesquisarPedido: Integer;
    procedure BuscaNomeCliente;
    procedure CalcTotal;

  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

uses uBanco, uPesquisaProduto, uPesquisaCliente, uPesquisaPedido;

procedure TFrmPedido.btCancelarClick(Sender: TObject);
begin
  qryPedido.Close;
  qryProdutos.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmPedido.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirmar exclusão?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    qryValidarReferente.Close;
    qryValidarReferente.ParamByName('CODIGO').AsInteger := qryPedidoCODIGO.AsInteger;
    qryValidarReferente.Open;

    if not qryValidarReferente.IsEmpty then
    begin
      ShowMessage('O pedido: '+ qryValidarReferenteCODIGO.AsString +' é referente a este pedido, Não é possivel excluir.');
      btCancelar.SetFocus;
      Abort;
    end;


    while not qryProdutos.IsEmpty do
    begin
      qryProdutos.Delete;
      qryProdutos.ApplyUpdates;
    end;

    qryPedido.Delete;
    qryPedido.ApplyUpdates;
    dmBanco.Transaction.CommitRetaining;

    qryProdutos.Close;
    qryPedido.Close;
    pnHeader.Enabled := True;
    edCodigo.SetFocus;
  end;
end;

procedure TFrmPedido.btInserirClick(Sender: TObject);
begin
  edCodigo.Clear;

  qryPedido.Close;
  qryPedido.Open;
  qryPedido.Append;

  qryCodigoPedido.Close;
  qryCodigoPedido.Open;

  qryPedidoCODIGO.AsInteger := qryCodigoPedidoID.AsInteger;

  qryPedidoNUMERO.AsString := copy('000000',1, 6 - length(qryPedidoCODIGO.AsString)) + qryPedidoCODIGO.AsString;

  btExcluir.Enabled := False;
  pnBody.SetFocus;
end;

procedure TFrmPedido.btPesquisaClienteClick(Sender: TObject);
begin
  if not qryPedido.Active then
    abort;

  FrmPesquisaCliente := TFrmPesquisaCliente.Create(Application);
  FrmPesquisaCliente.ShowModal;

  if FrmPesquisaCliente.iCodigo = 0 then
    Abort;

  qryPedidoCLIENTE.AsInteger := FrmPesquisaCliente.iCodigo;
  edNomeCliente.Text := FrmPesquisaCliente.sNome;
  edCodigocliente.SetFocus;

  FrmPesquisaCliente.Free;
end;

procedure TFrmPedido.btPesquisarClick(Sender: TObject);
begin
  edCodigo.Text := IntToStr(PesquisarPedido);
  pnBody.SetFocus;
end;

procedure TFrmPedido.btSalvarClick(Sender: TObject);
var
  bInseriu: Boolean;
begin
  if (edNomeCliente.Text = '') then
  begin
    ShowMessage('Cliente inválido!');
    edCodigocliente.SetFocus;
    abort;
  end;

  if qryProdutos.IsEmpty then
  begin
    ShowMessage('Não é possivel lançar pedido sem produtos!');
    gridProdutos.SetFocus;
    abort;
  end;

  if qryPedidoCODIGO.AsInteger = qryPedidoREFERENCIA.AsInteger then
  begin
    ShowMessage('Não é possível referenciar ao próprio pedido');
    edReferencia.SetFocus;
    Abort;
  end;

  if (qryPedidoREFERENCIA.AsString <> '')  then
  begin
    qryValidarReferencia.Close;
    qryValidarReferencia.ParamByName('CODIGO').AsInteger := qryPedidoREFERENCIA.AsInteger;
    qryValidarReferencia.Open;
    if qryValidarReferencia.IsEmpty then
    begin
      ShowMessage('Referência inválida!');
      edReferencia.SetFocus;
      Abort;
    end;
  end;

  bInseriu := (qryPedido.State = dsInsert);

  qryPedido.ApplyUpdates;
  qryProdutos.ApplyUpdates;
  dmBanco.Transaction.CommitRetaining;

  if bInseriu then
    ShowMessage('Pedido inserido com o código: ' + qryCodigoPedidoID.AsString);

  qryPedido.Close;
  qryProdutos.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmPedido.edCodigoclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 113 then
    btPesquisaClienteClick(self);
end;

procedure TFrmPedido.edCodigoEnter(Sender: TObject);
begin
  btExcluir.Enabled := True;
  edNomeCliente.Clear;
  rgOperacao.ItemIndex := 0;
  edCodigo.SelectAll;
end;

procedure TFrmPedido.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 112 then
    btInserirClick(Self);

  if Key = 113 then
    btPesquisarClick(Self);
end;

procedure TFrmPedido.edReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 113 then
    btPesquisaReferenciaClick(self);
end;

procedure TFrmPedido.gridProdutosExit(Sender: TObject);
begin
  CalcTotal;
end;

procedure TFrmPedido.gridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 113 then
  begin
    FrmPesquisaProduto := TFrmPesquisaProduto.Create(Application);
    FrmPesquisaProduto.ShowModal;

    if FrmPesquisaProduto.iCodigo = 0 then
      Abort;

    if qryProdutos.State = dsBrowse then
      qryProdutos.Edit;

    qryProdutosPRODUTO.AsInteger := FrmPesquisaProduto.iCodigo;
    qryProdutosDESCRICAO.AsString := FrmPesquisaProduto.sDescricao;

    FrmPesquisaProduto.Free;
  end;
end;

procedure TFrmPedido.pnBodyEnter(Sender: TObject);
begin
  pnHeader.Enabled := False;
end;

procedure TFrmPedido.pnHeaderExit(Sender: TObject);
begin
  if not(qryPedido.State = dsInsert) then
  begin
    if Trim(edCodigo.Text) = '' then
    begin
      ShowMessage('Código inválido!');
      edCodigo.SetFocus;
      Abort;
    end;

    qryPedido.Close;
    qryPedido.ParamByName('CODIGO').AsString := edCodigo.Text;
    qryPedido.Open;

    if qryPedido.IsEmpty then
    begin
      ShowMessage('Pedido não encontrado!');
      edCodigo.SetFocus;
      Abort;
    end;

    qryPedido.Edit;
  end;

  qryProdutos.Close;
  qryProdutos.ParamByName('CODPEDIDO').AsInteger := qryPedidoCODIGO.AsInteger;
  qryProdutos.Open;

  if (qryPedidoOPERACAO.AsString = 'E') or (qryPedidoOPERACAO.AsString = '') then
    rgOperacao.ItemIndex := 0
  else
    rgOperacao.ItemIndex := 1;

  CalcTotal;
end;

procedure TFrmPedido.qryPedidoAfterInsert(DataSet: TDataSet);
begin
  qryPedidoEMISSAO.AsDateTime := Date;
end;

procedure TFrmPedido.qryPedidoAfterOpen(DataSet: TDataSet);
begin
  BuscaNomeCliente;
end;

procedure TFrmPedido.qryPedidoBeforePost(DataSet: TDataSet);
begin
  if rgOperacao.ItemIndex = 0 then
    qryPedidoOPERACAO.AsString := 'E'
  else
  if rgOperacao.ItemIndex = 1 then
    qryPedidoOPERACAO.AsString := 'S'
end;

procedure TFrmPedido.qryPedidoCLIENTEChange(Sender: TField);
begin
  BuscaNomeCliente;
end;

procedure TFrmPedido.qryPedidoCODIGOChange(Sender: TField);
begin
  qryPedidoNUMERO.AsInteger := qryPedidoCODIGO.AsInteger;
end;

procedure TFrmPedido.qryProdutosAfterPost(DataSet: TDataSet);
begin
  CalcTotal;
end;

procedure TFrmPedido.qryProdutosPRODUTOChange(Sender: TField);
begin
  qryDescProduto.Close;
  qryDescProduto.ParamByName('CODIGO').AsInteger := qryProdutosPRODUTO.AsInteger;
  qryDescProduto.Open;

  if qryDescProduto.IsEmpty then
  begin
    ShowMessage('Produto inválido!');
    qryProdutos.Cancel;
    gridProdutos.SelectedIndex := 0;
    gridProdutos.SetFocus;
    abort;
  end;

  qryProdutosDESCRICAO.AsString := qryDescProdutoDESCRICAO.AsString;
  qryProdutosQUANTIDADE.AsInteger := 1;
  qryProdutosPEDIDO.AsInteger := qryPedidoCODIGO.AsInteger;
  qryProdutosVALORUNITARIO.AsFloat := 0;
end;

procedure TFrmPedido.qryProdutosQUANTIDADEChange(Sender: TField);
begin
  qryProdutosVALORITEM.AsFloat := qryProdutosQUANTIDADE.AsInteger * qryProdutosVALORUNITARIO.AsFloat;
end;

procedure TFrmPedido.CalcTotal;
var
  ValorTotal: Real;
begin
  ValorTotal := 0;

  qryProdutos.First;
  while not qryProdutos.Eof do
  begin
    ValorTotal := ValorTotal + qryProdutosVALORUNITARIO.AsFloat * qryProdutosQUANTIDADE.AsInteger;
    qryProdutos.Next;
  end;

  qryPedidoVALOR.AsFloat := ValorTotal;
end;

procedure TFrmPedido.BuscaNomeCliente;
begin
  qryNomeCliente.Close;
  qryNomeCliente.ParamByName('CODIGO').AsInteger := qryPedidoCLIENTE.AsInteger;
  qryNomeCliente.Open;

  edNomeCliente.Text := qryNomeClienteNOME.AsString;
end;

procedure TFrmPedido.btPesquisaReferenciaClick(Sender: TObject);
begin
  if qryPedido.Active then
    qryPedidoREFERENCIA.AsInteger := PesquisarPedido;
end;

Function TFrmPedido.PesquisarPedido: Integer;
begin
  FrmPesquisaPedido := TFrmPesquisaPedido.Create(Application);
  FrmPesquisaPedido.ShowModal;

  if FrmPesquisaPedido.iCodigo = 0 then
    Abort;

  Result := FrmPesquisaPedido.iCodigo;

  FrmPesquisaPedido.Free;
end;

end.
