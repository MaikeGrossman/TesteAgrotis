unit uPesquisaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, IBCustomDataSet, IBQuery, Grids,
  DBGrids;

type
  TFrmPesquisaCliente = class(TForm)
    pnHeader: TPanel;
    lbCodigo: TLabel;
    edBusca: TMaskEdit;
    pnBody: TPanel;
    pnButton: TPanel;
    btCancelar: TButton;
    btSelecionar: TButton;
    GridCliente: TDBGrid;
    qryCliente: TIBQuery;
    dtsCliente: TDataSource;
    qryClienteCODIGO: TIntegerField;
    qryClienteNOME: TIBStringField;
    qryClienteCEP: TIBStringField;
    qryClienteLOGRADOURO: TIBStringField;
    qryClienteCOMPLEMENTO: TIBStringField;
    qryClienteBAIRRO: TIBStringField;
    qryClienteCIDADE: TIBStringField;
    qryClienteUF: TIBStringField;
    qryClienteCODIGOIBGE: TIBStringField;
    procedure pnHeaderExit(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodigo: integer;
    sNome: String;
  end;

var
  FrmPesquisaCliente: TFrmPesquisaCliente;

implementation

{$R *.dfm}

uses uBanco;

procedure TFrmPesquisaCliente.btCancelarClick(Sender: TObject);
begin
  iCodigo := 0;
  Close;
end;

procedure TFrmPesquisaCliente.btSelecionarClick(Sender: TObject);
begin
  iCodigo := qryClienteCODIGO.AsInteger;
  sNome := qryClienteNOME.AsString;
  Close;
end;

procedure TFrmPesquisaCliente.FormShow(Sender: TObject);
begin
  edBusca.SetFocus;
  edBusca.SelectAll;
end;

procedure TFrmPesquisaCliente.pnHeaderExit(Sender: TObject);
begin
  qryCliente.Close;
  qryCliente.SQL.Text := '';
  qryCliente.SQL.Text := 'select c.codigo, c.nome, c.cep, c.logradouro, c.complemento, c.bairro, c.cidade, c.uf, c.codigoibge ' +
                         'from cliente c ';

  if not (trim(edBusca.Text) = '') then
    qryCliente.SQL.Text := qryCliente.SQL.Text + ' where lower(c.nome) like lower(''%'+Trim(edBusca.Text)+'%'') ';

  qryCliente.SQL.Text := qryCliente.SQL.Text + 'order by c.codigo';

  qryCliente.Open;
end;

end.
