object FrmListaProductos: TFrmListaProductos
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Busqueda de Productos'
  ClientHeight = 500
  ClientWidth = 929
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlListaProductos: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 500
    Align = alClient
    TabOrder = 0
    object GridListaProd: TcxGrid
      Left = 1
      Top = 1
      Width = 927
      Height = 498
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object TvlListaProd: TcxGridDBTableView
        OnDblClick = TvlListaProdDblClick
        OnKeyPress = TvlListaProdKeyPress
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Enabled = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        DataController.DataSource = FrmOrdenTrabajo.DtsListaProductos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Cantidad de Productos #'
            Kind = skCount
            FieldName = 'PRO_CODI'
            Column = TvlListaProdPRO_NOMBRE
            DisplayText = 'Cantidad de Productos '
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopup.MultiSelect = False
        NewItemRow.InfoText = 'Clic aqui para agregar un item nuevo'
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.ImmediateEditor = False
        OptionsCustomize.GroupBySorting = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.Footer = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.Content = DmGlobal.ContenidoLetra
        Styles.Header = DmGlobal.Titulos
        object TvlListaProdPRO_NOMBRE: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'PRO_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 259
        end
        object TvlListaProdPRO_CODI: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PRO_CODI'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object TvlListaProdSALDO_REAL: TcxGridDBColumn
          Caption = 'Saldo a la Fecha'
          DataBinding.FieldName = 'SALDO_REAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.;- ,0.'
          OnCustomDrawCell = TvlListaProdSALDO_REALCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object TvlListaProdBOD_NOMBRE: TcxGridDBColumn
          Caption = 'Bodega'
          DataBinding.FieldName = 'BOD_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object TvlListaProdPRO_PRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'PRO_PRECIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_REFERENCIA: TcxGridDBColumn
          Caption = 'Referencia'
          DataBinding.FieldName = 'PRO_REFERENCIA'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_IVA: TcxGridDBColumn
          Caption = 'I.V.A.'
          DataBinding.FieldName = 'PRO_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '% ,0.;-% ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object TvlListaProdPRO_COD_BARRAS: TcxGridDBColumn
          Caption = 'C'#243'digo de Barras'
          DataBinding.FieldName = 'PRO_COD_BARRAS'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_DESCRIPCION: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'PRO_DESCRIPCION'
          HeaderAlignmentHorz = taCenter
          Width = 345
        end
        object TvlListaProdPRO_CLASE: TcxGridDBColumn
          Caption = 'Clase'
          DataBinding.FieldName = 'PRO_CLASE'
          OnGetDisplayText = TvlListaProdPRO_CLASEGetDisplayText
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_MARCA: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'PRO_MARCA'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_PRESENTACION: TcxGridDBColumn
          Caption = 'Presentaci'#243'n'
          DataBinding.FieldName = 'PRO_PRESENTACION'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaProdPRO_MAXIMO: TcxGridDBColumn
          Caption = 'Tope Maximo'
          DataBinding.FieldName = 'PRO_MAXIMO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object TvlListaProdPRO_MINIMO: TcxGridDBColumn
          Caption = 'Tope Minimo'
          DataBinding.FieldName = 'PRO_MINIMO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object TvlListaProdST_CANTIDAD: TcxGridDBColumn
          Caption = 'Existencias'
          DataBinding.FieldName = 'ST_CANTIDAD'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          OnCustomDrawCell = TvlListaProdST_CANTIDADCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
      end
      object LvlListaProd: TcxGridLevel
        GridView = TvlListaProd
      end
    end
    object BtnCancelar: TcxButton
      Left = 872
      Top = 0
      Width = 56
      Height = 49
      Hint = 'Buscar Documentos'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnCancelarClick
    end
  end
end
