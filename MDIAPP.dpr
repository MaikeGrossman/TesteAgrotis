program Mdiapp;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild},
  about in 'about.pas' {AboutBox},
  uCadastroCliente in 'uCadastroCliente.pas' {FrmCadastroCliente},
  uBanco in 'uBanco.pas' {dmBanco: TDataModule},
  uCadastroProduto in 'uCadastroProduto.pas' {FrmCadastroProduto},
  uPedido in 'uPedido.pas' {FrmPedido},
  uViaCep in 'uViaCep.pas',
  uPesquisaCliente in 'uPesquisaCliente.pas' {FrmPesquisaCliente},
  uPesquisaProduto in 'uPesquisaProduto.pas' {FrmPesquisaProduto},
  uPesquisaPedido in 'uPesquisaPedido.pas' {FrmPesquisaPedido};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Pedidos';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TdmBanco, dmBanco);
  Application.CreateForm(TFrmPesquisaPedido, FrmPesquisaPedido);
  Application.Run;
end.
