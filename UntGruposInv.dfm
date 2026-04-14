object FrmGruposInv: TFrmGruposInv
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Grupos Inventario'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 0
      Top = 7
      AutoSize = False
      Caption = 'GRUPOS DE PRODUCTOS'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -32
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Metropolis'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Metropolis'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Metropolis'
      Properties.Alignment.Horz = taCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Height = 44
      Width = 800
      AnchorX = 400
    end
  end
  object GrdGruposInv: TcxGrid
    Left = 0
    Top = 57
    Width = 800
    Height = 623
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlGruposInv: TcxGridDBTableView
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
      DataController.DataSource = DtsGruposInv
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
      object TvlGruposInvGRU_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre del Grupo'
        DataBinding.FieldName = 'GRU_NOMBRE'
        HeaderAlignmentHorz = taCenter
      end
      object TvlGruposInvModificar: TcxGridDBColumn
        Caption = 'Opciones'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 1
            Kind = bkGlyph
            Stretchable = False
          end>
        Properties.Images = DmGlobal.ImPop16
        Properties.ViewStyle = vsButtonsOnly
        HeaderAlignmentHorz = taCenter
        HeaderHint = 'Eliminar'
        Width = 96
      end
    end
    object LvlGruposInv: TcxGridLevel
      GridView = TvlGruposInv
    end
  end
  object QryGruposInv: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraGruposInv
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM GRUPOSINV')
    UpdateObject = UpdGruposInv
    GeneratorField.Field = 'TD_CODI'
    Left = 648
    Top = 184
    object QryGruposInvGRU_CODI: TIntegerField
      FieldName = 'GRU_CODI'
      Origin = '"GRUPOSINV"."GRU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryGruposInvGRU_NOMBRE: TIBStringField
      FieldName = 'GRU_NOMBRE'
      Origin = '"GRUPOSINV"."GRU_NOMBRE"'
      Required = True
      Size = 100
    end
  end
  object UpdGruposInv: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  GRU_CODI,'
      '  GRU_NOMBRE'
      'from GRUPOSINV '
      'where'
      '  GRU_CODI = :GRU_CODI')
    ModifySQL.Strings = (
      'update GRUPOSINV'
      'set'
      '  GRU_NOMBRE = :GRU_NOMBRE'
      'where'
      '  GRU_CODI = :OLD_GRU_CODI')
    InsertSQL.Strings = (
      'insert into GRUPOSINV'
      '  (GRU_NOMBRE)'
      'values'
      '  (:GRU_NOMBRE)')
    DeleteSQL.Strings = (
      'delete from GRUPOSINV'
      'where'
      '  GRU_CODI = :OLD_GRU_CODI')
    Left = 728
    Top = 184
  end
  object CdsGruposInv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGruposInv'
    AfterOpen = CdsGruposInvAfterOpen
    BeforeInsert = CdsGruposInvBeforeInsert
    BeforeEdit = CdsGruposInvBeforeEdit
    BeforePost = CdsGruposInvBeforePost
    AfterPost = CdsGruposInvAfterPost
    AfterCancel = CdsGruposInvAfterCancel
    BeforeDelete = CdsGruposInvBeforeDelete
    AfterDelete = CdsGruposInvAfterDelete
    OnNewRecord = CdsGruposInvNewRecord
    Left = 656
    Top = 240
    object CdsGruposInvGRU_CODI: TIntegerField
      FieldName = 'GRU_CODI'
      Required = True
    end
    object CdsGruposInvGRU_NOMBRE: TWideStringField
      FieldName = 'GRU_NOMBRE'
      Required = True
      Size = 100
    end
  end
  object DtsGruposInv: TDataSource
    DataSet = CdsGruposInv
    Left = 728
    Top = 240
  end
  object DspGruposInv: TDataSetProvider
    DataSet = QryGruposInv
    Left = 576
    Top = 240
  end
  object ActionManager1: TActionManager
    Left = 656
    Top = 312
    StyleName = 'Platform Default'
    object actAgregar: TAction
      Caption = 'Agregar'
    end
    object actEditar: TAction
      Caption = 'Editar'
    end
    object actEliminar: TAction
      Caption = 'Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 0
    end
  end
  object TraGruposInv: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 312
  end
  object PopGruposInv: TPopupMenu
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
end
