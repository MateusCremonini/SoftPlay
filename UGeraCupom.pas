unit UGeraCupom;

interface

uses DB;

type

  TGeraCupom = class
  private
    { private declarations }
  protected
    { protected declarations }
    FDadosPedido, FDadosPedidoProduto: TDataset;

  public
    { public declarations }
    constructor Create(ADadosPedido, ADadosPedidoProduto: TDataset);
    Function GerarCupom: String;
  published
    { published declarations }
  end;

implementation

uses classes, SysUtils;

{ TGeraCupom }

constructor TGeraCupom.Create(ADadosPedido, ADadosPedidoProduto: TDataset);
begin
  FDadosPedido := ADadosPedido;
  FDadosPedidoProduto:=ADadosPedidoProduto;
end;

function TGeraCupom.GerarCupom: String;
Var
  LResult: TStringList;
begin
  LResult:= TStringList.Create;
  FDadosPedidoProduto.DisableControls;
  try
    LResult.Add('DADOS DA COMPRA');
    LResult.Add('Cliente: ' + FDadosPedido.FieldbyName('NomeCliente').AsString);
    LResult.Add('Produtos');
    FDadosPedidoProduto.First;
    while Not FDadosPedidoProduto.eof do
    begin
      LResult.Add(FDadosPedidoProduto.FieldbyName('Produto').AsString + ' -- ' +
        FDadosPedidoProduto.FieldbyName('ProdutoValor').AsString);
      FDadosPedidoProduto.next;
    end;
    LResult.Add('Valor Total --------- ' + FDadosPedido.FieldbyName('ValorTotal').AsString);
    Result:= LResult.Text;
  finally
    FreeAndNil(LResult);
    FDadosPedidoProduto.EnableControls;
  end;

end;

end.
