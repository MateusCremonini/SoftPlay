inherited CadProduto: TCadProduto
  Caption = 'CadProduto'
  ClientHeight = 368
  ClientWidth = 711
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 711
    Height = 319
    inherited cxGrid3: TcxGrid
      Height = 346
      Align = alNone
      inherited cxGrid3DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsDados
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        object cxGrid3DBTableView1Nome: TcxGridDBColumn
          DataBinding.FieldName = 'Nome'
          Width = 198
        end
        object cxGrid3DBTableView1Valor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Width = 91
        end
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 375
      Top = 28
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 295
    end
    object CeValor: TcxDBCalcEdit [2]
      Left = 375
      Top = 55
      DataBinding.DataField = 'Valor'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    inherited dxLayoutGroup4: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutItem6: TdxLayoutItem
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Editar'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Nome'
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valor'
      Control = CeValor
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited pnlRodaPe: TPanel
    Top = 319
    Width = 711
    inherited BtnNovo: TButton
      Left = 365
      Top = 3
    end
    inherited Button1: TButton
      Left = 537
      Top = 3
    end
    inherited Button2: TButton
      Left = 623
      Top = 3
    end
    inherited BtnCancelar: TButton
      Left = 451
      Top = 3
    end
    inherited BtnDelete: TButton
      Left = 279
      Top = 3
    end
  end
  inherited dsDados: TDataSource
    DataSet = DmBase.MemProduto
  end
end
