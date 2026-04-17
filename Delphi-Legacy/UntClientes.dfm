object FrmClientes: TFrmClientes
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Clientes'
  ClientHeight = 680
  ClientWidth = 808
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
    Width = 808
    Height = 73
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      AutoSize = False
      Caption = 'CLIENTES      '
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
      Width = 806
      AnchorX = 807
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
    object cxDBNavigator3: TcxDBNavigator
      Left = 373
      Top = 27
      Width = 182
      Height = 40
      Buttons.CustomButtons = <>
      Buttons.Images = DmGlobal.ImLNavegador32
      Buttons.First.Enabled = False
      Buttons.First.Hint = 'Inicio'
      Buttons.First.ImageIndex = 0
      Buttons.First.Visible = False
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Hint = 'Pag Anterior'
      Buttons.PriorPage.ImageIndex = 1
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Enabled = False
      Buttons.Prior.Hint = 'Anterior'
      Buttons.Prior.ImageIndex = 2
      Buttons.Prior.Visible = False
      Buttons.Next.Enabled = False
      Buttons.Next.Hint = 'Siguiente'
      Buttons.Next.ImageIndex = 3
      Buttons.Next.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Hint = 'Pag Siguiente'
      Buttons.NextPage.ImageIndex = 4
      Buttons.NextPage.Visible = False
      Buttons.Last.Enabled = False
      Buttons.Last.Hint = #218'ltimo'
      Buttons.Last.ImageIndex = 5
      Buttons.Last.Visible = False
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Append.Hint = 'Agregar'
      Buttons.Append.ImageIndex = 6
      Buttons.Append.Visible = True
      Buttons.Delete.Hint = 'Borrar'
      Buttons.Delete.ImageIndex = 13
      Buttons.Delete.Visible = True
      Buttons.Edit.Hint = 'Editar'
      Buttons.Edit.ImageIndex = 8
      Buttons.Edit.Visible = True
      Buttons.Post.Hint = 'Guardar'
      Buttons.Post.ImageIndex = 9
      Buttons.Post.Visible = True
      Buttons.Cancel.Hint = 'Cancelar'
      Buttons.Cancel.ImageIndex = 12
      Buttons.Cancel.Visible = True
      Buttons.Refresh.Enabled = False
      Buttons.Refresh.Hint = 'Refrescar'
      Buttons.Refresh.ImageIndex = 10
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Enabled = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Enabled = False
      Buttons.Filter.Visible = False
      DataSource = DtsClientes
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
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
      TabOrder = 7
      OnClick = BtnListadoClick
    end
  end
  object pageClientes: TcxPageControl
    Left = 0
    Top = 73
    Width = 808
    Height = 607
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsDatosCli
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.NavigatorPosition = npLeftTop
    ClientRectBottom = 603
    ClientRectLeft = 4
    ClientRectRight = 804
    ClientRectTop = 4
    object tbsDatosCli: TcxTabSheet
      Caption = 'Datos Cliente'
      ImageIndex = 0
      object pnlDatosCli: TPanel
        Left = 0
        Top = 0
        Width = 800
        Height = 267
        Align = alTop
        TabOrder = 0
        object GrbDtBasicos: TcxGroupBox
          Left = 8
          Top = 91
          Caption = 'Datos b'#225'sicos'
          Enabled = False
          TabOrder = 0
          Height = 170
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
            Top = 69
            Width = 42
            Height = 13
            Caption = 'Nombres'
          end
          object Label4: TLabel
            Left = 8
            Top = 115
            Width = 69
            Height = 13
            Caption = 'Tel'#233'fono movil'
          end
          object Label6: TLabel
            Left = 224
            Top = 115
            Width = 60
            Height = 13
            Caption = 'Tel'#233'fono fijo'
          end
          object EdtNumDoc: TcxDBTextEdit
            Left = 224
            Top = 37
            DataBinding.DataField = 'CLI_NUMDOC'
            DataBinding.DataSource = DtsClientes
            TabOrder = 1
            Width = 200
          end
          object EdtNombre: TcxDBTextEdit
            Left = 8
            Top = 88
            DataBinding.DataField = 'CLI_NOMBRE'
            DataBinding.DataSource = DtsClientes
            TabOrder = 2
            Width = 416
          end
          object DblTipDocu: TcxDBLookupComboBox
            Left = 8
            Top = 37
            DataBinding.DataField = 'COD_TIPDO'
            DataBinding.DataSource = DtsClientes
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
            Top = 135
            DataBinding.DataField = 'CLI_TEL_MOVIL'
            DataBinding.DataSource = DtsClientes
            TabOrder = 3
            Width = 137
          end
          object EdtTelFijo: TcxDBTextEdit
            Left = 224
            Top = 135
            DataBinding.DataField = 'CLI_TEL_FIJO'
            DataBinding.DataSource = DtsClientes
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
          Height = 170
          Width = 337
          object Label10: TLabel
            Left = 16
            Top = 64
            Width = 88
            Height = 13
            Caption = 'Correo electr'#243'nico'
            FocusControl = EdtCorreoE
          end
          object Label7: TLabel
            Left = 16
            Top = 13
            Width = 43
            Height = 13
            Caption = 'Direcci'#243'n'
          end
          object Label1: TLabel
            Left = 16
            Top = 112
            Width = 33
            Height = 13
            Caption = 'Ciudad'
          end
          object EdtDireccion: TcxDBTextEdit
            Left = 16
            Top = 32
            DataBinding.DataField = 'CLI_DIRECCION'
            DataBinding.DataSource = DtsClientes
            TabOrder = 0
            Width = 305
          end
          object EdtCorreoE: TcxDBTextEdit
            Left = 16
            Top = 80
            DataBinding.DataField = 'CLI_CORREOE'
            DataBinding.DataSource = DtsClientes
            TabOrder = 1
            OnExit = EdtCorreoEExit
            Width = 305
          end
          object DblCiudad: TcxDBLookupComboBox
            Left = 16
            Top = 128
            DataBinding.DataField = 'CIU_CODI'
            DataBinding.DataSource = DtsClientes
            Properties.KeyFieldNames = 'CIU_CODI'
            Properties.ListColumns = <
              item
                Caption = 'NOMBRE'
                HeaderAlignment = taCenter
                FieldName = 'CIU_NOMBRE'
              end>
            Properties.ListSource = DtsCiudad
            TabOrder = 2
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
          DataSource = DtsClientes
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
                Caption = 'Num. Documento'
              end
              item
                Caption = 'Nombres'
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
      object pnlVehiculos: TPanel
        Left = 0
        Top = 267
        Width = 800
        Height = 332
        Align = alClient
        TabOrder = 1
        object pnlAddCarro: TPanel
          Left = 1
          Top = 1
          Width = 798
          Height = 39
          Align = alTop
          TabOrder = 0
          object LblVxCli: TcxLabel
            Left = 1
            Top = 1
            Align = alClient
            AutoSize = False
            Caption = 'VEHICULOS DEL CLIENTE:       '
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -24
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
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.LabelEffect = cxleCool
            Properties.LabelStyle = cxlsRaised
            Height = 37
            Width = 796
            AnchorY = 20
          end
        end
        object GridCliCar: TcxGrid
          Left = 1
          Top = 40
          Width = 798
          Height = 291
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvlCliCar: TcxGridDBTableView
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
            Navigator.Visible = True
            DataController.DataSource = DtsVeXCli
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
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.Content = DmGlobal.ContenidoLetra
            Styles.Header = DmGlobal.Titulos
            object TvlCliCarVXC_PLACA: TcxGridDBColumn
              Caption = 'Placa'
              DataBinding.FieldName = 'VXC_PLACA'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 60
            end
            object TvlCliCarMR_CODI: TcxGridDBColumn
              Caption = 'Marca'
              DataBinding.FieldName = 'MR_CODI'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediateDropDownWhenKeyPressed = False
              Properties.KeyFieldNames = 'MR_CODI'
              Properties.ListColumns = <
                item
                  FieldName = 'MR_NOMBRE'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = DtsMarcaVH
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.ShowEditButtons = isebNever
              Width = 112
            end
            object TvlCliCarLI_CODI: TcxGridDBColumn
              Caption = 'Linea'
              DataBinding.FieldName = 'LI_CODI'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'LI_CODI'
              Properties.ListColumns = <
                item
                  FieldName = 'LI_NOMBRE'
                end
                item
                  MinWidth = 1
                  Width = 1
                  FieldName = 'MR_CODI'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DtsLineaVH
              Properties.OnPopup = TvlCliCarLI_CODIPropertiesPopup
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.ShowEditButtons = isebNever
              Width = 114
            end
            object TvlCliCarVXC_KILO_INI: TcxGridDBColumn
              Caption = 'Kilo. Inicial'
              DataBinding.FieldName = 'VXC_KILO_INI'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ' ,0.;- ,0.'
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object TvlCliCarVXC_KILO_ACT: TcxGridDBColumn
              Caption = 'Kilo. Actual'
              DataBinding.FieldName = 'VXC_KILO_ACT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ' ,0.;- ,0.'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object TvlCliCarVXC_COLOR: TcxGridDBColumn
              Caption = 'Color'
              DataBinding.FieldName = 'VXC_COLOR'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 111
            end
            object TvlCliCarVXC_MODELO: TcxGridDBColumn
              Caption = 'Modelo'
              DataBinding.FieldName = 'VXC_MODELO'
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object TvlCliCarOpciones: TcxGridDBColumn
              Caption = 'Eliminar'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Action = actEliminar
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
          object LvlCliCar: TcxGridLevel
            GridView = TvlCliCar
          end
        end
      end
    end
    object TbsListaCli: TcxTabSheet
      Caption = 'Lista Clientes'
      ImageIndex = 1
      object GridClientes: TcxGrid
        Left = 0
        Top = 0
        Width = 800
        Height = 599
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlClientes: TcxGridDBTableView
          OnDblClick = TvlClientesDblClick
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
          DataController.DataSource = DtsClientes
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
          object TvlClientesCLI_CODI: TcxGridDBColumn
            DataBinding.FieldName = 'CLI_CODI'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object TvlClientesCOD_TIPDO: TcxGridDBColumn
            Caption = 'Tipo Doc.'
            DataBinding.FieldName = 'COD_TIPDO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.AutoSelect = False
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 1
            Properties.HideSelection = False
            Properties.ImmediateDropDownWhenKeyPressed = False
            Properties.KeyFieldNames = 'TD_CODI'
            Properties.ListColumns = <
              item
                FieldName = 'TD_ABREVIADO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DtsTipDocs
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.ShowEditButtons = isebNever
            Width = 66
          end
          object TvlClientesCLI_NUMDOC: TcxGridDBColumn
            Caption = 'N'#250'm. Doc.'
            DataBinding.FieldName = 'CLI_NUMDOC'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object TvlClientesCLI_NOMBRE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 262
          end
          object TvlClientesCLI_CORREOE: TcxGridDBColumn
            Caption = 'Correo Electr'#243'nico'
            DataBinding.FieldName = 'CLI_CORREOE'
            HeaderAlignmentHorz = taCenter
            Width = 178
          end
          object TvlClientesCLI_TEL_MOVIL: TcxGridDBColumn
            Caption = 'Tel. Movil'
            DataBinding.FieldName = 'CLI_TEL_MOVIL'
            HeaderAlignmentHorz = taCenter
            Width = 109
          end
          object TvlClientesCLI_TEL_FIJO: TcxGridDBColumn
            Caption = 'Tel Fijo'
            DataBinding.FieldName = 'CLI_TEL_FIJO'
            HeaderAlignmentHorz = taCenter
            Width = 114
          end
          object TvlClientesCLI_DIRECCION: TcxGridDBColumn
            Caption = 'Direcci'#243'n'
            DataBinding.FieldName = 'CLI_DIRECCION'
            HeaderAlignmentHorz = taCenter
            Width = 226
          end
          object TvlClientesCLI_FECHA_CREA: TcxGridDBColumn
            Caption = 'Fecha Creaci'#243'n'
            DataBinding.FieldName = 'CLI_FECHA_CREA'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object LvlClientes: TcxGridLevel
          GridView = TvlClientes
        end
      end
    end
  end
  object DtsClientes: TDataSource
    DataSet = CdsClientes
    OnDataChange = DtsClientesDataChange
    Left = 624
    Top = 104
  end
  object QryClientes: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraClientes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * '
      'from CLIENTES')
    UpdateObject = UpdClientes
    GeneratorField.Field = 'CLI_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 679
    Top = 104
    object QryClientesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"CLIENTES"."CLI_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryClientesCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object QryClientesCLI_NUMDOC: TIBStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClientesCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryClientesCLI_TEL_MOVIL: TIBStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object QryClientesCLI_TEL_FIJO: TIBStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object QryClientesCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 255
    end
    object QryClientesCLI_CORREOE: TIBStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object QryClientesCLI_FECHA_CREA: TDateTimeField
      FieldName = 'CLI_FECHA_CREA'
      Origin = '"CLIENTES"."CLI_FECHA_CREA"'
      Required = True
    end
    object QryClientesCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
      Origin = '"CLIENTES"."CIU_CODI"'
    end
  end
  object UpdClientes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLI_CODI,'
      '  COD_TIPDO,'
      '  CLI_NUMDOC,'
      '  CLI_NOMBRE,'
      '  CLI_TEL_MOVIL,'
      '  CLI_TEL_FIJO,'
      '  CLI_DIRECCION,'
      '  CLI_CORREOE,'
      '  CLI_FECHA_CREA,'
      '  CIU_CODI'
      'from CLIENTES '
      'where'
      '  CLI_CODI = :CLI_CODI')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  COD_TIPDO = :COD_TIPDO,'
      '  CLI_NUMDOC = :CLI_NUMDOC,'
      '  CLI_NOMBRE = :CLI_NOMBRE,'
      '  CLI_TEL_MOVIL = :CLI_TEL_MOVIL,'
      '  CLI_TEL_FIJO = :CLI_TEL_FIJO,'
      '  CLI_DIRECCION = :CLI_DIRECCION,'
      '  CLI_CORREOE = :CLI_CORREOE,'
      '  CLI_FECHA_CREA = :CLI_FECHA_CREA,'
      '  CIU_CODI = :CIU_CODI'
      'where'
      '  CLI_CODI = :OLD_CLI_CODI')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      '  (CLI_CODI, COD_TIPDO, CLI_NUMDOC, CLI_NOMBRE,'
      
        '   CLI_TEL_MOVIL, CLI_TEL_FIJO, CLI_DIRECCION, CLI_CORREOE, CLI_' +
        'FECHA_CREA,'
      '  CIU_CODI)'
      'values'
      '  (:CLI_CODI, :COD_TIPDO, :CLI_NUMDOC, :CLI_NOMBRE, '
      
        '   :CLI_TEL_MOVIL, :CLI_TEL_FIJO, :CLI_DIRECCION, :CLI_CORREOE, ' +
        ':CLI_FECHA_CREA,'
      '  :CIU_CODI)')
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  CLI_CODI = :OLD_CLI_CODI')
    Left = 744
    Top = 104
  end
  object CdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClientes'
    BeforeInsert = CdsClientesBeforeInsert
    BeforeEdit = CdsClientesBeforeEdit
    AfterEdit = CdsClientesAfterEdit
    BeforePost = CdsClientesBeforePost
    AfterPost = CdsClientesAfterPost
    AfterCancel = CdsClientesAfterCancel
    BeforeDelete = CdsClientesBeforeDelete
    AfterDelete = CdsClientesAfterDelete
    AfterScroll = CdsClientesAfterScroll
    OnNewRecord = CdsClientesNewRecord
    Left = 679
    Top = 152
    object CdsClientesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"CLIENTES"."CLI_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsClientesCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object CdsClientesCLI_NUMDOC: TWideStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClientesCLI_TEL_MOVIL: TWideStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object CdsClientesCLI_NOMBRE: TWideStringField
      FieldName = 'CLI_NOMBRE'
      Required = True
      Size = 255
    end
    object CdsClientesCLI_TEL_FIJO: TWideStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object CdsClientesCLI_DIRECCION: TWideStringField
      FieldName = 'CLI_DIRECCION'
      Size = 255
    end
    object CdsClientesCLI_CORREOE: TWideStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object CdsClientesCLI_FECHA_CREA: TDateTimeField
      FieldName = 'CLI_FECHA_CREA'
      Origin = '"CLIENTES"."CLI_FECHA_CREA"'
      Required = True
    end
    object CdsClientesCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
    end
  end
  object DspClientes: TDataSetProvider
    DataSet = QryClientes
    Left = 744
    Top = 152
  end
  object DtsTipDocs: TDataSource
    DataSet = DmGlobal.TblTipDocu
    Left = 745
    Top = 209
  end
  object DtsLinea: TDataSource
    DataSet = TblLinea
    Left = 744
    Top = 296
  end
  object QryVeXCLi: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraClientes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VHXCLIENTE'
      'WHERE CLI_CODI = :CLI_CODI')
    UpdateObject = UpdVeXCli
    GeneratorField.Field = 'VXC_CODI'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 680
    Top = 466
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLI_CODI'
        ParamType = ptInput
      end>
    object QryVeXCLiVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"VHXCLIENTE"."VXC_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryVeXCLiCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"VHXCLIENTE"."CLI_CODI"'
    end
    object QryVeXCLiVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QryVeXCLiMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"VHXCLIENTE"."MR_CODI"'
      Required = True
    end
    object QryVeXCLiLI_CODI: TIntegerField
      FieldName = 'LI_CODI'
      Origin = '"VHXCLIENTE"."LI_CODI"'
    end
    object QryVeXCLiVXC_COLOR: TIBStringField
      FieldName = 'VXC_COLOR'
      Origin = '"VHXCLIENTE"."VXC_COLOR"'
      Required = True
    end
    object QryVeXCLiVXC_KILO_INI: TFloatField
      FieldName = 'VXC_KILO_INI'
      Origin = '"VHXCLIENTE"."VXC_KILO_INI"'
    end
    object QryVeXCLiVXC_KILO_ACT: TFloatField
      FieldName = 'VXC_KILO_ACT'
      Origin = '"VHXCLIENTE"."VXC_KILO_ACT"'
    end
    object QryVeXCLiVXC_MODELO: TIntegerField
      FieldName = 'VXC_MODELO'
      Origin = '"VHXCLIENTE"."VXC_MODELO"'
      Required = True
    end
  end
  object UpdVeXCli: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  VXC_CODI,'
      '  CLI_CODI,'
      '  VXC_PLACA,'
      '  MR_CODI,'
      '  LI_CODI,'
      '  VXC_KILO_INI,'
      '  VXC_COLOR,'
      '  VXC_KILO_ACT,'
      '  VXC_MODELO'
      'from VHXCLIENTE '
      'where'
      '  VXC_CODI = :VXC_CODI and'
      '  VXC_PLACA = :VXC_PLACA')
    ModifySQL.Strings = (
      'update VHXCLIENTE'
      'set'
      '  CLI_CODI = :CLI_CODI,'
      '  VXC_PLACA = :VXC_PLACA,'
      '  MR_CODI = :MR_CODI,'
      '  LI_CODI = :LI_CODI,'
      '  VXC_KILO_INI = :VXC_KILO_INI,'
      '  VXC_COLOR = :VXC_COLOR,'
      '  VXC_KILO_ACT = :VXC_KILO_ACT,'
      '  VXC_MODELO = :VXC_MODELO'
      'where'
      '  VXC_CODI = :OLD_VXC_CODI and'
      '  VXC_PLACA = :OLD_VXC_PLACA')
    InsertSQL.Strings = (
      'insert into VHXCLIENTE'
      
        '  (CLI_CODI, VXC_PLACA, MR_CODI, LI_CODI, VXC_KILO_INI, VXC_COLO' +
        'R, VXC_KILO_ACT, '
      '   VXC_MODELO)'
      'values'
      
        '  (:CLI_CODI, :VXC_PLACA, :MR_CODI, :LI_CODI, :VXC_KILO_INI, :VX' +
        'C_COLOR, '
      '   :VXC_KILO_ACT, :VXC_MODELO)')
    DeleteSQL.Strings = (
      'delete from VHXCLIENTE'
      'where'
      '  VXC_CODI = :OLD_VXC_CODI and'
      '  VXC_PLACA = :OLD_VXC_PLACA')
    Left = 752
    Top = 466
  end
  object CdsVeXCli: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CLI_CODI'
    MasterFields = 'CLI_CODI'
    MasterSource = DtsClientes
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'CLI_CODI'
        ParamType = ptInput
      end>
    ProviderName = 'DspVeXCli'
    BeforeEdit = CdsVeXCliBeforeEdit
    BeforePost = CdsVeXCliBeforePost
    BeforeDelete = CdsVeXCliBeforeDelete
    OnNewRecord = CdsVeXCliNewRecord
    Left = 752
    Top = 522
    object CdsVeXCliVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"VHXCLIENTE"."VXC_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsVeXCliCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"VHXCLIENTE"."CLI_CODI"'
    end
    object CdsVeXCliVXC_PLACA: TWideStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object CdsVeXCliMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"VHXCLIENTE"."MR_CODI"'
      Required = True
    end
    object CdsVeXCliLI_CODI: TIntegerField
      FieldName = 'LI_CODI'
      Origin = '"VHXCLIENTE"."LI_CODI"'
    end
    object CdsVeXCliVXC_COLOR: TWideStringField
      FieldName = 'VXC_COLOR'
      Origin = '"VHXCLIENTE"."VXC_COLOR"'
      Required = True
    end
    object CdsVeXCliVXC_KILO_INI: TFloatField
      FieldName = 'VXC_KILO_INI'
      Origin = '"VHXCLIENTE"."VXC_KILO_INI"'
    end
    object CdsVeXCliVXC_KILO_ACT: TFloatField
      FieldName = 'VXC_KILO_ACT'
      Origin = '"VHXCLIENTE"."VXC_KILO_ACT"'
    end
    object CdsVeXCliVXC_MODELO: TIntegerField
      FieldName = 'VXC_MODELO'
      Origin = '"VHXCLIENTE"."VXC_MODELO"'
      Required = True
    end
  end
  object DtsVeXCli: TDataSource
    DataSet = CdsVeXCli
    Left = 616
    Top = 522
  end
  object DspVeXCli: TDataSetProvider
    DataSet = QryVeXCLi
    Left = 680
    Top = 522
  end
  object ActVeXCli: TActionManager
    Left = 552
    Top = 472
    StyleName = 'Platform Default'
    object actEliminar: TAction
      Caption = 'Eliminar'
      Hint = 'Eliminar'
      ImageIndex = 0
      OnExecute = actEliminarExecute
    end
    object actAgregar: TAction
      Caption = 'Agregar'
    end
    object actEditar: TAction
      Caption = 'Editar'
    end
  end
  object DtsLineaVH: TDataSource
    DataSet = DmGlobal.TblLineaVH
    Left = 608
    Top = 300
  end
  object DtsMarcaVH: TDataSource
    DataSet = DmGlobal.TblMarcaVH
    Left = 536
    Top = 300
  end
  object TblLinea: TIBTable
    Database = DmGlobal.DbGlobal
    Transaction = TraClientes
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'MR_CODI'
    MasterFields = 'MR_CODI'
    MasterSource = DtsMarcaVH
    TableName = 'LINEAVH'
    UniDirectional = False
    Left = 690
    Top = 294
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
  object GrPopListado: TcxGridPopupMenu
    Grid = GridClientes
    PopupMenus = <
      item
        GridView = TvlClientes
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = popListado
      end>
    Left = 676
    Top = 357
  end
  object TraClientes: TIBTransaction
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
    Left = 523
    Top = 9
  end
end
