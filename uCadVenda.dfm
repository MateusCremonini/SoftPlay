inherited CadVenda: TCadVenda
  Caption = 'Venda'
  ClientHeight = 619
  ClientWidth = 777
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 777
    Height = 570
    object DBLookupComboBox1: TDBLookupComboBox [0]
      Left = 403
      Top = 28
      Width = 290
      Height = 21
      DataField = 'NomeCliente'
      DataSource = DmBase.DataSource1
      TabOrder = 1
    end
    object cxGrid1: TcxGrid [1]
      Left = 343
      Top = 100
      Width = 400
      Height = 200
      TabOrder = 3
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsdetalhe
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NomeProduto: TcxGridDBColumn
          DataBinding.FieldName = 'NomeProduto'
          Width = 199
        end
        object cxGrid1DBTableView1ValorProduto: TcxGridDBColumn
          DataBinding.FieldName = 'ValorProduto'
          Width = 92
        end
        object cxGrid1DBTableView1qtdProduto: TcxGridDBColumn
          DataBinding.FieldName = 'qtdProduto'
          Width = 91
        end
        object cxGrid1DBTableView1ValorTotal: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'Total'
          Width = 92
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited cxGrid3: TcxGrid
      Left = -42
      Width = 343
      Height = 416
      inherited cxGrid3DBTableView1: TcxGridDBTableView
        DataController.DataSource = dsDados
        OptionsView.ColumnAutoWidth = True
        object cxGrid3DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Width = 40
        end
        object cxGrid3DBTableView1NomeCliente: TcxGridDBColumn
          Caption = 'Nome Cliente'
          DataBinding.FieldName = 'NomeCliente'
          Width = 118
        end
        object cxGrid3DBTableView1ValorTotal: TcxGridDBColumn
          Caption = 'Valor Total'
          DataBinding.FieldName = 'ValorTotal'
          Width = 62
        end
        object cxGrid3DBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'DataEntrega'
          Width = 106
        end
      end
      object cxGrid3DBTableView2: TcxGridDBTableView [1]
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.SyncMode = False
        DataController.DataSource = dsdetalhe
        DataController.DetailKeyFieldNames = 'IDVenda'
        DataController.KeyFieldNames = 'IDVenda'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView2NomeProduto: TcxGridDBColumn
          DataBinding.FieldName = 'NomeProduto'
          Width = 100
        end
        object cxGrid3DBTableView2ValorProduto: TcxGridDBColumn
          DataBinding.FieldName = 'ValorProduto'
          Width = 50
        end
        object cxGrid3DBTableView2qtdProduto: TcxGridDBColumn
          DataBinding.FieldName = 'qtdProduto'
          Width = 50
        end
        object cxGrid3DBTableView2Total: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          Width = 50
        end
      end
      inherited cxGrid3Level1: TcxGridLevel
        object cxGrid3Level2: TcxGridLevel
          GridView = cxGrid3DBTableView2
        end
      end
    end
    object memCupom: TMemo [3]
      Left = 333
      Top = 377
      Width = 410
      Height = 85
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 5
    end
    object cxDBDateEdit1: TcxDBDateEdit [4]
      Left = 403
      Top = 55
      DataBinding.DataField = 'DataEntrega'
      DataBinding.DataSource = dsDados
      Properties.Kind = ckDateTime
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 210
    end
    object DBEdit1: TDBEdit [5]
      Left = 620
      Top = 308
      Width = 121
      Height = 17
      BorderStyle = bsNone
      DataField = 'TotalTotal'
      DataSource = dsdetalhe
      TabOrder = 4
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = -1
    end
    inherited dxLayoutGroup4: TdxLayoutGroup
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup [8]
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem [9]
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Nome Cliente:'
      Control = DBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup [10]
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Produtos:'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem [11]
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    inherited dxLayoutItem6: TdxLayoutItem
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Cupom'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Memo1'
      CaptionOptions.Visible = False
      Control = memCupom
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Data Entrega'
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'DBEdit1'
      Control = DBEdit1
      Index = 1
    end
  end
  inherited pnlRodaPe: TPanel
    Top = 570
    Width = 777
    inherited BtnNovo: TButton
      Left = 436
    end
    inherited Button1: TButton
      Left = 608
    end
    inherited Button2: TButton
      Left = 694
    end
    inherited BtnCancelar: TButton
      Left = 522
    end
    inherited BtnDelete: TButton
      Left = 350
    end
  end
  inherited dsDados: TDataSource
    DataSet = DmBase.MemVenda
    Left = 744
    Top = 120
  end
  inherited ActionList1: TActionList
    Left = 744
    Top = 80
    inherited DatasetPost1: TDataSetPost
      DataSource = dsDados
    end
    object DatasetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsdetalhe
    end
    object DatasetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsdetalhe
    end
  end
  object dsdetalhe: TDataSource
    DataSet = DmBase.MemVendaProd
    Left = 744
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 744
    Top = 216
    object inserir1: TMenuItem
      Action = DatasetInsert2
    end
    object Deletar1: TMenuItem
      Action = DatasetDelete2
    end
  end
  object dsProduto: TDataSource
    DataSet = DmBase.MemProduto
    Left = 744
    Top = 272
  end
end
