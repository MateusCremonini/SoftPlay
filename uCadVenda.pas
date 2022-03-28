unit uCadVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses,
  dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  Vcl.DBCtrls, uDmDados, Vcl.Menus, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  Vcl.Mask;

type
  TCadVenda = class(TCadBase)
    dsdetalhe: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    PopupMenu1: TPopupMenu;
    inserir1: TMenuItem;
    Deletar1: TMenuItem;
    DatasetInsert2: TDataSetInsert;
    DatasetDelete2: TDataSetDelete;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    memCupom: TMemo;
    dsProduto: TDataSource;
    cxGrid1DBTableView1NomeProduto: TcxGridDBColumn;
    cxGrid1DBTableView1ValorProduto: TcxGridDBColumn;
    cxGrid1DBTableView1qtdProduto: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotal: TcxGridDBColumn;
    cxGrid3DBTableView1ValorTotal: TcxGridDBColumn;
    cxGrid3DBTableView1NomeCliente: TcxGridDBColumn;
    cxGrid3Level2: TcxGridLevel;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2NomeProduto: TcxGridDBColumn;
    cxGrid3DBTableView2ValorProduto: TcxGridDBColumn;
    cxGrid3DBTableView2qtdProduto: TcxGridDBColumn;
    cxGrid3DBTableView2Total: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    DBEdit1: TDBEdit;
    dxLayoutItem5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure DatasetPost1Execute(Sender: TObject);
    procedure cxGrid2DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
  protected
    procedure ValidarDados; override;
    { Private declarations }
    
  public
    { Public declarations }
  end;

var
  CadVenda: TCadVenda;

implementation

uses
  UGeraCupom, DateUtils;

{$R *.dfm}

procedure TCadVenda.cxGrid2DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
Var
  LGeraCupom: TGeraCupom;
begin
  inherited;
  //if not assigned(dsDados.dataSet) or not assigned(dsdetalhe.dataSet) then
//    Exit;
//  LGeraCupom:= TGeraCupom.Create(dsDados.dataSet, dsdetalhe.Dataset);
//  Try
//     memCupom.lines.text:=LGeraCupom.GerarCupom();
//  Finally
//    Freeandnil(LGeraCupom);
//  End;

end;

procedure TCadVenda.DatasetPost1Execute(Sender: TObject);
begin
  inherited;
  if dsdetalhe.DataSet.State in dsEditModes then
    dsdetalhe.DataSet.post;
   if dsdados.DataSet.State in dsEditModes then
    dsdados.DataSet.post;
end;

procedure TCadVenda.FormCreate(Sender: TObject);
begin
  inherited;
  dsDados.DataSet:= DmBase.MemVenda;
  dsdetalhe.DataSet:= DmBase.MemVendaProd;
end;

procedure TCadVenda.ValidarDados;
begin
  inherited;
  if not DateInRange(cxDBDateEdit1.Date, Now, Now + 10)  then
    raise Exception.Create('Data de entrega invalida, ela deve estar entre ' +
      datetostr(Date()) + ' e ' + datetostr((date() + 10)));
end;

end.
