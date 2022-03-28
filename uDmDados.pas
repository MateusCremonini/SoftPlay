unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet,
  Data.DB, FireDAC.Comp.DataSet;

type
  TDmBase = class(TDataModule)
    MemCliente: TFDMemTable;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDLocalSQL1: TFDLocalSQL;
    MemProduto: TFDMemTable;
    MemVenda: TFDMemTable;
    MemClienteID: TIntegerField;
    MemClienteNome: TStringField;
    MemProdutoID: TIntegerField;
    MemProdutoNome: TStringField;
    MemProdutoValor: TFloatField;
    MemVendaID: TIntegerField;
    MemVendaIDCliente: TIntegerField;
    MemVendaValorTotal: TFloatField;
    MemVendaNomeCliente: TStringField;
    DataSource1: TDataSource;
    MemVendaProd: TFDMemTable;
    MemVendaProdIDVenda: TIntegerField;
    MemVendaProdIDProduto: TIntegerField;
    MemVendaProdNomeProduto: TStringField;
    MemVendaProdValorProduto: TFloatField;
    MemVendaProdqtdProduto: TIntegerField;
    MemVendaProdValorTotal: TFloatField;
    MemVendaProdid: TIntegerField;
    MemVendaDataEntrega: TDateTimeField;
    MemVendaProdTotalTotal: TAggregateField;
    procedure MemVendaProdNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure MemVendaProdCalcFields(DataSet: TDataSet);
    procedure MemVendaNewRecord(DataSet: TDataSet);
    procedure MemVendaProdAfterPost(DataSet: TDataSet);
    procedure MemVendaProdAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmBase: TDmBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmBase.DataModuleCreate(Sender: TObject);
begin
  MemCliente.insert;
  MemClienteNome.Asstring:= 'Mateus';
  MemCliente.Post;

  MemProduto.insert;
  MemProdutoNome.AsString:= 'Produto';
  MemProdutoValor.AsFloat:= 10;
  MemProduto.Post;

  MemProduto.insert;
  MemProdutoNome.AsString:= 'Produto 2';
  MemProdutoValor.AsFloat:= 5;
  MemProduto.Post;
end;

procedure TDmBase.MemVendaNewRecord(DataSet: TDataSet);
begin
  MemVendaDataEntrega.AsDateTime:= Now();
end;

procedure TDmBase.MemVendaProdAfterDelete(DataSet: TDataSet);
begin
  if not (MemVenda.State in dsEditModes) then
    MemVenda.Edit;
  MemVendaValorTotal.asFloat:= MemVendaProdValorTotal.asFloat;
end;

procedure TDmBase.MemVendaProdAfterPost(DataSet: TDataSet);
begin
  if not (MemVenda.State in dsEditModes) then
    MemVenda.Edit;
  MemVendaValorTotal.asFloat:= MemVendaProdValorTotal.asFloat;
end;

procedure TDmBase.MemVendaProdCalcFields(DataSet: TDataSet);
begin
  MemVendaProdValorTotal.asFloat:= MemVendaProdValorProduto.asFloat * MemVendaProdqtdProduto.asInteger;
end;

procedure TDmBase.MemVendaProdNewRecord(DataSet: TDataSet);
begin
  MemVendaProdIDVenda.asInteger:= MemVendaID.asInteger;
end;

end.
