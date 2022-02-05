unit uCadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DB, IBCustomDataSet, IBQuery, IBUpdateSQL,
  DBCtrls, Buttons;

type
  TFrmCadastroProduto = class(TForm)
    pnHeader: TPanel;
    pnButton: TPanel;
    pnBody: TPanel;
    btCancelar: TButton;
    btSalvar: TButton;
    btExcluir: TButton;
    edCodigo: TMaskEdit;
    lbCodigo: TLabel;
    qryProduto: TIBQuery;
    dtsProduto: TDataSource;
    updProduto: TIBUpdateSQL;
    qryProdutoCODIGO: TIntegerField;
    qryProdutoDESCRICAO: TIBStringField;
    edDescricao: TDBEdit;
    Label1: TLabel;
    qryCodigoProduto: TIBQuery;
    qryCodigoProdutoID: TLargeintField;
    btInserirNovo: TSpeedButton;
    btPesquisarProduto: TSpeedButton;
    procedure pnHeaderExit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnBodyEnter(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProduto: TFrmCadastroProduto;

implementation

{$R *.dfm}

uses uBanco, uPesquisaProduto;

procedure TFrmCadastroProduto.btSalvarClick(Sender: TObject);
var
  bInseriu: Boolean;
begin
  if trim(qryProdutoDESCRICAO.AsString) = '' then
  begin
    ShowMessage('Descrição Inválida!');
    edDescricao.SetFocus;
    Abort;
  end;

  bInseriu := (qryProduto.State = dsInsert);

  qryProduto.ApplyUpdates;
  dmBanco.Transaction.CommitRetaining;

  qryCodigoProduto.Close;
  qryCodigoProduto.Open;
  if bInseriu then
    ShowMessage('Produto inserido com o código: ' + qryCodigoProdutoID.AsString);

  qryProduto.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmCadastroProduto.edCodigoEnter(Sender: TObject);
begin
  btExcluir.Enabled := True;
end;

procedure TFrmCadastroProduto.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 112 then
    btInserirClick(Self);

  if Key = 113 then
    btPesquisarClick(self);
end;

procedure TFrmCadastroProduto.btCancelarClick(Sender: TObject);
begin
  qryProduto.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmCadastroProduto.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirmar exclusão?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    qryProduto.Delete;
    qryProduto.ApplyUpdates;
    dmBanco.Transaction.CommitRetaining;

    qryProduto.Close;
    pnHeader.Enabled := True;
    edCodigo.SetFocus;
  end;
end;

procedure TFrmCadastroProduto.btInserirClick(Sender: TObject);
begin
  qryProduto.Close;
  qryProduto.Open;
  qryProduto.Append;

  btExcluir.Enabled := False;
  edDescricao.SetFocus;
end;

procedure TFrmCadastroProduto.btPesquisarClick(Sender: TObject);
begin
  FrmPesquisaProduto := TFrmPesquisaProduto.Create(Application);
  FrmPesquisaProduto.ShowModal;

  if FrmPesquisaProduto.iCodigo = 0 then
    Abort;

  edCodigo.Text := IntToStr(FrmPesquisaProduto.iCodigo);
  edDescricao.SetFocus;

  FrmPesquisaProduto.Free;
end;

procedure TFrmCadastroProduto.pnBodyEnter(Sender: TObject);
begin

  pnHeader.Enabled := False;
end;

procedure TFrmCadastroProduto.pnHeaderExit(Sender: TObject);
begin
  if not(qryProduto.State = dsInsert) then
  begin
    if Trim(edCodigo.Text) = '' then
    begin
      ShowMessage('Código inválido!');
      edCodigo.SetFocus;
      abort;
    end;

    qryProduto.Close;
    qryProduto.ParamByName('CODIGO').AsString := edCodigo.Text;
    qryProduto.Open;

    if qryProduto.IsEmpty then
    begin
      ShowMessage('Produto não encontrado!');
      edCodigo.SetFocus;
      abort;
    end;

    qryProduto.Edit;
  end;
end;

end.
