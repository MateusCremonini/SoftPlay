object CadBase: TCadBase
  Left = 0
  Top = 0
  Caption = 'CadBase'
  ClientHeight = 491
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 631
    Height = 442
    Align = alClient
    TabOrder = 0
    object cxGrid3: TcxGrid
      Left = 22
      Top = 28
      Width = 291
      Height = 346
      Align = alClient
      TabOrder = 0
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Pesquise aqui'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastros'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Control = cxGrid3
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object pnlRodaPe: TPanel
    Left = 0
    Top = 442
    Width = 631
    Height = 49
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      631
      49)
    object BtnNovo: TButton
      Left = 288
      Top = 2
      Width = 80
      Height = 44
      Action = DatasetInsert1
      Anchors = [akTop, akRight]
      Caption = '&Novo'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 460
      Top = 2
      Width = 80
      Height = 44
      Action = DatasetPost1
      Anchors = [akTop, akRight]
      Caption = 'Gravar'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 546
      Top = 2
      Width = 80
      Height = 44
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object BtnCancelar: TButton
      Left = 374
      Top = 2
      Width = 80
      Height = 44
      Action = DatasetCancel1
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 3
    end
    object BtnDelete: TButton
      Left = 202
      Top = 2
      Width = 80
      Height = 44
      Action = DatasetDelete1
      Anchors = [akTop, akRight]
      Caption = '&Deletar'
      TabOrder = 4
    end
  end
  object dsDados: TDataSource
    Left = 304
    Top = 240
  end
  object ActionList1: TActionList
    Left = 400
    Top = 248
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsDados
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = dsDados
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = dsDados
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      OnExecute = DatasetPost1Execute
    end
  end
end
