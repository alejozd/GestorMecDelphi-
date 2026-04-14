object FrmCargos: TFrmCargos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cargos'
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
  object GrdCargos: TcxGrid
    Left = 0
    Top = 0
    Width = 800
    Height = 660
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlCargos: TcxGridDBTableView
      PopupMenu = PopCargos
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
      Navigator.Buttons.NextPage.Hint = 'Pagina siguiente'
      Navigator.Buttons.NextPage.ImageIndex = 4
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Enabled = False
      Navigator.Buttons.Last.Hint = #218'ltimo'
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
      Navigator.Buttons.Filter.Hint = 'Filtrar'
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsCargos
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
      object TvlCargosCG_CODI: TcxGridDBColumn
        DataBinding.FieldName = 'CG_CODI'
        Visible = False
        IsCaptionAssigned = True
      end
      object TvlCargosCG_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre del Cargo'
        DataBinding.FieldName = 'CG_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 624
      end
      object TvlCargosModificar: TcxGridDBColumn
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
        Width = 159
      end
    end
    object LvlCargos: TcxGridLevel
      GridView = TvlCargos
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
  object QryCargos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraCargos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CARGOS')
    UpdateObject = UpdCargos
    GeneratorField.Field = 'CG_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 648
    Top = 184
    object QryCargosCG_CODI: TIntegerField
      FieldName = 'CG_CODI'
      Origin = '"CARGOS"."CG_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosCG_NOMBRE: TIBStringField
      FieldName = 'CG_NOMBRE'
      Origin = '"CARGOS"."CG_NOMBRE"'
      Required = True
      Size = 50
    end
  end
  object UpdCargos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CG_CODI,'
      '  CG_NOMBRE'
      'from CARGOS '
      'where'
      '  CG_CODI = :CG_CODI')
    ModifySQL.Strings = (
      'update CARGOS'
      'set'
      '  CG_NOMBRE = :CG_NOMBRE'
      'where'
      '  CG_CODI = :OLD_CG_CODI')
    InsertSQL.Strings = (
      'insert into CARGOS'
      '  (CG_NOMBRE)'
      'values'
      '  (:CG_NOMBRE)')
    DeleteSQL.Strings = (
      'delete from CARGOS'
      'where'
      '  CG_CODI = :OLD_CG_CODI')
    Left = 728
    Top = 184
  end
  object CdsCargos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCargos'
    AfterOpen = CdsCargosAfterOpen
    BeforeInsert = CdsCargosBeforeInsert
    BeforeEdit = CdsCargosBeforeEdit
    BeforePost = CdsCargosBeforePost
    AfterPost = CdsCargosAfterPost
    AfterCancel = CdsCargosAfterCancel
    BeforeDelete = CdsCargosBeforeDelete
    AfterDelete = CdsCargosAfterPost
    OnNewRecord = CdsCargosNewRecord
    Left = 656
    Top = 240
    object CdsCargosCG_CODI: TIntegerField
      FieldName = 'CG_CODI'
      Origin = '"CARGOS"."CG_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCargosCG_NOMBRE: TWideStringField
      FieldName = 'CG_NOMBRE'
      Origin = '"CARGOS"."CG_NOMBRE"'
      Required = True
      Size = 50
    end
  end
  object DtsCargos: TDataSource
    DataSet = CdsCargos
    Left = 728
    Top = 240
  end
  object DspCargos: TDataSetProvider
    DataSet = QryCargos
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
  object PopCargos: TPopupMenu
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
  object TraCargos: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 312
  end
end
