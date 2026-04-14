object FrmHistorialCli: TFrmHistorialCli
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Historial Cliente'
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 97
    Align = alTop
    TabOrder = 0
    object GrbBusqueda: TcxGroupBox
      Left = 10
      Top = 6
      Caption = 'Busqueda'
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      TabOrder = 0
      Height = 79
      Width = 423
      object EdtBusqueda: TcxTextEdit
        Left = 6
        Top = 17
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = EdtBusquedaKeyPress
        Width = 324
      end
      object BtnBuscar: TcxButton
        Left = 336
        Top = 29
        Width = 80
        Height = 30
        Caption = 'Buscar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        OptionsImage.ImageIndex = 5
        OptionsImage.Images = DmGlobal.ImlBotones
        TabOrder = 1
        OnClick = BtnBuscarClick
      end
      object RgCriterio: TcxRadioGroup
        Left = 6
        Top = 45
        Alignment = alCenterCenter
        Ctl3D = True
        ParentCtl3D = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Placa'
          end
          item
            Caption = 'Identificaci'#243'n'
          end>
        ItemIndex = 0
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 2
        Height = 25
        Width = 324
      end
    end
  end
  object pnlIzquierda: TPanel
    Left = 0
    Top = 97
    Width = 433
    Height = 583
    Align = alLeft
    TabOrder = 1
    object pnlDatosCli: TPanel
      Left = 1
      Top = 1
      Width = 431
      Height = 168
      Align = alTop
      TabOrder = 0
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 119
        Top = 9
        DataBinding.DataField = 'NUMDOC'
        DataBinding.DataSource = DtsCliente
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 68
        Top = 36
        DataBinding.DataField = 'NOMBRE'
        DataBinding.DataSource = DtsCliente
        TabOrder = 1
        Width = 358
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 37
        Caption = 'Nombre:'
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 68
        Top = 9
        DataBinding.DataField = 'TDOC'
        DataBinding.DataSource = DtsCliente
        TabOrder = 3
        Width = 45
      end
      object cxLabel8: TcxLabel
        Left = 7
        Top = 10
        Caption = 'Documento'
      end
      object GridPlacas: TcxGrid
        Left = 1
        Top = 63
        Width = 429
        Height = 104
        Align = alBottom
        TabOrder = 5
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlPlacas: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DmGlobal.ImLNavegador16
          Navigator.Buttons.First.Enabled = False
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Enabled = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Enabled = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Enabled = False
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
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = DtsCliente
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.Content = DmGlobal.ContenidoLetra
          Styles.Header = DmGlobal.Titulos
          object TvlPlacasTDOC: TcxGridDBColumn
            Caption = 'T. Doc'
            DataBinding.FieldName = 'TDOC'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object TvlPlacasNUMDOC: TcxGridDBColumn
            Caption = 'Num. Doc.'
            DataBinding.FieldName = 'NUMDOC'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object TvlPlacasNOMBRE: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'NOMBRE'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object TvlPlacasPLACA: TcxGridDBColumn
            Caption = 'Placa'
            DataBinding.FieldName = 'PLACA'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object TvlPlacasMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'MARCA'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object TvlPlacasLINEA: TcxGridDBColumn
            Caption = 'Linea'
            DataBinding.FieldName = 'LINEA'
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object TvlPlacasCOLOR: TcxGridDBColumn
            Caption = 'Color'
            DataBinding.FieldName = 'COLOR'
            HeaderAlignmentHorz = taCenter
            Width = 68
          end
          object TvlPlacasMODELO: TcxGridDBColumn
            Caption = 'Modelo'
            DataBinding.FieldName = 'MODELO'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
        end
        object LvlPlacas: TcxGridLevel
          GridView = TvlPlacas
        end
      end
    end
    object pnlLista: TPanel
      Left = 1
      Top = 169
      Width = 431
      Height = 413
      Align = alClient
      TabOrder = 1
      object GridListaServ: TcxGrid
        Left = 1
        Top = 24
        Width = 429
        Height = 388
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlListaServ: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DmGlobal.ImLNavegador16
          Navigator.Buttons.First.Enabled = False
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Enabled = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Enabled = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Enabled = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Enabled = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Enabled = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Enabled = False
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
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = DtsListaServ
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.Content = DmGlobal.ContenidoLetra
          Styles.Header = DmGlobal.Titulos
          object TvlListaServFECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'FECHA'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.ShowToday = False
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebNever
            Width = 74
          end
          object TvlListaServCLASE: TcxGridDBColumn
            Caption = 'Clase'
            DataBinding.FieldName = 'CLASE'
            OnGetDisplayText = TvlListaServCLASEGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object TvlListaServNUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object TvlListaServOBSERVACION: TcxGridDBColumn
            Caption = 'Observaciones'
            DataBinding.FieldName = 'OBSERVACION'
            PropertiesClassName = 'TcxMemoProperties'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object TvlListaServTOTAL: TcxGridDBColumn
            Caption = 'Vr. Total'
            DataBinding.FieldName = 'TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 88
          end
        end
        object LvlListaServ: TcxGridLevel
          GridView = TvlListaServ
        end
      end
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Lista de Servicios realizados:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object pnlDerecha: TPanel
    Left = 433
    Top = 97
    Width = 367
    Height = 583
    Align = alClient
    TabOrder = 2
    object GridDetalle: TcxGrid
      Left = 1
      Top = 1
      Width = 365
      Height = 293
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object TvlDetalle: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = DmGlobal.ImLNavegador16
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Enabled = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Enabled = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Enabled = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Enabled = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Enabled = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
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
        Navigator.Buttons.Refresh.Enabled = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        DataController.DataSource = DtsDetalle
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
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.Content = DmGlobal.Contenido
        Styles.Header = DmGlobal.TitulosDetalle
        object TvlDetallePRODUCTO: TcxGridDBColumn
          Caption = 'Producto'
          DataBinding.FieldName = 'PRODUCTO'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object TvlDetalleREFERENCIA: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'REFERENCIA'
          Visible = False
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
        object TvlDetalleCANT: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'CANT'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object TvlDetallePRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRECIO'
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object TvlDetalleVRTOTAL: TcxGridDBColumn
          Caption = 'Vr. Total'
          DataBinding.FieldName = 'VRTOTAL'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object TvlDetalleEMPLEADO: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'EMPLEADO'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
      end
      object LvlDetalle: TcxGridLevel
        GridView = TvlDetalle
      end
    end
    object pnlGrafico: TPanel
      Left = 1
      Top = 302
      Width = 365
      Height = 280
      Align = alBottom
      TabOrder = 1
      object GridGrafico: TcxGrid
        Left = 1
        Top = 1
        Width = 363
        Height = 278
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object ChGrafico: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'PRODUCTO'
          Categories.DisplayText = 'Cantidad'
          Categories.SortOrder = soDescending
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DtsGrafico
          DiagramPie.Active = True
          DiagramPie.Legend.Alignment = cpaStart
          DiagramPie.Legend.Orientation = cpoVertical
          DiagramPie.Legend.Position = cppLeft
          DiagramPie.SeriesCaptions = False
          DiagramPie.Styles.Legend = DmGlobal.Titulos8
          DiagramPie.Styles.ValueCaptions = DmGlobal.Titulos
          DiagramPie.Styles.SeriesSiteCaptions = DmGlobal.Titulos
          DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
          DiagramPie.Values.CaptionItems = [pdvciValue, pdvciPercentage]
          DiagramPie.Values.PercentageCaptionFormat = ' ,0.%;- ,0.%'
          object ChGraficoSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'CANTIDAD'
            DisplayText = 'Productos'
            SortOrder = soDescending
          end
        end
        object LvlGrafico: TcxGridLevel
          GridView = ChGrafico
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 294
      Width = 365
      Height = 8
      AlignSplitter = salBottom
      AutoSnap = True
      ResizeUpdate = True
      Color = clBtnFace
      ParentColor = False
    end
  end
  object QryCliente: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    AfterScroll = QryClienteAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT TD.td_abreviado TDOC, CL.CLI_NUMDOC NUMDOC, CL.cli_nombre' +
        ' NOMBRE, MV.mr_nombre MARCA,'
      
        'LV.li_nombre LINEA, V.vxc_placa PLACA, V.vxc_color COLOR, V.vxc_' +
        'modelo MODELO'
      'FROM vhxcliente V'
      'INNER JOIN marcavh MV ON MV.mr_codi = V.mr_codi'
      'INNER JOIN lineavh LV ON LV.li_codi = V.li_codi'
      'INNER JOIN clientes CL ON CL.cli_codi = V.cli_codi'
      'INNER JOIN tipdocumentos TD ON TD.td_codi = CL.cod_tipdo'
      'WHERE V.vxc_placa =:TEXTO')
    Left = 457
    Top = 10
    ParamData = <
      item
        DataType = ftString
        Name = 'TEXTO'
        ParamType = ptInput
      end>
    object QryClienteTDOC: TIBStringField
      FieldName = 'TDOC'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryClienteNUMDOC: TIBStringField
      FieldName = 'NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      Required = True
    end
    object QryClienteNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryClienteMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryClienteLINEA: TIBStringField
      FieldName = 'LINEA'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object QryClientePLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      Required = True
      Size = 10
    end
    object QryClienteCOLOR: TIBStringField
      FieldName = 'COLOR'
      Origin = '"VHXCLIENTE"."VXC_COLOR"'
      Required = True
    end
    object QryClienteMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"VHXCLIENTE"."VXC_MODELO"'
      Required = True
    end
  end
  object DtsCliente: TDataSource
    DataSet = QryCliente
    Left = 512
    Top = 10
  end
  object QryListaServ: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    AfterScroll = QryListaServAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT M.otm_fecha FECHA, M.otm_clase_doc CLASE, M.otm_nume NUME' +
        'RO,'
      'M.otm_codi otm_codi,'
      'M.otm_observ OBSERVACION, M.otm_vr_total TOTAL'
      'FROM ordentim M'
      'INNER JOIN clientes C ON C.cli_codi = M.cli_codi'
      'LEFT JOIN vhxcliente V ON V.vxc_codi = M.vxc_codi'
      '   AND V.cli_codi = C.cli_codi'
      'WHERE C.cli_numdoc = :NUMDOC'
      'AND V.vxc_placa = :PLACA'
      'ORDER BY M.otm_fecha DESC')
    Left = 576
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NUMDOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PLACA'
        ParamType = ptUnknown
      end>
    object QryListaServFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryListaServCLASE: TSmallintField
      FieldName = 'CLASE'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object QryListaServNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object QryListaServOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListaServOBSERVACION: TIBStringField
      FieldName = 'OBSERVACION'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object QryListaServTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
  end
  object DtsListaServ: TDataSource
    DataSet = QryListaServ
    Left = 632
    Top = 6
  end
  object QryDetalle: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.pro_nombre PRODUCTO,  p.pro_referencia REFERENCIA, '
      'D.otd_cant CANT, D.otd_precio PRECIO, D.otd_vr_total VRTOTAL,'
      'E.emp_nombre EMPLEADO'
      'FROM ordentid D'
      'INNER JOIN ordentim M ON M.otm_codi = D.otm_codi'
      'INNER JOIN productos P ON P.pro_codi = D.pr_codi'
      'INNER JOIN empleados E ON E.emp_codi = D.emp_codi'
      'WHERE M.otm_codi = :OTM_CODI')
    Left = 688
    Top = 11
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OTM_CODI'
        ParamType = ptInput
      end>
    object QryDetallePRODUCTO: TIBStringField
      FieldName = 'PRODUCTO'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryDetalleREFERENCIA: TIBStringField
      FieldName = 'REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
    object QryDetalleCANT: TIBBCDField
      FieldName = 'CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object QryDetallePRECIO: TIBBCDField
      FieldName = 'PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryDetalleVRTOTAL: TIBBCDField
      FieldName = 'VRTOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryDetalleEMPLEADO: TIBStringField
      FieldName = 'EMPLEADO'
      Origin = '"EMPLEADOS"."EMP_NOMBRE"'
      Required = True
      Size = 60
    end
  end
  object DtsDetalle: TDataSource
    DataSet = QryDetalle
    Left = 744
    Top = 14
  end
  object QryGrafico: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.pro_nombre PRODUCTO, COUNT(P.pro_nombre) CANTIDAD'
      'FROM ordentid D'
      'INNER JOIN ordentim M ON M.otm_codi = D.otm_codi'
      'INNER JOIN clientes C ON C.cli_codi = M.cli_codi'
      'INNER JOIN productos P ON P.pro_codi = D.pr_codi'
      'LEFT JOIN vhxcliente V ON V.vxc_codi = M.vxc_codi'
      '   AND V.cli_codi = C.cli_codi'
      'WHERE C.cli_numdoc = '#39'101849'#39
      'AND V.vxc_placa = '#39'KLW439'#39
      'GROUP BY P.pro_nombre'
      'order by cantidad desc')
    Left = 464
    Top = 59
    object QryGraficoPRODUCTO: TIBStringField
      FieldName = 'PRODUCTO'
      ProviderFlags = []
      Size = 50
    end
    object QryGraficoCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      ProviderFlags = []
    end
  end
  object DtsGrafico: TDataSource
    DataSet = QryGrafico
    Left = 520
    Top = 62
  end
  object popGrdListSrv: TcxGridPopupMenu
    Grid = GridListaServ
    PopupMenus = <>
    Left = 576
    Top = 64
  end
  object popGrdDetalle: TcxGridPopupMenu
    Grid = GridDetalle
    PopupMenus = <>
    Left = 640
    Top = 64
  end
  object popGridPie: TcxGridPopupMenu
    Grid = GridGrafico
    PopupMenus = <>
    Left = 720
    Top = 64
  end
end
