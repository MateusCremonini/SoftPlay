object DmBase: TDmBase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 376
  Width = 519
  object MemCliente: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    LocalSQL = FDLocalSQL1
    AutoCommitUpdates = False
    Left = 104
    Top = 112
    object MemClienteID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object MemClienteNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 272
    Top = 72
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 392
    Top = 120
  end
  object FDLocalSQL1: TFDLocalSQL
    Connection = FDConnection1
    Active = True
    DataSets = <>
    Left = 184
    Top = 104
  end
  object MemProduto: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 104
    Top = 176
    object MemProdutoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object MemProdutoNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 100
    end
    object MemProdutoValor: TFloatField
      FieldName = 'Valor'
      Required = True
      DisplayFormat = 'R$ #.###,##'
    end
  end
  object MemVenda: TFDMemTable
    Active = True
    OnNewRecord = MemVendaNewRecord
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'IDCliente'
        DataType = ftInteger
      end
      item
        Name = 'ValorTotal'
        DataType = ftFloat
      end
      item
        Name = 'DataEntrega'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 104
    Top = 240
    object MemVendaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MemVendaIDCliente: TIntegerField
      FieldName = 'IDCliente'
    end
    object MemVendaValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object MemVendaNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = MemCliente
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'IDcliente'
      Lookup = True
    end
    object MemVendaDataEntrega: TDateTimeField
      FieldName = 'DataEntrega'
    end
  end
  object DataSource1: TDataSource
    DataSet = MemVenda
    Left = 136
    Top = 296
  end
  object MemVendaProd: TFDMemTable
    Active = True
    AfterPost = MemVendaProdAfterPost
    AfterDelete = MemVendaProdAfterDelete
    OnCalcFields = MemVendaProdCalcFields
    OnNewRecord = MemVendaProdNewRecord
    FieldDefs = <
      item
        Name = 'IDVenda'
        DataType = ftInteger
      end
      item
        Name = 'IDProduto'
        DataType = ftInteger
      end
      item
        Name = 'qtdProduto'
        DataType = ftInteger
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'Total'
        DataType = ftFloat
        Precision = 15
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    AggregatesActive = True
    MasterSource = DataSource1
    MasterFields = 'ID'
    DetailFields = 'IDVenda'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 192
    Top = 216
    object MemVendaProdIDVenda: TIntegerField
      FieldName = 'IDVenda'
    end
    object MemVendaProdIDProduto: TIntegerField
      FieldName = 'IDProduto'
    end
    object MemVendaProdNomeProduto: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = MemProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'IDProduto'
      Size = 100
      Lookup = True
    end
    object MemVendaProdValorProduto: TFloatField
      DisplayLabel = 'Valor'
      FieldKind = fkLookup
      FieldName = 'ValorProduto'
      LookupDataSet = MemProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'Valor'
      KeyFields = 'IDProduto'
      DisplayFormat = 'R$ #.###,##'
      Lookup = True
    end
    object MemVendaProdqtdProduto: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtdProduto'
    end
    object MemVendaProdValorTotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Total'
      DisplayFormat = 'R$ #.###,##'
    end
    object MemVendaProdid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MemVendaProdTotalTotal: TAggregateField
      FieldName = 'TotalTotal'
      Active = True
      DisplayName = ''
      DisplayFormat = 'R$ #.###,##'
      Expression = 'SUM(Total)'
    end
  end
end
