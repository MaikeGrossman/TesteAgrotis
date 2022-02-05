unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, DB, IBDatabase;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    mnCadastros: TMenuItem;
    OpenDialog: TOpenDialog;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    ImageList1: TImageList;
    mnCadastroCliente: TMenuItem;
    mnCadastroProduto: TMenuItem;
    mnComercial: TMenuItem;
    mnLancarPedido: TMenuItem;
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure mnCadastroClienteClick(Sender: TObject);
    procedure mnCadastroProdutoClick(Sender: TObject);
    procedure mnLancarPedidoClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses CHILDWIN, about, uCadastroCliente, uCadastroProduto, uPedido;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.mnCadastroClienteClick(Sender: TObject);
begin
  FrmCadastroCliente := TFrmCadastroCliente.Create(Application);
  FrmCadastroCliente.ShowModal;
end;

procedure TMainForm.mnCadastroProdutoClick(Sender: TObject);
begin
  FrmCadastroProduto := TFrmCadastroProduto.Create(Application);
  FrmCadastroProduto.ShowModal;
end;

procedure TMainForm.mnLancarPedidoClick(Sender: TObject);
begin
  FrmPedido := TFrmPedido.Create(Application);
  FrmPedido.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

end.
