object FrmProductos: TFrmProductos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Productos'
  ClientHeight = 680
  ClientWidth = 839
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
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 839
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      AutoSize = False
      Caption = 'PRODUCTOS     '
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
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Height = 71
      Width = 837
      AnchorX = 838
      AnchorY = 37
    end
    object BtnGuardar: TcxButton
      Left = 72
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Guardar'
      Caption = 'Guardar'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      OnClick = BtnGuardarClick
    end
    object BtnCancelar: TcxButton
      Left = 183
      Top = 4
      Width = 48
      Height = 65
      Caption = 'Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnNuevo: TcxButton
      Left = 18
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Nuevo'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Nuevo'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnNuevoClick
    end
    object BtnEliminar: TcxButton
      Left = 239
      Top = 4
      Width = 48
      Height = 65
      Caption = 'Eliminar'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      OnClick = BtnEliminarClick
    end
    object BtnModificar: TcxButton
      Left = 127
      Top = 4
      Width = 48
      Height = 65
      Caption = 'Editar'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      OnClick = BtnModificarClick
    end
    object BtnListado: TcxButton
      Left = 318
      Top = 4
      Width = 48
      Height = 65
      Caption = 'Listado'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Seven'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      OnClick = BtnListadoClick
    end
  end
  object PageProductos: TcxPageControl
    Left = 0
    Top = 73
    Width = 839
    Height = 607
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TbsDatosPro
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 603
    ClientRectLeft = 4
    ClientRectRight = 835
    ClientRectTop = 4
    object TbsDatosPro: TcxTabSheet
      Caption = 'TbsDatosPro'
      ImageIndex = 0
      object pnlDatosCli: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 320
        Align = alTop
        TabOrder = 0
        object GrbDtBasicos: TcxGroupBox
          Left = 8
          Top = 92
          Caption = 'Datos b'#225'sicos'
          Enabled = False
          TabOrder = 0
          Height = 221
          Width = 433
          object Label11: TLabel
            Left = 8
            Top = 18
            Width = 83
            Height = 13
            Caption = 'Nombre Producto'
          end
          object Label3: TLabel
            Left = 8
            Top = 69
            Width = 52
            Height = 13
            Caption = 'Referencia'
          end
          object Label5: TLabel
            Left = 8
            Top = 120
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label1: TLabel
            Left = 8
            Top = 168
            Width = 82
            Height = 13
            Caption = 'C'#243'digo de barras'
          end
          object EdtReferencia: TcxDBTextEdit
            Left = 8
            Top = 88
            DataBinding.DataField = 'PRO_REFERENCIA'
            DataBinding.DataSource = DtsProductos
            TabOrder = 1
            Width = 416
          end
          object EdtDescripcion: TcxDBTextEdit
            Left = 8
            Top = 136
            DataBinding.DataField = 'PRO_DESCRIPCION'
            DataBinding.DataSource = DtsProductos
            TabOrder = 2
            Width = 416
          end
          object EdtNombrePro: TcxDBTextEdit
            Left = 8
            Top = 37
            DataBinding.DataField = 'PRO_NOMBRE'
            DataBinding.DataSource = DtsProductos
            TabOrder = 0
            Width = 416
          end
          object EdtCodBarras: TcxDBTextEdit
            Left = 8
            Top = 184
            DataBinding.DataField = 'PRO_COD_BARRAS'
            DataBinding.DataSource = DtsProductos
            TabOrder = 3
            Width = 416
          end
        end
        object GrbDtContacto: TcxGroupBox
          Left = 447
          Top = 56
          Caption = 'Datos Adicionales'
          Enabled = False
          TabOrder = 1
          Height = 209
          Width = 337
          object Label10: TLabel
            Left = 168
            Top = 117
            Width = 63
            Height = 13
            Caption = 'Tope M'#225'ximo'
            FocusControl = EdtTopeMinimo
          end
          object Label4: TLabel
            Left = 5
            Top = 71
            Width = 29
            Height = 13
            Caption = 'Precio'
          end
          object Label6: TLabel
            Left = 168
            Top = 17
            Width = 29
            Height = 13
            Caption = 'Grupo'
          end
          object Label7: TLabel
            Left = 5
            Top = 117
            Width = 59
            Height = 13
            Caption = 'Tope Minimo'
          end
          object Label2: TLabel
            Left = 168
            Top = 71
            Width = 87
            Height = 13
            Caption = 'Porcentaje de IVA'
          end
          object Label8: TLabel
            Left = 5
            Top = 17
            Width = 26
            Height = 13
            Caption = 'Clase'
          end
          object Label9: TLabel
            Left = 6
            Top = 162
            Width = 29
            Height = 13
            Caption = 'Marca'
            FocusControl = EdtMarca
          end
          object Label12: TLabel
            Left = 168
            Top = 162
            Width = 62
            Height = 13
            Caption = 'Presentaci'#243'n'
            FocusControl = EdtPresentacion
          end
          object EdtTopeMaximo: TcxDBTextEdit
            Left = 168
            Top = 136
            DataBinding.DataField = 'PRO_MAXIMO'
            DataBinding.DataSource = DtsProductos
            TabOrder = 5
            OnKeyPress = EdtPrecioKeyPress
            Width = 153
          end
          object EdtTopeMinimo: TcxDBTextEdit
            Left = 5
            Top = 136
            DataBinding.DataField = 'PRO_MINIMO'
            DataBinding.DataSource = DtsProductos
            TabOrder = 4
            OnKeyPress = EdtPrecioKeyPress
            Width = 148
          end
          object CedtPrecioPro: TcxDBCurrencyEdit
            Left = 5
            Top = 90
            Hint = 'Precio con IVA incluido'
            DataBinding.DataField = 'PRO_PRECIO'
            DataBinding.DataSource = DtsProductos
            TabOrder = 2
            OnKeyPress = EdtPrecioKeyPress
            Width = 148
          end
          object EdtIVA: TcxDBTextEdit
            Left = 168
            Top = 90
            DataBinding.DataField = 'PRO_IVA'
            DataBinding.DataSource = DtsProductos
            TabOrder = 3
            OnKeyPress = EdtPrecioKeyPress
            Width = 153
          end
          object RgrClasePro: TcxDBRadioGroup
            Left = 5
            Top = 37
            Alignment = alCenterCenter
            DataBinding.DataField = 'PRO_CLASE'
            DataBinding.DataSource = DtsProductos
            Properties.Columns = 2
            Properties.DefaultValue = 0
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Caption = 'Producto'
                Value = 0
              end
              item
                Caption = 'Servicio'
                Value = 1
              end>
            Properties.OnChange = RgrClaseProPropertiesChange
            TabOrder = 0
            Height = 21
            Width = 148
          end
          object EdtMarca: TcxDBTextEdit
            Left = 6
            Top = 178
            DataBinding.DataField = 'PRO_MARCA'
            DataBinding.DataSource = DtsProductos
            TabOrder = 6
            Width = 147
          end
          object EdtPresentacion: TcxDBTextEdit
            Left = 168
            Top = 178
            DataBinding.DataField = 'PRO_PRESENTACION'
            DataBinding.DataSource = DtsProductos
            TabOrder = 7
            Width = 153
          end
          object DblGrupoInv: TcxDBLookupComboBox
            Left = 168
            Top = 37
            DataBinding.DataField = 'GRU_CODI'
            DataBinding.DataSource = DtsProductos
            Properties.KeyFieldNames = 'GRU_CODI'
            Properties.ListColumns = <
              item
                Caption = 'Grupo'
                HeaderAlignment = taCenter
                SortOrder = soAscending
                FieldName = 'GRU_NOMBRE'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = DtsGrupos
            TabOrder = 1
            Width = 153
          end
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 447
          Top = 13
          Width = 332
          Height = 40
          Buttons.CustomButtons = <>
          Buttons.Images = DmGlobal.ImLNavegador32
          Buttons.First.Hint = 'Inicio'
          Buttons.First.ImageIndex = 0
          Buttons.PriorPage.Enabled = False
          Buttons.PriorPage.Hint = 'Pag Anterior'
          Buttons.PriorPage.ImageIndex = 1
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Hint = 'Anterior'
          Buttons.Prior.ImageIndex = 2
          Buttons.Next.Hint = 'Siguiente'
          Buttons.Next.ImageIndex = 3
          Buttons.NextPage.Enabled = False
          Buttons.NextPage.Hint = 'Pag Siguiente'
          Buttons.NextPage.ImageIndex = 4
          Buttons.NextPage.Visible = False
          Buttons.Last.Hint = #218'ltimo'
          Buttons.Last.ImageIndex = 5
          Buttons.Insert.Visible = False
          Buttons.Delete.Visible = False
          Buttons.Edit.Hint = 'Editar'
          Buttons.Edit.Visible = False
          Buttons.Post.Hint = 'Aplicar'
          Buttons.Post.ImageIndex = 9
          Buttons.Post.Visible = False
          Buttons.Cancel.Visible = False
          Buttons.Refresh.Hint = 'Refrescar'
          Buttons.Refresh.ImageIndex = 10
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DtsProductos
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
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
          TabOrder = 3
          Height = 79
          Width = 431
          object RgCriterio: TcxRadioGroup
            Left = 6
            Top = 45
            Alignment = alCenterCenter
            Ctl3D = True
            ParentCtl3D = False
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'Nombre'
              end
              item
                Caption = 'Referencia'
              end
              item
                Caption = 'Cod. Barras'
              end>
            ItemIndex = 0
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Lilian'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Lilian'
            TabOrder = 0
            Height = 25
            Width = 416
          end
          object EdtBusqueda: TcxButtonEdit
            Left = 6
            Top = 15
            Properties.Buttons = <
              item
                Caption = 'Buscar'
                Default = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000002000000070000
                  000B0000000D00000010000000100000000F0000000E0000000A000000000000
                  000000000000000000000000000000000000000000000000000615513AA51A64
                  46D3186446DC1A724EFF166C49FF105438DD0E4C33D6093824AD000000000000
                  0000000000000000000000000000000000000000000000000007298D68FA6CCB
                  ADFF66C8A8FF4DBD98FF30A97BFF28986EFF379F79FF156545FA000000020000
                  000A000000160000001B000000170000000B00000002000000041646337D3396
                  72F65DBB9CFF71CBB0FF4FB794FF3AA17CFF237B5BF60D3626820000000F2616
                  1072583424D8693D2AFF4D2C1FD91D110B75000000130000000A4539357B877C
                  73E6558674FF3A7086FF346780FF1B503FBC0309072300000005291A136DA380
                  70FFD4C5BDFFEDE5E1FFCFBEB7FF907163FF1E120C792C1C166AA48577FFD9D1
                  CDFF6884A6FF7DA4CDFF588BC1FF26436AE40000001C00000000734937DEE3D7
                  D1FFCEAE9EFFAF7957FFD0B39EFFD7C9C3FF533123E177503FDBEAE3E0FFCEC0
                  B8FF577DB0FFBDE0F5FF8BC2EBFF345D96FF01030535000000038E5A47FBF8F6
                  F4FFAE725BFFE7AF66FFB27F5EFFF0EBE8FF704533FF9A6B55FFF6F5F4FF4C61
                  89FF5C80B0FFCAE8F6FF94C6E9FF375D95FF0F2346B00000000990604DF8F1E8
                  E4FFD2B0A5FFAA6C53FFD4B6A7FFCDC0BAFF6D402EFF80513DFFF2EDEAFF2958
                  98FF4F7CB1FF517CAFFF2C5088FF325D98FF183871F40000000B583C31A2CAAF
                  A3FFF7F2EEFFFDFCFBFFEAE0DAFF9E847AFF744634FF855944FFF0E8E3FF3D73
                  B2FF6C9ED1FF5C8CC1FF76A5D3FF5385BEFF1C427DF7000000070805041D9F72
                  5DF8E8DBD4FFE6D7CEFFCDB7AAFF8B6B5EFF7A4A39FF8B5F4BFFF2E8E3FFBAC7
                  D8FF5D8FC6FF4280C2FF3375BCFF234F84CE0A192D5A00000003000000076047
                  3BA4D0B7ADFFEEE3DFFFD5C1B7FF93766CFF7F513EFF926550FFEFE4DEFFF1E9
                  E6FFDCD1CBFFCAB8B0FF8C7971BA000000070000000200000000000000022219
                  1541B89383FFF3EBE8FFD9C9C2FFA99389FFA37764FFB48B76FFF0E7E3FFEADE
                  D9FFBDA79FFFA67D6CFF21191539000000010000000000000000000000000000
                  0007846554C6DDCCC4FFE6DCD8FFC2A99EFFA57D68F9B38E79F8E0D1C9FFE9DF
                  DAFFBCA497FF846555C200000003000000000000000000000000000000000000
                  0002130F0D237D6152B7AF8673FA7B6050B9130E0C2814100E20836558B3B68F
                  79F9806455B3130F0D1E00000001000000000000000000000000000000000000
                  0000000000010000000400000006000000050000000200000000000000010000
                  0001000000010000000000000000000000000000000000000000}
                Hint = 'Buscar'
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.ClickKey = 13
            Properties.OnButtonClick = EdtBusquedaPropertiesButtonClick
            TabOrder = 1
            Width = 416
          end
        end
      end
      object pnlProductos: TPanel
        Left = 0
        Top = 320
        Width = 831
        Height = 279
        Align = alClient
        TabOrder = 1
        object GridProductos: TcxGrid
          Left = 1
          Top = 1
          Width = 829
          Height = 277
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvlProductos: TcxGridDBTableView
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
            DataController.DataSource = DtsProductos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Productos =  #'
                Kind = skCount
                FieldName = 'PRO_CODI'
                Column = TvlProductosPRO_NOMBRE
                DisplayText = 'Total art'#237'culos'
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
            OptionsCustomize.ColumnMoving = False
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.DeletingConfirmation = False
            OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.Header = DmGlobal.Titulos
            object TvlProductosPRO_NOMBRE: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'PRO_NOMBRE'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 183
            end
            object TvlProductosPRO_REFERENCIA: TcxGridDBColumn
              Caption = 'Referencia'
              DataBinding.FieldName = 'PRO_REFERENCIA'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 149
            end
            object TvlProductosPRO_DESCRIPCION: TcxGridDBColumn
              Caption = 'Descripci'#243'n'
              DataBinding.FieldName = 'PRO_DESCRIPCION'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 245
            end
            object TvlProductosPRO_COD_BARRAS: TcxGridDBColumn
              DataBinding.FieldName = 'PRO_COD_BARRAS'
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object TvlProductosPRO_PRECIO: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'PRO_PRECIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '$ ,0.;-$ ,0.'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 112
            end
            object TvlProductosPRO_MAXIMO: TcxGridDBColumn
              Caption = 'M'#225'ximo'
              DataBinding.FieldName = 'PRO_MAXIMO'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 67
            end
            object TvlProductosPRO_MINIMO: TcxGridDBColumn
              Caption = 'Minimo'
              DataBinding.FieldName = 'PRO_MINIMO'
              HeaderAlignmentHorz = taCenter
              VisibleForEditForm = bTrue
              Width = 59
            end
            object TvlProductosOpciones: TcxGridDBColumn
              Caption = 'Eliminar'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  ImageIndex = 1
                  Kind = bkGlyph
                  Stretchable = False
                end>
              Properties.ViewStyle = vsButtonsOnly
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              VisibleForCustomization = False
              VisibleForEditForm = bTrue
              Width = 89
            end
          end
          object LvlProductos: TcxGridLevel
            GridView = TvlProductos
          end
        end
      end
    end
    object TbsListaPro: TcxTabSheet
      Caption = 'TbsListaPro'
      ImageIndex = 1
      object GridListaProd: TcxGrid
        Left = 0
        Top = 0
        Width = 831
        Height = 599
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlListaProd: TcxGridDBTableView
          OnDblClick = TvlListaProdDblClick
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
          DataController.DataSource = DtsProductos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Cantidad de Productos #'
              Kind = skCount
              FieldName = 'PRO_CODI'
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
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
          OptionsView.Footer = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.Header = DmGlobal.Titulos
          object TvlListaProdPRO_NOMBRE: TcxGridDBColumn
            Caption = 'Nombre'
            DataBinding.FieldName = 'PRO_NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 209
          end
          object TvlListaProdPRO_REFERENCIA: TcxGridDBColumn
            Caption = 'Referencia'
            DataBinding.FieldName = 'PRO_REFERENCIA'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_COD_BARRAS: TcxGridDBColumn
            Caption = 'C'#243'digo de Barras'
            DataBinding.FieldName = 'PRO_COD_BARRAS'
            HeaderAlignmentHorz = taCenter
            Width = 144
          end
          object TvlListaProdPRO_PRECIO: TcxGridDBColumn
            Caption = 'Precio'
            DataBinding.FieldName = 'PRO_PRECIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_MAXIMO: TcxGridDBColumn
            Caption = 'M'#225'ximo'
            DataBinding.FieldName = 'PRO_MAXIMO'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_MINIMO: TcxGridDBColumn
            Caption = 'M'#237'nimo'
            DataBinding.FieldName = 'PRO_MINIMO'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_CODI: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'PRO_CODI'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_IVA: TcxGridDBColumn
            Caption = 'I.V.A.'
            DataBinding.FieldName = 'PRO_IVA'
            HeaderAlignmentHorz = taCenter
          end
          object TvlListaProdPRO_TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PRO_TIPO'
            OnGetDisplayText = TvlListaProdPRO_TIPOGetDisplayText
            HeaderAlignmentHorz = taCenter
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
            Width = 103
          end
          object TvlListaProdPRO_PRESENTACION: TcxGridDBColumn
            Caption = 'Presentaci'#243'n'
            DataBinding.FieldName = 'PRO_PRESENTACION'
            HeaderAlignmentHorz = taCenter
            Width = 137
          end
          object TvlListaProdPRO_DESCRIPCION: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'PRO_DESCRIPCION'
            HeaderAlignmentHorz = taCenter
            Width = 334
          end
        end
        object LvlListaProd: TcxGridLevel
          GridView = TvlListaProd
        end
      end
    end
  end
  object QryProductos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraProductos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUCTOS')
    UpdateObject = UpdProductos
    GeneratorField.Field = 'PRO_CODI'
    GeneratorField.Generator = 'GEN_PRODUCTO'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 664
    Top = 441
    object QryProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryProductosPRO_DESCRIPCION: TIBStringField
      FieldName = 'PRO_DESCRIPCION'
      Origin = '"PRODUCTOS"."PRO_DESCRIPCION"'
      Size = 100
    end
    object QryProductosPRO_REFERENCIA: TIBStringField
      FieldName = 'PRO_REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
    object QryProductosPRO_COD_BARRAS: TIBStringField
      FieldName = 'PRO_COD_BARRAS'
      Origin = '"PRODUCTOS"."PRO_COD_BARRAS"'
      Size = 50
    end
    object QryProductosPRO_PRECIO: TIBBCDField
      FieldName = 'PRO_PRECIO'
      Origin = '"PRODUCTOS"."PRO_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryProductosPRO_MAXIMO: TSmallintField
      FieldName = 'PRO_MAXIMO'
      Origin = '"PRODUCTOS"."PRO_MAXIMO"'
    end
    object QryProductosPRO_MINIMO: TSmallintField
      FieldName = 'PRO_MINIMO'
      Origin = '"PRODUCTOS"."PRO_MINIMO"'
    end
    object QryProductosPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"PRODUCTOS"."PRO_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryProductosPRO_IVA: TIBBCDField
      FieldName = 'PRO_IVA'
      Origin = '"PRODUCTOS"."PRO_IVA"'
      Precision = 18
      Size = 2
    end
    object QryProductosPRO_CLASE: TIntegerField
      FieldName = 'PRO_CLASE'
      Origin = '"PRODUCTOS"."PRO_CLASE"'
      Required = True
    end
    object QryProductosPRO_MARCA: TIBStringField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUCTOS"."PRO_MARCA"'
      Size = 50
    end
    object QryProductosPRO_PRESENTACION: TIBStringField
      FieldName = 'PRO_PRESENTACION'
      Origin = '"PRODUCTOS"."PRO_PRESENTACION"'
      Size = 50
    end
    object QryProductosGRU_CODI: TIntegerField
      FieldName = 'GRU_CODI'
      Origin = '"PRODUCTOS"."GRU_CODI"'
      Required = True
    end
  end
  object UpdProductos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRO_CODI,'
      '  PRO_NOMBRE,'
      '  PRO_DESCRIPCION,'
      '  PRO_REFERENCIA,'
      '  PRO_COD_BARRAS,'
      '  PRO_PRECIO,'
      '  PRO_MAXIMO,'
      '  PRO_MINIMO,'
      '  PRO_IVA,'
      '  PRO_CLASE,'
      '  PRO_MARCA,'
      '  PRO_PRESENTACION'
      'from PRODUCTOS '
      'where'
      '  PRO_CODI = :PRO_CODI')
    ModifySQL.Strings = (
      'update PRODUCTOS'
      'set'
      '  PRO_NOMBRE = :PRO_NOMBRE,'
      '  PRO_DESCRIPCION = :PRO_DESCRIPCION,'
      '  PRO_REFERENCIA = :PRO_REFERENCIA,'
      '  PRO_COD_BARRAS = :PRO_COD_BARRAS,'
      '  PRO_PRECIO = :PRO_PRECIO,'
      '  PRO_MAXIMO = :PRO_MAXIMO,'
      '  PRO_MINIMO = :PRO_MINIMO,'
      '  PRO_IVA = :PRO_IVA,'
      '  PRO_CLASE = :PRO_CLASE,'
      '  PRO_MARCA = :PRO_MARCA,'
      '  PRO_PRESENTACION = :PRO_PRESENTACION'
      'where'
      '  PRO_CODI = :OLD_PRO_CODI')
    InsertSQL.Strings = (
      'insert into PRODUCTOS'
      
        '  (PRO_NOMBRE, PRO_DESCRIPCION, PRO_REFERENCIA, PRO_COD_BARRAS, ' +
        'PRO_PRECIO, '
      
        '   PRO_MAXIMO, PRO_MINIMO, PRO_IVA, PRO_CLASE, PRO_MARCA, PRO_PR' +
        'ESENTACION, GRU_CODI)'
      'values'
      
        '  (:PRO_NOMBRE, :PRO_DESCRIPCION, :PRO_REFERENCIA, :PRO_COD_BARR' +
        'AS, :PRO_PRECIO, '
      
        '   :PRO_MAXIMO, :PRO_MINIMO, :PRO_IVA, :PRO_CLASE, :PRO_MARCA, :' +
        'PRO_PRESENTACION, :GRU_CODI)')
    DeleteSQL.Strings = (
      'delete from PRODUCTOS'
      'where'
      '  PRO_CODI = :OLD_PRO_CODI')
    Left = 736
    Top = 441
  end
  object CdsProductos: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DspProductos'
    BeforeOpen = CdsProductosBeforeOpen
    AfterOpen = CdsProductosAfterOpen
    BeforeInsert = CdsProductosBeforeInsert
    BeforeEdit = CdsProductosBeforeEdit
    AfterEdit = CdsProductosAfterEdit
    BeforePost = CdsProductosBeforePost
    AfterCancel = CdsProductosAfterCancel
    BeforeDelete = CdsProductosBeforeDelete
    AfterDelete = CdsProductosAfterDelete
    OnNewRecord = CdsProductosNewRecord
    Left = 736
    Top = 497
    object CdsProductosPRO_NOMBRE: TWideStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object CdsProductosPRO_DESCRIPCION: TWideStringField
      FieldName = 'PRO_DESCRIPCION'
      Origin = '"PRODUCTOS"."PRO_DESCRIPCION"'
      Size = 100
    end
    object CdsProductosPRO_REFERENCIA: TWideStringField
      FieldName = 'PRO_REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
    object CdsProductosPRO_COD_BARRAS: TWideStringField
      FieldName = 'PRO_COD_BARRAS'
      Origin = '"PRODUCTOS"."PRO_COD_BARRAS"'
      Size = 50
    end
    object CdsProductosPRO_PRECIO: TBCDField
      FieldName = 'PRO_PRECIO'
      Origin = '"PRODUCTOS"."PRO_PRECIO"'
      Precision = 18
      Size = 2
    end
    object CdsProductosPRO_MAXIMO: TSmallintField
      FieldName = 'PRO_MAXIMO'
      Origin = '"PRODUCTOS"."PRO_MAXIMO"'
    end
    object CdsProductosPRO_MINIMO: TSmallintField
      FieldName = 'PRO_MINIMO'
      Origin = '"PRODUCTOS"."PRO_MINIMO"'
    end
    object CdsProductosPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"PRODUCTOS"."PRO_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsProductosPRO_IVA: TBCDField
      FieldName = 'PRO_IVA'
      Origin = '"PRODUCTOS"."PRO_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsProductosPRO_CLASE: TIntegerField
      FieldName = 'PRO_CLASE'
      Origin = '"PRODUCTOS"."PRO_CLASE"'
      Required = True
    end
    object CdsProductosPRO_MARCA: TWideStringField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUCTOS"."PRO_MARCA"'
      Size = 50
    end
    object CdsProductosPRO_PRESENTACION: TWideStringField
      FieldName = 'PRO_PRESENTACION'
      Origin = '"PRODUCTOS"."PRO_PRESENTACION"'
      Size = 50
    end
    object CdsProductosGRU_CODI: TIntegerField
      FieldName = 'GRU_CODI'
      Required = True
    end
  end
  object DspProductos: TDataSetProvider
    DataSet = QryProductos
    Left = 656
    Top = 497
  end
  object DtsProductos: TDataSource
    DataSet = CdsProductos
    Left = 592
    Top = 441
  end
  object GrPopListado: TcxGridPopupMenu
    Grid = GridListaProd
    PopupMenus = <
      item
        GridView = TvlListaProd
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = popListado
      end>
    Left = 676
    Top = 357
  end
  object popListado: TPopupMenu
    Images = DmGlobal.ImPop16
    Left = 748
    Top = 357
    object Volver1: TMenuItem
      Caption = 'Volver'
      ImageIndex = 3
      OnClick = Volver1Click
    end
  end
  object TraProductos: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 752
    Top = 296
  end
  object TblGrupos: TIBTable
    Database = DmGlobal.DbGlobal
    Transaction = TraProductos
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'GRUPOSINV'
    UniDirectional = False
    Left = 516
    Top = 21
    object TblGruposGRU_CODI: TIntegerField
      FieldName = 'GRU_CODI'
      Required = True
    end
    object TblGruposGRU_NOMBRE: TIBStringField
      FieldName = 'GRU_NOMBRE'
      Required = True
      Size = 100
    end
  end
  object DtsGrupos: TDataSource
    DataSet = TblGrupos
    Left = 436
    Top = 21
  end
end
