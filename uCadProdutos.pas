unit uCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TCadProduto = class(TCadBase)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    CeValor: TcxDBCalcEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid3DBTableView1Nome: TcxGridDBColumn;
    cxGrid3DBTableView1Valor: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure ValidarDados(); Override;
  public
    { Public declarations }

  end;

var
  CadProduto: TCadProduto;

implementation

uses
  uDmDados;


{$R *.dfm}

procedure TCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  dsDados.DataSet:= DmBase.MemProduto;
end;

procedure TCadProduto.ValidarDados;
begin
  if CeValor.Value <= 0 then
    raise Exception.Create('Valor informado errado!');
  Inherited;

end;

end.
