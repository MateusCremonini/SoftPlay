unit TestuCadVenda;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, cxDropDownEdit, cxLookAndFeels, cxDBEdit, cxLookAndFeelPainters,
  cxGridTableView, cxDataStorage, System.SysUtils, Vcl.DBActns,  cxControls,
  Vcl.Graphics, System.Classes, Vcl.Forms, cxGridCustomTableView, cxCalendar, Vcl.Menus,
  Winapi.Messages, cxMaskEdit, Vcl.ExtCtrls, cxGridLevel, cxEdit, cxFilter, Vcl.Controls,
  cxDBLookupComboBox, cxCustomData, cxGridDBTableView, cxGridCustomView, Vcl.Dialogs,
  dxLayoutControl, cxData, cxGrid, Data.DB, cxDBData, dxLayoutcxEditAdapters,
  Vcl.ActnList, System.Variants, cxTextEdit, cxNavigator, uCadBase,
  Winapi.Windows, cxClasses, System.Actions, cxGraphics, cxStyles, Vcl.StdCtrls,
  Vcl.DBCtrls, cxContainer, dxLayoutContainer;

type
  // Test methods for class TCadVenda

  TestTCadVenda = class(TTestCase)
  strict private
//    FCadVenda: TCadVenda;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestFormCreate;
    procedure TestDatasetPost1Execute;
  end;

implementation

procedure TestTCadVenda.SetUp;
begin
//  FCadVenda := TCadVenda.Create;
end;

procedure TestTCadVenda.TearDown;
begin
  //FCadVenda.Free;
//  FCadVenda := nil;
end;

procedure TestTCadVenda.TestFormCreate;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters

  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTCadVenda.Suite);
end.
