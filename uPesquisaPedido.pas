unit uPesquisaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, ExtCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  TFrmPesquisaPedido = class(TForm)
    pnHeader: TPanel;
    lbCodigo: TLabel;
    edBusca: TMaskEdit;
    pnButton: TPanel;
    btCancelar: TButton;
    btSelecionar: TButton;
    pnBody: TPanel;
    GridProduto: TDBGrid;
    qryPedido: TIBQuery;
    dtsPedido: TDataSource;
    qryPedidoCODIGO: TIntegerField;
    qryPedidoREFERENCIA: TIntegerField;
    qryPedidoNUMERO: TIBStringField;
    qryPedidoEMISSAO: TDateTimeField;
    qryPedidoCLIENTE: TIntegerField;
    qryPedidoVALOR: TFloatField;
    qryPedidoOPERACAO: TIBStringField;
    procedure pnHeaderExit(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodigo: integer;
  end;

var
  FrmPesquisaPedido: TFrmPesquisaPedido;

implementation

{$R *.dfm}

uses uBanco;

procedure TFrmPesquisaPedido.btCancelarClick(Sender: TObject);
begin
  iCodigo := 0;
  Close;
end;

procedure TFrmPesquisaPedido.btSelecionarClick(Sender: TObject);
begin
  iCodigo := qryPedidoCODIGO.AsInteger;
  Close;
end;

procedure TFrmPesquisaPedido.FormShow(Sender: TObject);
begin
  edBusca.SetFocus;
end;

procedure TFrmPesquisaPedido.pnHeaderExit(Sender: TObject);
begin
  qryPedido.Close;
  qryPedido.SQL.Text := '';
  qryPedido.SQL.Text := 'select p.codigo, p.referencia, p.numero, p.emissao, p.cliente, p.valor, p.operacao ' +
                         'from pedido p';

  if not (trim(edBusca.Text) = '') then
    qryPedido.SQL.Text := qryPedido.SQL.Text + ' where p.numero like ''%'+Trim(edBusca.Text)+'%'' ';

  qryPedido.SQL.Text := qryPedido.SQL.Text + 'order by p.codigo';

  qryPedido.Open;
end;

end.
