unit UCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.StdCtrls, dxStatusBar, dxRibbonStatusBar,
  cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls, Data.DB,
  Vcl.DBActns, System.Actions, Vcl.ActnList, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TCadBase = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pnlRodaPe: TPanel;
    BtnNovo: TButton;
    Button1: TButton;
    Button2: TButton;
    dsDados: TDataSource;
    BtnCancelar: TButton;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetCancel1: TDataSetCancel;
    BtnDelete: TButton;
    DatasetPost1: TDataSetPost;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    procedure Button2Click(Sender: TObject);
    procedure DatasetPost1Execute(Sender: TObject);
  private
    { Private declarations }
  Protected
    procedure ValidarDados(); Virtual;
  public
    { Public declarations }
  end;

var
  CadBase: TCadBase;

implementation

{$R *.dfm}

procedure TCadBase.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TCadBase.DatasetPost1Execute(Sender: TObject);
begin
  ValidarDados();
  inherited;
end;

Procedure TCadBase.ValidarDados;
Var
  LItem: TField;
begin
  for LItem in dsDados.DataSet.Fields do
  begin
    if Litem.Required then
    begin
      if Litem.IsNull or Litem.AsString.Trim().IsEmpty() then
        raise Exception.Create('O Campo ' + Litem.DisplayLabel + ' é obrigatório!');
    end;

  end;

end;

end.
