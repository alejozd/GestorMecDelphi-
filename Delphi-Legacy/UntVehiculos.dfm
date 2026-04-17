object FrmVehiculos: TFrmVehiculos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Vehiculos'
  ClientHeight = 680
  ClientWidth = 800
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GridMarcas: TcxGrid
    Left = 0
    Top = 0
    Width = 399
    Height = 660
    Align = alLeft
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlMarcas: TcxGridDBTableView
      PopupMenu = PopMarca
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = DmGlobal.ImLNavegador32
      Navigator.Buttons.First.Enabled = False
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.First.ImageIndex = 0
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Anterior'
      Navigator.Buttons.Prior.ImageIndex = 2
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Siguiente'
      Navigator.Buttons.Next.ImageIndex = 3
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Enabled = False
      Navigator.Buttons.Last.Hint = 'Ultimo'
      Navigator.Buttons.Last.ImageIndex = 5
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Hint = 'Agregar'
      Navigator.Buttons.Insert.ImageIndex = 6
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Hint = 'Agregar'
      Navigator.Buttons.Append.ImageIndex = 6
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Hint = 'Eliminar'
      Navigator.Buttons.Delete.ImageIndex = 13
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Hint = 'Editar'
      Navigator.Buttons.Edit.ImageIndex = 8
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Hint = 'Guardar'
      Navigator.Buttons.Post.ImageIndex = 9
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Hint = 'Cancelar'
      Navigator.Buttons.Cancel.ImageIndex = 12
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Hint = 'Refrescar'
      Navigator.Buttons.Refresh.ImageIndex = 10
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsMarcas
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MultiSelect = False
      NewItemRow.InfoText = 'Clic aqui para agregar un item nuevo'
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Appending = True
      OptionsData.DeletingConfirmation = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.Contenido
      Styles.Header = DmGlobal.Titulos
      object TvlMarcasMR_NOMBRE: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'MR_NOMBRE'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
      end
      object TvlMarcasOpciones: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actEliminarMarca
            Default = True
            ImageIndex = 1
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.Images = DmGlobal.ImPop16
        Properties.ViewStyle = vsButtonsOnly
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebAlways
        Width = 95
      end
    end
    object LvlMarcas: TcxGridLevel
      GridView = TvlMarcas
    end
  end
  object GrdLinea: TcxGrid
    Left = 399
    Top = 0
    Width = 401
    Height = 660
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlLinea: TcxGridDBTableView
      PopupMenu = PopLinea
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = DmGlobal.ImLNavegador32
      Navigator.Buttons.First.Enabled = False
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.First.ImageIndex = 0
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Anterior'
      Navigator.Buttons.Prior.ImageIndex = 2
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Siguiente'
      Navigator.Buttons.Next.ImageIndex = 3
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Enabled = False
      Navigator.Buttons.Last.Hint = 'Ultimo'
      Navigator.Buttons.Last.ImageIndex = 5
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Hint = 'Agregar'
      Navigator.Buttons.Insert.ImageIndex = 6
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Hint = 'Agregar'
      Navigator.Buttons.Append.ImageIndex = 6
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Hint = 'Eliminar'
      Navigator.Buttons.Delete.ImageIndex = 13
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Hint = 'Editar'
      Navigator.Buttons.Edit.ImageIndex = 8
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Hint = 'Guardar'
      Navigator.Buttons.Post.ImageIndex = 9
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Hint = 'Cancelar'
      Navigator.Buttons.Cancel.ImageIndex = 12
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Hint = 'Refrescar'
      Navigator.Buttons.Refresh.ImageIndex = 10
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsLinea
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MultiSelect = False
      NewItemRow.InfoText = 'Clic aqui para agregar un item nuevo'
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Appending = True
      OptionsData.DeletingConfirmation = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.Contenido
      Styles.Header = DmGlobal.Titulos
      object TvlLineaMR_CODI: TcxGridDBColumn
        DataBinding.FieldName = 'MR_CODI'
        Visible = False
      end
      object TvlLineaLI_NOMBRE: TcxGridDBColumn
        Caption = 'Linea'
        DataBinding.FieldName = 'LI_NOMBRE'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
      end
      object TvlLineaOpciones: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actEliminarLinea
            Default = True
            ImageIndex = 1
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.Images = DmGlobal.ImPop16
        Properties.ViewStyle = vsButtonsOnly
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebAlways
        Width = 84
      end
    end
    object LvlLinea: TcxGridLevel
      GridView = TvlLinea
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 660
    Width = 800
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object DtsMarcas: TDataSource
    DataSet = CdsMarcas
    Left = 192
    Top = 88
  end
  object QryMarcas: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraVehiculos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MARCAVH')
    UpdateObject = UpdMarcas
    GeneratorField.Field = 'MR_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 256
    Top = 88
    object QryMarcasMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"MARCAVH"."MR_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryMarcasMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
  end
  object UpdMarcas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MR_CODI,'
      '  MR_NOMBRE'
      'from MARCAVH '
      'where'
      '  MR_CODI = :MR_CODI')
    ModifySQL.Strings = (
      'update MARCAVH'
      'set'
      '  MR_NOMBRE = :MR_NOMBRE'
      'where'
      '  MR_CODI = :OLD_MR_CODI')
    InsertSQL.Strings = (
      'insert into MARCAVH'
      '  (MR_CODI, MR_NOMBRE)'
      'values'
      '  (:MR_CODI, :MR_NOMBRE)')
    DeleteSQL.Strings = (
      'delete from MARCAVH'
      'where'
      '  MR_CODI = :OLD_MR_CODI')
    Left = 328
    Top = 88
  end
  object DspMarcas: TDataSetProvider
    DataSet = QryMarcas
    Left = 328
    Top = 152
  end
  object CdsMarcas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMarcas'
    AfterOpen = CdsMarcasAfterOpen
    BeforeInsert = CdsMarcasBeforeInsert
    BeforeEdit = CdsMarcasBeforeEdit
    BeforePost = CdsMarcasBeforePost
    AfterPost = CdsMarcasAfterPost
    AfterCancel = CdsMarcasAfterCancel
    BeforeDelete = CdsMarcasBeforeDelete
    AfterDelete = CdsMarcasAfterPost
    OnNewRecord = CdsMarcasNewRecord
    Left = 264
    Top = 152
    object CdsMarcasMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"MARCAVH"."MR_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsMarcasMR_NOMBRE: TWideStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
  end
  object ActMarcas: TActionManager
    Left = 328
    Top = 216
    StyleName = 'Platform Default'
    object actAgregarMarca: TAction
      Caption = 'Agregar Marca'
      Hint = 'Agregar Marca'
      OnExecute = actAgregarMarcaExecute
    end
    object actEditarMarca: TAction
      Caption = 'Editar Marca'
      Hint = 'Editar Marca'
      OnExecute = actEditarMarcaExecute
    end
    object actEliminarMarca: TAction
      Caption = 'Eliminar Marca'
      Hint = 'Eliminar Marca'
      ImageIndex = 0
      OnExecute = actEliminarMarcaExecute
    end
  end
  object DtsLinea: TDataSource
    DataSet = CdsLinea
    Left = 592
    Top = 88
  end
  object QryLinea: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraVehiculos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from LINEAVH'
      'where MR_CODI = :P_MR_CODI')
    UpdateObject = UpdLinea
    GeneratorField.Field = 'LI_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 656
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MR_CODI'
        ParamType = ptUnknown
        Value = 1
      end>
    object QryLineaLI_CODI: TIntegerField
      FieldName = 'LI_CODI'
      Origin = '"LINEAVH"."LI_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryLineaMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"LINEAVH"."MR_CODI"'
      Required = True
    end
    object QryLineaLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
  end
  object UpdLinea: TIBUpdateSQL
    Left = 728
    Top = 88
  end
  object DspLinea: TDataSetProvider
    DataSet = QryLinea
    Left = 728
    Top = 152
  end
  object CdsLinea: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'MR_CODI'
    MasterFields = 'MR_CODI'
    MasterSource = DtsMarcas
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspLinea'
    AfterOpen = CdsLineaAfterOpen
    BeforeInsert = CdsLineaBeforeInsert
    BeforeEdit = CdsLineaBeforeEdit
    BeforePost = CdsLineaBeforePost
    AfterPost = CdsMarcasAfterPost
    AfterCancel = CdsLineaAfterCancel
    BeforeDelete = CdsLineaBeforeDelete
    AfterDelete = CdsMarcasAfterPost
    OnNewRecord = CdsLineaNewRecord
    Left = 664
    Top = 152
    object CdsLineaLI_CODI: TIntegerField
      FieldName = 'LI_CODI'
    end
    object CdsLineaMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"LINEAVH"."MR_CODI"'
      Required = True
    end
    object CdsLineaLI_NOMBRE: TWideStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
  end
  object ActLinea: TActionManager
    Left = 728
    Top = 216
    StyleName = 'Platform Default'
    object actAgregarLinea: TAction
      Caption = 'Agregar Linea'
      Hint = 'Agregar Linea'
      OnExecute = actAgregarLineaExecute
    end
    object actEditarLinea: TAction
      Caption = 'Editar Linea'
      Hint = 'Editar Linea'
      OnExecute = actEditarLineaExecute
    end
    object actEliminarLinea: TAction
      Caption = 'Eliminar Linea'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarLineaExecute
    end
  end
  object PopMarca: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 264
    Top = 216
    object popAgregar: TMenuItem
      Action = actAgregarMarca
      ImageIndex = 2
    end
    object popEditar: TMenuItem
      Action = actEditarMarca
      ImageIndex = 0
    end
    object popEliminar: TMenuItem
      Action = actEliminarMarca
      ImageIndex = 1
    end
  end
  object PopLinea: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 656
    Top = 216
    object MenuItem1: TMenuItem
      Action = actAgregarLinea
      ImageIndex = 2
    end
    object MenuItem2: TMenuItem
      Action = actEditarLinea
      ImageIndex = 0
    end
    object MenuItem3: TMenuItem
      Action = actEliminarLinea
      ImageIndex = 1
    end
  end
  object TraVehiculos: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 312
  end
end
