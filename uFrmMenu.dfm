object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'FrmMenu'
  ClientHeight = 504
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 126
    Width = 625
    Height = 378
    Align = alClient
    TabOrder = 0
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 625
    Height = 126
    BarManager = dxBarManager1
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Black'
    Contexts = <>
    TabOrder = 5
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Cliente'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Produto'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 1
    end
    object dxRibbon1Tab3: TdxRibbonTab
      Active = True
      Caption = 'Venda'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 2
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 304
    Top = 256
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar2: TdxBar
      Caption = 'Cadastro Produto'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 659
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = 'Cadastro Cliente'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 659
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Cadastrar Venda'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 659
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Cadastrar'
      Category = 0
      Hint = 'Cadastrar'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Produto'
      Category = 0
      Hint = 'Produto'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarLargeButton1')
    end
  end
end
