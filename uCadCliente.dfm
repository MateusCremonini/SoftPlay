inherited CadCliente: TCadCliente
  Caption = 'Cliente'
  ClientHeight = 457
  ClientWidth = 710
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 710
    Height = 408
    inherited cxGrid3: TcxGrid
      Left = 18
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
        end
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 371
      Top = 28
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsDados
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 317
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
  end
  inherited pnlRodaPe: TPanel
    Top = 408
    Width = 710
    inherited BtnNovo: TButton
      Left = 434
    end
    inherited Button1: TButton
      Left = 520
    end
    inherited Button2: TButton
      Left = 606
    end
    inherited BtnCancelar: TButton
      Left = 348
    end
    inherited BtnDelete: TButton
      Left = 262
    end
  end
  inherited dsDados: TDataSource
    DataSet = DmBase.MemCliente
  end
  inherited ActionList1: TActionList
    inherited DatasetPost1: TDataSetPost
      DataSource = dsDados
    end
  end
end
