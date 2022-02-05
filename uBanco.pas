unit uBanco;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TdmBanco = class(TDataModule)
    dbBanco: TIBDatabase;
    Transaction: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBanco: TdmBanco;

implementation

{$R *.dfm}

end.
