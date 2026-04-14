object FrmProveedores: TFrmProveedores
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Proveedores'
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
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      AutoSize = False
      Caption = 'PROVEEDORES    '
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
      Height = 55
      Width = 798
      AnchorX = 799
      AnchorY = 29
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
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      OnClick = BtnCancelarClick
    end
    object BtnNuevo: TcxButton
      Left = 16
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Nuevo'
      Caption = 'Nuevo'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = BtnNuevoClick
    end
    object BtnEliminar: TcxButton
      Left = 238
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
      Caption = 'Modificar'
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
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      OnClick = BtnListadoClick
    end
  end
  object pageProveedores: TcxPageControl
    Left = 0
    Top = 73
    Width = 800
    Height = 607
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsDatosPro
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.NavigatorPosition = npLeftTop
    ClientRectBottom = 603
    ClientRectLeft = 4
    ClientRectRight = 796
    ClientRectTop = 4
    object tbsDatosPro: TcxTabSheet
      Caption = 'Datos Cliente'
      ImageIndex = 0
      object pnlDatosCli: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 350
        Align = alTop
        TabOrder = 0
        object GrbDtBasicos: TcxGroupBox
          Left = 8
          Top = 92
          Caption = 'Datos b'#225'sicos'
          Enabled = False
          TabOrder = 0
          Height = 158
          Width = 433
          object Label11: TLabel
            Left = 8
            Top = 17
            Width = 91
            Height = 13
            Caption = 'Tipo de documento'
          end
          object Label12: TLabel
            Left = 224
            Top = 17
            Width = 108
            Height = 13
            Caption = 'N'#250'mero de documento'
          end
          object Label3: TLabel
            Left = 8
            Top = 62
            Width = 42
            Height = 13
            Caption = 'Nombres'
          end
          object Label4: TLabel
            Left = 8
            Top = 106
            Width = 69
            Height = 13
            Caption = 'Tel'#233'fono movil'
          end
          object Label6: TLabel
            Left = 224
            Top = 106
            Width = 60
            Height = 13
            Caption = 'Tel'#233'fono fijo'
          end
          object EdtNumDoc: TcxDBTextEdit
            Left = 224
            Top = 37
            DataBinding.DataField = 'PRV_NUMDOC'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 1
            Width = 200
          end
          object EdtNombre: TcxDBTextEdit
            Left = 8
            Top = 81
            DataBinding.DataField = 'PRV_NOMBRE'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 2
            Width = 416
          end
          object DblTipDocu: TcxDBLookupComboBox
            Left = 8
            Top = 37
            DataBinding.DataField = 'COD_TIPDO'
            DataBinding.DataSource = DtsProveedores
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'TD_CODI'
            Properties.ListColumns = <
              item
                Caption = 'Tipo'
                HeaderAlignment = taCenter
                SortOrder = soAscending
                FieldName = 'TD_ABREVIADO'
              end
              item
                Caption = 'Descripci'#243'n'
                HeaderAlignment = taCenter
                FieldName = 'TD_NOMBRE'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DtsTipDocs
            TabOrder = 0
            Width = 145
          end
          object EdtTelMovil: TcxDBTextEdit
            Left = 8
            Top = 126
            DataBinding.DataField = 'PRV_TEL_MOVIL'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 3
            Width = 145
          end
          object EdtTelFijo: TcxDBTextEdit
            Left = 224
            Top = 126
            DataBinding.DataField = 'PRV_TEL_FIJO'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 4
            Width = 153
          end
        end
        object GrbDtContacto: TcxGroupBox
          Left = 447
          Top = 52
          Caption = 'Datos Adicionales'
          Enabled = False
          TabOrder = 1
          Height = 198
          Width = 337
          object Label10: TLabel
            Left = 16
            Top = 60
            Width = 88
            Height = 13
            Caption = 'Correo electr'#243'nico'
            FocusControl = EdtCorreoE
          end
          object Label7: TLabel
            Left = 16
            Top = 16
            Width = 43
            Height = 13
            Caption = 'Direcci'#243'n'
          end
          object Label1: TLabel
            Left = 16
            Top = 104
            Width = 99
            Height = 13
            Caption = 'Nombre de Contacto'
            FocusControl = EdtContacto
          end
          object Label2: TLabel
            Left = 16
            Top = 150
            Width = 33
            Height = 13
            Caption = 'Ciudad'
          end
          object EdtDireccion: TcxDBTextEdit
            Left = 16
            Top = 35
            DataBinding.DataField = 'PRV_DIRECCION'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 0
            Width = 305
          end
          object EdtCorreoE: TcxDBTextEdit
            Left = 16
            Top = 76
            DataBinding.DataField = 'PRV_CORREOE'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 1
            Width = 305
          end
          object EdtContacto: TcxDBTextEdit
            Left = 16
            Top = 120
            DataBinding.DataField = 'PRV_CONTACTO'
            DataBinding.DataSource = DtsProveedores
            TabOrder = 2
            Width = 305
          end
          object DblCiudad: TcxDBLookupComboBox
            Left = 16
            Top = 166
            DataBinding.DataField = 'CIU_CODI'
            DataBinding.DataSource = DtsProveedores
            Properties.KeyFieldNames = 'CIU_CODI'
            Properties.ListColumns = <
              item
                FieldName = 'CIU_NOMBRE'
              end>
            Properties.ListSource = DtsCiudad
            TabOrder = 3
            Width = 145
          end
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 447
          Top = 10
          Width = 337
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
          Buttons.Post.Visible = False
          Buttons.Cancel.Visible = False
          Buttons.Refresh.Hint = 'Refrescar'
          Buttons.Refresh.ImageIndex = 10
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DtsProveedores
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
          object EdtBusqueda: TcxTextEdit
            Left = 6
            Top = 17
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            OnKeyPress = EdtBusquedaKeyPress
            Width = 324
          end
          object BtnBuscar: TcxButton
            Left = 342
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
                Caption = 'Nombres'
              end
              item
                Caption = 'Num. Documento'
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
        object GrbObservaciones: TcxGroupBox
          Left = 8
          Top = 249
          Caption = 'Observaciones'
          TabOrder = 4
          Height = 99
          Width = 777
          object MemObservaciones: TcxDBMemo
            Left = 2
            Top = 18
            Align = alClient
            DataBinding.DataField = 'PRV_OBSERVACIONES'
            DataBinding.DataSource = DtsProveedores
            Properties.ScrollBars = ssBoth
            TabOrder = 0
            Height = 79
            Width = 773
          end
        end
      end
      object pnlProveedores: TPanel
        Left = 0
        Top = 350
        Width = 792
        Height = 249
        Align = alClient
        TabOrder = 1
        object GridProveedor: TcxGrid
          Left = 1
          Top = 1
          Width = 790
          Height = 247
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvlProveedor: TcxGridDBTableView
            Navigator.Buttons.ConfirmDelete = True
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Images = DmGlobal.ImLNavegador32
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
            DataController.DataSource = DtsProveedores
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
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.Content = DmGlobal.ContenidoLetra
            Styles.Header = DmGlobal.Titulos
            object TvlProveedorPRV_CODI: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'PRV_CODI'
              HeaderAlignmentHorz = taCenter
              Width = 63
            end
            object TvlProveedorPRV_NOMBRE: TcxGridDBColumn
              Caption = 'Proveedor'
              DataBinding.FieldName = 'PRV_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Width = 336
            end
            object TvlProveedorCOD_TIPDO: TcxGridDBColumn
              Caption = 'Tip. Doc.'
              DataBinding.FieldName = 'COD_TIPDO'
              HeaderAlignmentHorz = taCenter
              Width = 63
            end
            object TvlProveedorPRV_NUMDOC: TcxGridDBColumn
              Caption = 'N'#250'm. Doc.'
              DataBinding.FieldName = 'PRV_NUMDOC'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object TvlProveedorPRV_CONTACTO: TcxGridDBColumn
              Caption = 'Contacto'
              DataBinding.FieldName = 'PRV_CONTACTO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 190
            end
            object TvlProveedorPRV_OBSERVACIONES: TcxGridDBColumn
              Caption = 'Observaciones'
              DataBinding.FieldName = 'PRV_OBSERVACIONES'
              PropertiesClassName = 'TcxBlobEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 200
            end
            object TvlProveedorPRV_TEL_MOVIL: TcxGridDBColumn
              Caption = 'Tel. Movil'
              DataBinding.FieldName = 'PRV_TEL_MOVIL'
              HeaderAlignmentHorz = taCenter
              Width = 132
            end
            object TvlProveedorPRV_TEL_FIJO: TcxGridDBColumn
              Caption = 'Tel Fijo'
              DataBinding.FieldName = 'PRV_TEL_FIJO'
              HeaderAlignmentHorz = taCenter
              Width = 129
            end
            object TvlProveedorPRV_DIRECCION: TcxGridDBColumn
              Caption = 'Direcci'#243'n'
              DataBinding.FieldName = 'PRV_DIRECCION'
              HeaderAlignmentHorz = taCenter
              Width = 165
            end
            object TvlProveedorPRV_CORREOE: TcxGridDBColumn
              Caption = 'Correo Electr'#243'nico'
              DataBinding.FieldName = 'PRV_CORREOE'
              HeaderAlignmentHorz = taCenter
              Width = 174
            end
            object TvlProveedorPRV_FECHA_CREA: TcxGridDBColumn
              Caption = 'Fecha Creaci'#243'n'
              DataBinding.FieldName = 'PRV_FECHA_CREA'
              HeaderAlignmentHorz = taCenter
              Width = 104
            end
            object TvlProveedorOpciones: TcxGridDBColumn
              Caption = 'Eliminar'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkGlyph
                  Stretchable = False
                end>
              Properties.ViewStyle = vsButtonsOnly
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebAlways
              VisibleForCustomization = False
              VisibleForEditForm = bTrue
              Width = 131
            end
          end
          object LvlProveedor: TcxGridLevel
            GridView = TvlProveedor
          end
        end
      end
    end
    object TbsListaPro: TcxTabSheet
      Caption = 'Lista Clientes'
      ImageIndex = 1
      object GridProveedores: TcxGrid
        Left = 0
        Top = 0
        Width = 792
        Height = 599
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlProveedores: TcxGridDBTableView
          OnDblClick = TvlProveedoresDblClick
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = DmGlobal.ImLNavegador32
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
          DataController.DataSource = DtsProveedores
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Cantidad de Clientes #'
              Kind = skCount
              FieldName = 'CLI_NOCO'
              DisplayText = 'Cantidad de Clientes'
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
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.Footer = True
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.Content = DmGlobal.ContenidoLetra
          Styles.Header = DmGlobal.Titulos
          object TvlProveedoresPRV_CODI: TcxGridDBColumn
            Caption = 'Cod Prov'
            DataBinding.FieldName = 'PRV_CODI'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object TvlProveedoresPRV_NOMBRE: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'PRV_NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 306
          end
          object TvlProveedoresCOD_TIPDO: TcxGridDBColumn
            Caption = 'Tip. Doc.'
            DataBinding.FieldName = 'COD_TIPDO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TD_CODI'
            Properties.ListColumns = <
              item
                FieldName = 'TD_ABREVIADO'
              end>
            Properties.ListSource = DtsTipDocs
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebNever
          end
          object TvlProveedoresPRV_NUMDOC: TcxGridDBColumn
            Caption = 'N'#250'm Doc.'
            DataBinding.FieldName = 'PRV_NUMDOC'
            HeaderAlignmentHorz = taCenter
          end
          object TvlProveedoresPRV_CORREOE: TcxGridDBColumn
            Caption = 'Correco Electr'#243'nico'
            DataBinding.FieldName = 'PRV_CORREOE'
            HeaderAlignmentHorz = taCenter
          end
          object TvlProveedoresPRV_TEL_MOVIL: TcxGridDBColumn
            Caption = 'Tel. Movil'
            DataBinding.FieldName = 'PRV_TEL_MOVIL'
            HeaderAlignmentHorz = taCenter
          end
          object TvlProveedoresPRV_TEL_FIJO: TcxGridDBColumn
            Caption = 'Tel. Fijo'
            DataBinding.FieldName = 'PRV_TEL_FIJO'
            HeaderAlignmentHorz = taCenter
          end
          object TvlProveedoresPRV_DIRECCION: TcxGridDBColumn
            Caption = 'Direcci'#243'n'
            DataBinding.FieldName = 'PRV_DIRECCION'
            HeaderAlignmentHorz = taCenter
          end
          object TvlProveedoresPRV_CONTACTO: TcxGridDBColumn
            Caption = 'Contacto'
            DataBinding.FieldName = 'PRV_CONTACTO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 207
          end
          object TvlProveedoresPRV_OBSERVACIONES: TcxGridDBColumn
            Caption = 'Observaciones'
            DataBinding.FieldName = 'PRV_OBSERVACIONES'
            PropertiesClassName = 'TcxBlobEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 200
          end
          object TvlProveedoresPRV_FECHA_CREA: TcxGridDBColumn
            Caption = 'Fecha de Creaci'#243'n'
            DataBinding.FieldName = 'PRV_FECHA_CREA'
            HeaderAlignmentHorz = taCenter
          end
        end
        object LvlProveedores: TcxGridLevel
          GridView = TvlProveedores
        end
      end
    end
  end
  object DtsProveedores: TDataSource
    DataSet = CdsProveedores
    OnDataChange = DtsProveedoresDataChange
    Left = 624
    Top = 104
  end
  object QryProveedores: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraProveedor
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * from PROVEEDORES')
    UpdateObject = UpdProveedores
    GeneratorField.Field = 'CLI_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 679
    Top = 104
    object QryProveedoresPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Origin = '"PROVEEDORES"."PRV_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProveedoresCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"PROVEEDORES"."COD_TIPDO"'
    end
    object QryProveedoresPRV_NUMDOC: TIBStringField
      FieldName = 'PRV_NUMDOC'
      Origin = '"PROVEEDORES"."PRV_NUMDOC"'
      Required = True
    end
    object QryProveedoresPRV_TEL_MOVIL: TIBStringField
      FieldName = 'PRV_TEL_MOVIL'
      Origin = '"PROVEEDORES"."PRV_TEL_MOVIL"'
    end
    object QryProveedoresPRV_TEL_FIJO: TIBStringField
      FieldName = 'PRV_TEL_FIJO'
      Origin = '"PROVEEDORES"."PRV_TEL_FIJO"'
    end
    object QryProveedoresPRV_CORREOE: TIBStringField
      FieldName = 'PRV_CORREOE'
      Origin = '"PROVEEDORES"."PRV_CORREOE"'
      Size = 30
    end
    object QryProveedoresPRV_FECHA_CREA: TDateTimeField
      FieldName = 'PRV_FECHA_CREA'
      Origin = '"PROVEEDORES"."PRV_FECHA_CREA"'
      Required = True
    end
    object QryProveedoresPRV_CONTACTO: TIBStringField
      FieldName = 'PRV_CONTACTO'
      Origin = '"PROVEEDORES"."PRV_CONTACTO"'
      Size = 60
    end
    object QryProveedoresPRV_OBSERVACIONES: TIBStringField
      FieldName = 'PRV_OBSERVACIONES'
      Origin = '"PROVEEDORES"."PRV_OBSERVACIONES"'
      Size = 2000
    end
    object QryProveedoresCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
      Origin = '"PROVEEDORES"."CIU_CODI"'
    end
    object QryProveedoresPRV_NOMBRE: TIBStringField
      FieldName = 'PRV_NOMBRE'
      Origin = '"PROVEEDORES"."PRV_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryProveedoresPRV_DIRECCION: TIBStringField
      FieldName = 'PRV_DIRECCION'
      Origin = '"PROVEEDORES"."PRV_DIRECCION"'
      Size = 255
    end
  end
  object UpdProveedores: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PRV_CODI,'
      '  COD_TIPDO,'
      '  PRV_NUMDOC,'
      '  PRV_NOMBRE,'
      '  PRV_TEL_MOVIL,'
      '  PRV_TEL_FIJO,'
      '  PRV_DIRECCION,'
      '  PRV_CORREOE,'
      '  PRV_FECHA_CREA,'
      '  PRV_CONTACTO,'
      '  PRV_OBSERVACIONES,'
      '  CIU_CODI'
      'from PROVEEDORES '
      'where'
      '  PRV_CODI = :PRV_CODI')
    ModifySQL.Strings = (
      'update PROVEEDORES'
      'set'
      '  PRV_CODI = :PRV_CODI,'
      '  COD_TIPDO = :COD_TIPDO,'
      '  PRV_NUMDOC = :PRV_NUMDOC,'
      '  PRV_NOMBRE = :PRV_NOMBRE,'
      '  PRV_TEL_MOVIL = :PRV_TEL_MOVIL,'
      '  PRV_TEL_FIJO = :PRV_TEL_FIJO,'
      '  PRV_DIRECCION = :PRV_DIRECCION,'
      '  PRV_CORREOE = :PRV_CORREOE,'
      '  PRV_FECHA_CREA = :PRV_FECHA_CREA,'
      '  PRV_CONTACTO = :PRV_CONTACTO,'
      '  PRV_OBSERVACIONES = :PRV_OBSERVACIONES,'
      '  CIU_CODI = :CIU_CODI'
      'where'
      '  PRV_CODI = :OLD_PRV_CODI')
    InsertSQL.Strings = (
      'insert into PROVEEDORES'
      '  (PRV_CODI, COD_TIPDO, PRV_NUMDOC, PRV_NOMBRE,'
      '   PRV_TEL_MOVIL, PRV_TEL_FIJO, PRV_DIRECCION, PRV_CORREOE, '
      '   PRV_FECHA_CREA, PRV_CONTACTO, PRV_OBSERVACIONES, CIU_CODI)'
      'values'
      '  (:PRV_CODI, :COD_TIPDO, :PRV_NUMDOC, :PRV_NOMBRE,'
      '   :PRV_TEL_MOVIL, :PRV_TEL_FIJO, :PRV_DIRECCION, :PRV_CORREOE, '
      
        '   :PRV_FECHA_CREA, :PRV_CONTACTO, :PRV_OBSERVACIONES, :CIU_CODI' +
        ')')
    DeleteSQL.Strings = (
      'delete from PROVEEDORES'
      'where'
      '  PRV_CODI = :OLD_PRV_CODI')
    Left = 744
    Top = 104
  end
  object CdsProveedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProveedores'
    BeforeInsert = CdsProveedoresBeforeInsert
    BeforeEdit = CdsProveedoresBeforeEdit
    AfterEdit = CdsProveedoresAfterEdit
    BeforePost = CdsProveedoresBeforePost
    AfterPost = CdsProveedoresAfterPost
    AfterCancel = CdsProveedoresAfterCancel
    BeforeDelete = CdsProveedoresBeforeDelete
    AfterDelete = CdsProveedoresAfterDelete
    OnNewRecord = CdsProveedoresNewRecord
    Left = 679
    Top = 152
    object CdsProveedoresPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Required = True
    end
    object CdsProveedoresCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
    end
    object CdsProveedoresPRV_NUMDOC: TWideStringField
      FieldName = 'PRV_NUMDOC'
      Required = True
    end
    object CdsProveedoresPRV_TEL_MOVIL: TWideStringField
      FieldName = 'PRV_TEL_MOVIL'
    end
    object CdsProveedoresPRV_TEL_FIJO: TWideStringField
      FieldName = 'PRV_TEL_FIJO'
    end
    object CdsProveedoresPRV_CORREOE: TWideStringField
      FieldName = 'PRV_CORREOE'
      Size = 30
    end
    object CdsProveedoresPRV_FECHA_CREA: TDateTimeField
      FieldName = 'PRV_FECHA_CREA'
      Required = True
    end
    object CdsProveedoresPRV_CONTACTO: TWideStringField
      FieldName = 'PRV_CONTACTO'
      Size = 60
    end
    object CdsProveedoresPRV_OBSERVACIONES: TWideStringField
      FieldName = 'PRV_OBSERVACIONES'
      Size = 2000
    end
    object CdsProveedoresCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
    end
    object CdsProveedoresPRV_NOMBRE: TWideStringField
      FieldName = 'PRV_NOMBRE'
      Required = True
      Size = 255
    end
    object CdsProveedoresPRV_DIRECCION: TWideStringField
      FieldName = 'PRV_DIRECCION'
      Size = 255
    end
  end
  object DspProveedores: TDataSetProvider
    DataSet = QryProveedores
    Left = 744
    Top = 152
  end
  object DtsTipDocs: TDataSource
    DataSet = DmGlobal.TblTipDocu
    Left = 745
    Top = 209
  end
  object GrPopListado: TcxGridPopupMenu
    Grid = GridProveedores
    PopupMenus = <
      item
        GridView = TvlProveedores
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
  object TraProveedor: TIBTransaction
    Active = True
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 680
    Top = 208
  end
  object DtsCiudad: TDataSource
    DataSet = DmGlobal.TblCiudad
    Left = 731
    Top = 265
  end
end
