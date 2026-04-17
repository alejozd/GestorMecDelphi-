object FrmTiposDocumentos: TFrmTiposDocumentos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Tipos de Documentos'
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
  object GrdTiposDocs: TcxGrid
    Left = 0
    Top = 0
    Width = 800
    Height = 664
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlTiposDocs: TcxGridDBTableView
      PopupMenu = PopTiposDocs
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = DmGlobal.ImLNavegador32
      Navigator.Buttons.First.Enabled = False
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.First.ImageIndex = 0
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.Hint = 'Pagina Anterior'
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Anterior'
      Navigator.Buttons.Prior.ImageIndex = 2
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Siguiente'
      Navigator.Buttons.Next.ImageIndex = 3
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.Hint = 'Pagina siguiente'
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Enabled = False
      Navigator.Buttons.Last.Hint = #218'ltimo'
      Navigator.Buttons.Last.ImageIndex = 5
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Hint = 'Agregar'
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Hint = 'Agregar'
      Navigator.Buttons.Append.ImageIndex = 6
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Hint = 'Borrar'
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
      Navigator.Buttons.Filter.Hint = 'Filtrar'
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsTiposDocs
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
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos
      object TvlTiposDocsTD_ABREVIADO: TcxGridDBColumn
        Caption = 'Tipo De Documento'
        DataBinding.FieldName = 'TD_ABREVIADO'
        HeaderAlignmentHorz = taCenter
        Width = 139
      end
      object TvlTiposDocsTD_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'TD_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 551
      end
      object TvlTiposDocsModificar: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Action = actEliminar
            Default = True
            ImageIndex = 1
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.Images = DmGlobal.ImPop16
        Properties.ViewStyle = vsButtonsOnly
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebAlways
        Width = 96
      end
    end
    object LvlTiposDocs: TcxGridLevel
      GridView = TvlTiposDocs
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 664
    Width = 800
    Height = 16
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object QryTiposDocs: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraTiposDocs
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * FROM TIPDOCUMENTOS')
    UpdateObject = UpdTiposDocs
    GeneratorField.Field = 'TD_CODI'
    Left = 648
    Top = 184
    object QryTiposDocsTD_CODI: TIntegerField
      FieldName = 'TD_CODI'
      Origin = '"TIPDOCUMENTOS"."TD_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTiposDocsTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryTiposDocsTD_NOMBRE: TIBStringField
      FieldName = 'TD_NOMBRE'
      Origin = '"TIPDOCUMENTOS"."TD_NOMBRE"'
      Size = 60
    end
  end
  object UpdTiposDocs: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  TD_CODI,'
      '  TD_ABREVIADO,'
      '  TD_NOMBRE'
      'from TIPDOCUMENTOS '
      'where'
      '  TD_CODI = :TD_CODI')
    ModifySQL.Strings = (
      'update TIPDOCUMENTOS'
      'set'
      '  TD_ABREVIADO = :TD_ABREVIADO,'
      '  TD_NOMBRE = :TD_NOMBRE'
      'where'
      '  TD_CODI = :OLD_TD_CODI')
    InsertSQL.Strings = (
      'insert into TIPDOCUMENTOS'
      '  (TD_ABREVIADO, TD_NOMBRE)'
      'values'
      '  (:TD_ABREVIADO, :TD_NOMBRE)')
    DeleteSQL.Strings = (
      'delete from TIPDOCUMENTOS'
      'where'
      '  TD_CODI = :OLD_TD_CODI')
    Left = 728
    Top = 184
  end
  object CdsTiposDocs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTiposDocs'
    AfterOpen = CdsTiposDocsAfterOpen
    BeforeInsert = CdsTiposDocsBeforeInsert
    BeforeEdit = CdsTiposDocsBeforeEdit
    BeforePost = CdsTiposDocsBeforePost
    AfterPost = CdsTiposDocsAfterPost
    AfterCancel = CdsTiposDocsAfterCancel
    BeforeDelete = CdsTiposDocsBeforeDelete
    AfterDelete = CdsTiposDocsAfterPost
    OnNewRecord = CdsTiposDocsNewRecord
    Left = 656
    Top = 240
    object CdsTiposDocsTD_CODI: TIntegerField
      FieldName = 'TD_CODI'
      Origin = '"TIPDOCUMENTOS"."TD_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsTiposDocsTD_ABREVIADO: TWideStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object CdsTiposDocsTD_NOMBRE: TWideStringField
      FieldName = 'TD_NOMBRE'
      Origin = '"TIPDOCUMENTOS"."TD_NOMBRE"'
      Size = 60
    end
  end
  object DtsTiposDocs: TDataSource
    DataSet = CdsTiposDocs
    Left = 728
    Top = 240
  end
  object DspTiposDocs: TDataSetProvider
    DataSet = QryTiposDocs
    Left = 576
    Top = 240
  end
  object ActionManager1: TActionManager
    Left = 656
    Top = 312
    StyleName = 'Platform Default'
    object actAgregar: TAction
      Caption = 'Agregar'
      OnExecute = actAgregarExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      OnExecute = actEditarExecute
    end
    object actEliminar: TAction
      Caption = 'Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarExecute
    end
  end
  object PopTiposDocs: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 656
    Top = 384
    object popAgregar: TMenuItem
      Action = actAgregar
      ImageIndex = 2
    end
    object popEditar: TMenuItem
      Action = actEditar
      ImageIndex = 0
    end
    object popEliminar: TMenuItem
      Action = actEliminar
      ImageIndex = 1
    end
  end
  object TraTiposDocs: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 312
  end
end
