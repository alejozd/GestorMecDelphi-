object FrmBodegas: TFrmBodegas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Bodegas'
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
      Top = 6
      AutoSize = False
      Caption = 'BODEGAS'
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
  object GridBodegas: TcxGrid
    Left = 0
    Top = 57
    Width = 800
    Height = 603
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LondonLiquidSky'
    object TvlBodegas: TcxGridDBTableView
      PopupMenu = PopBodegas
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = DmGlobal.ImLNavegador32
      Navigator.Buttons.First.Enabled = False
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.First.ImageIndex = 0
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Enabled = False
      Navigator.Buttons.PriorPage.ImageIndex = 1
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Anterior'
      Navigator.Buttons.Prior.ImageIndex = 2
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Siguiente'
      Navigator.Buttons.Next.ImageIndex = 3
      Navigator.Buttons.NextPage.Enabled = False
      Navigator.Buttons.NextPage.ImageIndex = 4
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
      Navigator.Buttons.Filter.ImageIndex = 11
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsBodegas
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
      object TvlBodegasBOD_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre Bodega'
        DataBinding.FieldName = 'BOD_NOMBRE'
        HeaderAlignmentHorz = taCenter
      end
      object TvlBodegasBOD_UBICACION: TcxGridDBColumn
        Caption = 'Ubicaci'#243'n'
        DataBinding.FieldName = 'BOD_UBICACION'
        HeaderAlignmentHorz = taCenter
      end
      object TvlBodegasOpciones: TcxGridDBColumn
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
        Width = 95
      end
    end
    object LvlBodegas: TcxGridLevel
      GridView = TvlBodegas
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
  object QryBodegas: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraBodegas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM BODEGAS')
    UpdateObject = UpdBodegas
    GeneratorField.Field = 'BOD_CODI'
    GeneratorField.Generator = 'GEN_BODEGA'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 648
    Top = 184
    object QryBodegasBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"BODEGAS"."BOD_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryBodegasBOD_NOMBRE: TIBStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryBodegasBOD_UBICACION: TIBStringField
      FieldName = 'BOD_UBICACION'
      Origin = '"BODEGAS"."BOD_UBICACION"'
      Size = 50
    end
  end
  object UpdBodegas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  BOD_CODI,'
      '  BOD_NOMBRE,'
      '  BOD_UBICACION'
      'from BODEGAS '
      'where'
      '  BOD_CODI = :BOD_CODI')
    ModifySQL.Strings = (
      'update BODEGAS'
      'set'
      '  BOD_NOMBRE = :BOD_NOMBRE,'
      '  BOD_UBICACION = :BOD_UBICACION'
      'where'
      '  BOD_CODI = :OLD_BOD_CODI')
    InsertSQL.Strings = (
      'insert into BODEGAS'
      '  (BOD_NOMBRE, BOD_UBICACION)'
      'values'
      '  (:BOD_NOMBRE, :BOD_UBICACION)')
    DeleteSQL.Strings = (
      'delete from BODEGAS'
      'where'
      '  BOD_CODI = :OLD_BOD_CODI')
    Left = 728
    Top = 184
  end
  object CdsBodegas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBodegas'
    AfterOpen = CdsBodegasAfterOpen
    BeforeInsert = CdsBodegasBeforeInsert
    BeforeEdit = CdsBodegasBeforeEdit
    BeforePost = CdsBodegasBeforePost
    AfterPost = CdsBodegasAfterPost
    AfterCancel = CdsBodegasAfterCancel
    BeforeDelete = CdsBodegasBeforeDelete
    AfterDelete = CdsBodegasAfterPost
    OnNewRecord = CdsBodegasNewRecord
    Left = 656
    Top = 240
    object CdsBodegasBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"BODEGAS"."BOD_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsBodegasBOD_NOMBRE: TWideStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
    object CdsBodegasBOD_UBICACION: TWideStringField
      FieldName = 'BOD_UBICACION'
      Origin = '"BODEGAS"."BOD_UBICACION"'
      Size = 50
    end
  end
  object DspBodegas: TDataSetProvider
    DataSet = QryBodegas
    Left = 576
    Top = 240
  end
  object DtsBodegas: TDataSource
    DataSet = CdsBodegas
    Left = 728
    Top = 240
  end
  object ActBodegas: TActionManager
    Left = 656
    Top = 312
    StyleName = 'Platform Default'
    object actEliminar: TAction
      Caption = 'Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarExecute
    end
    object actAgregar: TAction
      Caption = 'Agregar'
      OnExecute = actAgregarExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      OnExecute = actEditarExecute
    end
  end
  object PopBodegas: TPopupMenu
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
  object TraBodegas: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 728
    Top = 312
  end
end
