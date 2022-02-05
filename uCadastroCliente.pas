unit uCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, Buttons;

type
  TFrmCadastroCliente = class(TForm)
    pnHeader: TPanel;
    pnBody: TPanel;
    pnButton: TPanel;
    btExcluir: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    edCodigo: TMaskEdit;
    qryCliente: TIBQuery;
    dtsCliente: TDataSource;
    edNome: TDBEdit;
    updCliente: TIBUpdateSQL;
    lbCodigo: TLabel;
    lbNome: TLabel;
    qryClienteCODIGO: TIntegerField;
    qryClienteNOME: TIBStringField;
    qryClienteCEP: TIBStringField;
    qryClienteLOGRADOURO: TIBStringField;
    qryClienteCOMPLEMENTO: TIBStringField;
    qryClienteBAIRRO: TIBStringField;
    qryClienteCIDADE: TIBStringField;
    qryClienteUF: TIBStringField;
    lbCEP: TLabel;
    lbLogradouro: TLabel;
    lbComplemento: TLabel;
    lbBairro: TLabel;
    lbCidade: TLabel;
    lbUF: TLabel;
    Label7: TLabel;
    edCEP: TDBEdit;
    edLogradouro: TDBEdit;
    edComplemento: TDBEdit;
    edBairro: TDBEdit;
    edCidade: TDBEdit;
    edUF: TDBEdit;
    edCodIBGE: TDBEdit;
    qryClienteCODIGOIBGE: TIBStringField;
    qryCodigoCliente: TIBQuery;
    qryCodigoClienteID: TLargeintField;
    btViaCep: TButton;
    btPesquisarCliente: TSpeedButton;
    btInserirNovo: TSpeedButton;
    procedure pnHeaderExit(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure btViaCepClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnBodyEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

{$R *.dfm}

uses uBanco, uViaCep, uPesquisaCliente;

procedure TFrmCadastroCliente.btCancelarClick(Sender: TObject);
begin
  qryCliente.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmCadastroCliente.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirmar exclusão?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    qryCliente.Delete;
    qryCliente.ApplyUpdates;
    dmBanco.Transaction.CommitRetaining;

    qryCliente.Close;
    pnHeader.Enabled := True;
    edCodigo.SetFocus;
  end;
end;

procedure TFrmCadastroCliente.btSalvarClick(Sender: TObject);
var
  bInseriu: Boolean;
begin
  if Trim(qryClienteNOME.AsString) = '' then
  begin
    ShowMessage('Nome inválido');
    edNome.SetFocus;
    Abort;
  end;


  bInseriu := (qryCliente.State = dsInsert);

  qryCliente.ApplyUpdates;
  dmBanco.Transaction.CommitRetaining;

  qryCodigoCliente.Close;
  qryCodigoCliente.Open;
  if bInseriu then
    ShowMessage('Cliente inserido com o código: ' + qryCodigoClienteID.AsString);

  qryCliente.Close;
  pnHeader.Enabled := True;
  edCodigo.SetFocus;
end;

procedure TFrmCadastroCliente.btViaCepClick(Sender: TObject);
var
  rEndereco: TEndereco;
begin
  if trim(edCEP.Text) = '-' then
    Exit;

  rEndereco := TEndereco.Create(edCEP.Text);
  try

    edBairro.Text := rEndereco.Bairro;
    edCidade.Text := rEndereco.Cidade;
    edUF.Text := rEndereco.UF;
    edCodIBGE.Text := rEndereco.IBGE;
    edLogradouro.Text := rEndereco.Logradouro;
  finally
    rEndereco.Free;
  end;
end;

procedure TFrmCadastroCliente.btInserirClick(Sender: TObject);
begin
  qryCliente.Close;
  qryCliente.Open;
  qryCliente.Append;

  btExcluir.Enabled := False;
  edNome.SetFocus;
end;

procedure TFrmCadastroCliente.btPesquisarClick(Sender: TObject);
begin
  FrmPesquisaCliente := TFrmPesquisaCliente.Create(Application);
  FrmPesquisaCliente.ShowModal;

  if FrmPesquisaCliente.iCodigo = 0 then
    Abort;

  edCodigo.Text := IntToStr(FrmPesquisaCliente.iCodigo);
  edNome.SetFocus;

  FrmPesquisaCliente.Free;
end;

procedure TFrmCadastroCliente.edCodigoEnter(Sender: TObject);
begin
  btExcluir.Enabled := True;
  edCodigo.SelectAll;
end;

procedure TFrmCadastroCliente.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 112 then
    btInserirClick(Self);

  if Key = 113 then
    btPesquisarClick(self);
end;

procedure TFrmCadastroCliente.pnBodyEnter(Sender: TObject);
begin
  pnHeader.Enabled := False;
end;

procedure TFrmCadastroCliente.pnHeaderExit(Sender: TObject);
begin
  if not(qryCliente.State = dsInsert) then
  begin
    if Trim(edCodigo.Text) = '' then
    begin
      ShowMessage('Código inválido!');
      edCodigo.SetFocus;
      abort;
    end;

    qryCliente.Close;
    qryCliente.ParamByName('CODIGO').AsString := edCodigo.Text;
    qryCliente.Open;

    if qryCliente.IsEmpty then
    begin
      ShowMessage('Cliente não encontrado!');
      edCodigo.SetFocus;
      abort;
    end;

    qryCliente.Edit;
  end;
end;

end.
