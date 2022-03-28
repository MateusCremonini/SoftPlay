unit uFrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxClasses, dxRibbon, Vcl.ExtCtrls;

type
  TFrmMenu = class(TForm)
    Panel1: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarLargeButton2: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  uCadBase, uCadCliente, uCadProdutos, uCadVenda;

{$R *.dfm}

procedure TFrmMenu.dxBarLargeButton3Click(Sender: TObject);
begin
  CadProduto:= TCadProduto.create(Self);
  CadProduto.ShowModal;
end;

procedure TFrmMenu.dxBarLargeButton4Click(Sender: TObject);
begin
  CadCliente:= TCadCliente.create(Self);
  CadCliente.ShowModal;
end;

procedure TFrmMenu.dxBarLargeButton5Click(Sender: TObject);
begin
  CadVenda:= TCadVenda.create(Self);
  CadVenda.ShowModal;
end;

end.
