program prjMVP;

uses
  Vcl.Forms,
  uFrmMenu in 'uFrmMenu.pas' {FrmMenu},
  uDmDados in 'uDmDados.pas' {DmBase: TDataModule},
  UCadBase in 'UCadBase.pas' {CadBase},
  Vcl.Themes,
  Vcl.Styles,
  uCadCliente in 'uCadCliente.pas' {CadCliente},
  uCadProdutos in 'uCadProdutos.pas' {CadProduto},
  uCadVenda in 'uCadVenda.pas' {CadVenda},
  UGeraCupom in 'UGeraCupom.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Slate Classico');
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TDmBase, DmBase);
  Application.Run;
end.
