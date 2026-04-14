object FrmCiudadesDep: TFrmCiudadesDep
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Ciudades - Departamentos'
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
  object GrdCiudades: TcxGrid
    Left = 399
    Top = 0
    Width = 401
    Height = 660
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlCiudades: TcxGridDBTableView
      PopupMenu = PopCiudades
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
      DataController.DataSource = DtsCiudades
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
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos
      object TvlCiudadesDEP_CODI: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_CODI'
        Visible = False
      end
      object TvlCiudadesCIU_NOMBRE: TcxGridDBColumn
        Caption = 'Ciudad'
        DataBinding.FieldName = 'CIU_NOMBRE'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 303
      end
      object TvlCiudadesCIU_CODIGO_DIAN: TcxGridDBColumn
        DataBinding.FieldName = 'CIU_CODIGO_DIAN'
        Visible = False
      end
      object TvlCiudadesOpciones: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actEliminarCiud
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
    object LvlCiudades: TcxGridLevel
      GridView = TvlCiudades
    end
  end
  object GridDeptos: TcxGrid
    Left = 0
    Top = 0
    Width = 399
    Height = 660
    Align = alLeft
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlDeptos: TcxGridDBTableView
      PopupMenu = PopDeptos
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
      Navigator.Buttons.Cancel.Enabled = False
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
      DataController.DataSource = DtsDeptos
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
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos
      object TvlDeptosDEP_NOMBRE: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'DEP_NOMBRE'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 290
      end
      object TvlDeptosDEP_CODIGO_DIAN: TcxGridDBColumn
        Caption = 'Codigo DIAN'
        DataBinding.FieldName = 'DEP_CODIGO_DIAN'
        Visible = False
      end
      object TvlDeptosOpciones: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actEliminarDepto
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
    object LvlDeptos: TcxGridLevel
      GridView = TvlDeptos
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
  object QryCiudades: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraCiudades
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CIUDADES'
      'where dep_codi = :P_DEP_CODI')
    UpdateObject = UpdCiudades
    GeneratorField.Field = 'CIU_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 656
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DEP_CODI'
        ParamType = ptUnknown
        Value = 1
      end>
    object QryCiudadesCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
      Origin = '"CIUDADES"."CIU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCiudadesDEP_CODI: TIntegerField
      FieldName = 'DEP_CODI'
      Origin = '"CIUDADES"."DEP_CODI"'
    end
    object QryCiudadesCIU_NOMBRE: TIBStringField
      FieldName = 'CIU_NOMBRE'
      Origin = '"CIUDADES"."CIU_NOMBRE"'
      Size = 100
    end
    object QryCiudadesCIU_CODIGO_DIAN: TIBStringField
      FieldName = 'CIU_CODIGO_DIAN'
      Origin = '"CIUDADES"."CIU_CODIGO_DIAN"'
    end
  end
  object UpdCiudades: TIBUpdateSQL
    Left = 728
    Top = 88
  end
  object CdsCiudades: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DEP_CODI'
    MasterFields = 'DEP_CODI'
    MasterSource = DtsDeptos
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCiudades'
    AfterOpen = CdsCiudadesAfterOpen
    BeforeInsert = CdsCiudadesBeforeInsert
    BeforeEdit = CdsCiudadesBeforeEdit
    BeforePost = CdsCiudadesBeforePost
    AfterPost = CdsDeptosAfterPost
    AfterCancel = CdsCiudadesAfterCancel
    BeforeDelete = CdsCiudadesBeforeDelete
    AfterDelete = CdsDeptosAfterPost
    OnNewRecord = CdsCiudadesNewRecord
    Left = 664
    Top = 152
    object CdsCiudadesCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
    end
    object CdsCiudadesDEP_CODI: TIntegerField
      FieldName = 'DEP_CODI'
      Origin = '"CIUDADES"."DEP_CODI"'
    end
    object CdsCiudadesCIU_NOMBRE: TWideStringField
      FieldName = 'CIU_NOMBRE'
      Origin = '"CIUDADES"."CIU_NOMBRE"'
      Size = 100
    end
    object CdsCiudadesCIU_CODIGO_DIAN: TWideStringField
      FieldName = 'CIU_CODIGO_DIAN'
      Origin = '"CIUDADES"."CIU_CODIGO_DIAN"'
    end
  end
  object DspCiudades: TDataSetProvider
    DataSet = QryCiudades
    Left = 728
    Top = 152
  end
  object DtsCiudades: TDataSource
    DataSet = CdsCiudades
    Left = 592
    Top = 88
  end
  object DtsDeptos: TDataSource
    DataSet = CdsDeptos
    Left = 192
    Top = 88
  end
  object QryDeptos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraCiudades
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DEPARTAMENTOS')
    UpdateObject = UpdDeptos
    GeneratorField.Field = 'DEP_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 256
    Top = 88
    object QryDeptosDEP_CODI: TIntegerField
      FieldName = 'DEP_CODI'
      Origin = '"DEPARTAMENTOS"."DEP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryDeptosDEP_NOMBRE: TIBStringField
      FieldName = 'DEP_NOMBRE'
      Origin = '"DEPARTAMENTOS"."DEP_NOMBRE"'
      Size = 100
    end
    object QryDeptosDEP_CODIGO_DIAN: TIBStringField
      FieldName = 'DEP_CODIGO_DIAN'
      Origin = '"DEPARTAMENTOS"."DEP_CODIGO_DIAN"'
    end
  end
  object UpdDeptos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  DEP_CODI,'
      '  DEP_NOMBRE,'
      '  DEP_CODIGO_DIAN'
      'from DEPARTAMENTOS '
      'where'
      '  DEP_CODI = :DEP_CODI')
    ModifySQL.Strings = (
      'update DEPARTAMENTOS'
      'set'
      '  DEP_NOMBRE = :DEP_NOMBRE,'
      '  DEP_CODIGO_DIAN = :DEP_CODIGO_DIAN'
      'where'
      '  DEP_CODI = :OLD_DEP_CODI')
    InsertSQL.Strings = (
      'insert into DEPARTAMENTOS'
      '  (DEP_CODI, DEP_NOMBRE, DEP_CODIGO_DIAN)'
      'values'
      '  (:DEP_CODI, :DEP_NOMBRE, :DEP_CODIGO_DIAN)')
    DeleteSQL.Strings = (
      'delete from DEPARTAMENTOS'
      'where'
      '  DEP_CODI = :OLD_DEP_CODI')
    Left = 328
    Top = 88
  end
  object DspDeptos: TDataSetProvider
    DataSet = QryDeptos
    Left = 328
    Top = 152
  end
  object CdsDeptos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDeptos'
    AfterOpen = CdsDeptosAfterOpen
    BeforeInsert = CdsDeptosBeforeInsert
    BeforeEdit = CdsDeptosBeforeEdit
    BeforePost = CdsDeptosBeforePost
    AfterPost = CdsDeptosAfterPost
    AfterCancel = CdsDeptosAfterCancel
    BeforeDelete = CdsDeptosBeforeDelete
    AfterDelete = CdsDeptosAfterPost
    OnNewRecord = CdsDeptosNewRecord
    Left = 264
    Top = 152
    object CdsDeptosDEP_CODI: TIntegerField
      FieldName = 'DEP_CODI'
      Origin = '"DEPARTAMENTOS"."DEP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsDeptosDEP_NOMBRE: TWideStringField
      FieldName = 'DEP_NOMBRE'
      Origin = '"DEPARTAMENTOS"."DEP_NOMBRE"'
      Size = 100
    end
    object CdsDeptosDEP_CODIGO_DIAN: TWideStringField
      FieldName = 'DEP_CODIGO_DIAN'
      Origin = '"DEPARTAMENTOS"."DEP_CODIGO_DIAN"'
    end
  end
  object ActDeptos: TActionManager
    Left = 328
    Top = 216
    StyleName = 'Platform Default'
    object actAgregarDepto: TAction
      Caption = 'Agregar departamento'
      OnExecute = actAgregarDeptoExecute
    end
    object actEditarDepto: TAction
      Caption = 'Editar departamento'
      OnExecute = actEditarDeptoExecute
    end
    object actEliminarDepto: TAction
      Caption = 'Eliminar departamento'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarDeptoExecute
    end
  end
  object ActCiudades: TActionManager
    Left = 728
    Top = 216
    StyleName = 'Platform Default'
    object actAgregarCiud: TAction
      Caption = 'Agregar ciudad'
      OnExecute = actAgregarCiudExecute
    end
    object actEditarCiud: TAction
      Caption = 'Editar ciudad'
      OnExecute = actEditarCiudExecute
    end
    object actEliminarCiud: TAction
      Caption = 'Eliminar ciudad'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarCiudExecute
    end
  end
  object PopDeptos: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 264
    Top = 216
    object popAgregar: TMenuItem
      Action = actAgregarDepto
      ImageIndex = 2
    end
    object popEditar: TMenuItem
      Action = actEditarDepto
      ImageIndex = 0
    end
    object popEliminar: TMenuItem
      Action = actEliminarDepto
      ImageIndex = 1
    end
  end
  object PopCiudades: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 664
    Top = 216
    object MenuItem1: TMenuItem
      Action = actAgregarCiud
      ImageIndex = 2
    end
    object MenuItem2: TMenuItem
      Action = actEditarCiud
      ImageIndex = 0
    end
    object MenuItem3: TMenuItem
      Action = actEliminarCiud
      ImageIndex = 1
    end
  end
  object TraCiudades: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 280
  end
end
