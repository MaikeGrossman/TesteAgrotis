unit uPesquisaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, ExtCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  TFrmPesquisaProduto = class(TForm)
    pnButton: TPanel;
    btCancelar: TButton;
    btSelecionar: TButton;
    pnHeader: TPanel;
    lbCodigo: TLabel;
    edBusca: TMaskEdit;
    pnBody: TPanel;
    GridProduto: TDBGrid;
    qryProduto: TIBQuery;
    dtsProduto: TDataSource;
    qryProdutoCODIGO: TIntegerField;
    qryProdutoDESCRICAO: TIBStringField;
    procedure pnHeaderExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodigo: integer;
    sDescricao: String;
  end;

var
  FrmPesquisaProduto: TFrmPesquisaProduto;

implementation

{$R *.dfm}

uses uBanco;

procedure TFrmPesquisaProduto.btCancelarClick(Sender: TObject);
begin
  iCodigo := 0;
  Close;
end;

procedure TFrmPesquisaProduto.btSelecionarClick(Sender: TObject);
begin
  iCodigo := qryProdutoCODIGO.AsInteger;
  sDescricao := qryProdutoDESCRICAO.AsString;
  Close;
end;

procedure TFrmPesquisaProduto.FormShow(Sender: TObject);
begin
  edBusca.SetFocus;
  edBusca.SelectAll;
end;

procedure TFrmPesquisaProduto.pnHeaderExit(Sender: TObject);
begin
  qryProduto.Close;
  qryProduto.SQL.Text := '';
  qryProduto.SQL.Text := 'select p.codigo, p.descricao ' +
                         'from produto p';

  if not (trim(edBusca.Text) = '') then
    qryProduto.SQL.Text := qryProduto.SQL.Text + ' where lower(p.descricao) like lower(''%'+Trim(edBusca.Text)+'%'') ';

  qryProduto.SQL.Text := qryProduto.SQL.Text + 'Order by p.codigo ';

  qryProduto.Open;
end;

end.
