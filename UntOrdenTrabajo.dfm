object FrmOrdenTrabajo: TFrmOrdenTrabajo
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Orden de Trabajo'
  ClientHeight = 680
  ClientWidth = 794
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
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 144
    Width = 794
    Height = 157
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 447
      Height = 155
      Align = alLeft
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alTop
        BiDiMode = bdRightToLeft
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 0
        Height = 80
        Width = 445
        object EdtNumDoc: TcxDBTextEdit
          Left = 81
          Top = 54
          DataBinding.DataField = 'CLI_NUMDOC'
          DataBinding.DataSource = DtsListaClientes
          TabOrder = 0
          Width = 135
        end
        object EdtCliente: TcxDBTextEdit
          Left = 81
          Top = 8
          DataBinding.DataField = 'NOMCOMP'
          DataBinding.DataSource = DtsListaClientes
          TabOrder = 1
          Width = 347
        end
        object cxLabel2: TcxLabel
          Left = 7
          Top = 7
          Caption = 'Cliente'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 53
          Caption = 'Documento'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel4: TcxLabel
          Left = 239
          Top = 30
          Caption = 'Tel'#233'fono'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object EdtTelFijo: TcxDBTextEdit
          Left = 304
          Top = 31
          DataBinding.DataField = 'CLI_TEL_FIJO'
          DataBinding.DataSource = DtsListaClientes
          TabOrder = 5
          Width = 124
        end
        object EdtTelMovil: TcxDBTextEdit
          Left = 304
          Top = 54
          DataBinding.DataField = 'CLI_TEL_MOVIL'
          DataBinding.DataSource = DtsListaClientes
          TabOrder = 6
          Width = 124
        end
        object cxLabel13: TcxLabel
          Left = 7
          Top = 30
          Caption = 'Tip. Docu.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel14: TcxLabel
          Left = 234
          Top = 53
          Caption = 'Tel. Movil'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object EdtTipDoc: TcxDBTextEdit
          Left = 81
          Top = 31
          DataBinding.DataField = 'TD_ABREVIADO'
          DataBinding.DataSource = DtsListaClientes
          TabOrder = 9
          Width = 135
        end
      end
      object GrbObservaciones: TcxGroupBox
        Left = 1
        Top = 81
        Align = alClient
        Caption = 'Observaciones'
        Enabled = False
        TabOrder = 1
        Height = 73
        Width = 445
        object cxDBMemo1: TcxDBMemo
          Left = 2
          Top = 18
          Align = alClient
          DataBinding.DataField = 'OTM_OBSERV'
          DataBinding.DataSource = DtsFama
          TabOrder = 0
          Height = 53
          Width = 441
        end
      end
    end
    object GrbDatosVehiculo: TcxGroupBox
      Left = 448
      Top = 1
      Align = alClient
      Enabled = False
      TabOrder = 1
      Height = 155
      Width = 345
      object EdtPlaca: TcxDBTextEdit
        Left = 245
        Top = 9
        DataBinding.DataField = 'VXC_PLACA'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 0
        Width = 90
      end
      object EdtMarca: TcxDBTextEdit
        Left = 83
        Top = 32
        DataBinding.DataField = 'MR_NOMBRE'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 1
        Width = 90
      end
      object cxLabel7: TcxLabel
        Left = 185
        Top = 8
        Caption = 'Placa:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel8: TcxLabel
        Left = 8
        Top = 31
        Caption = 'Marca:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel9: TcxLabel
        Left = 185
        Top = 31
        Caption = 'Linea:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object EdtLinea: TcxDBTextEdit
        Left = 245
        Top = 32
        DataBinding.DataField = 'LI_NOMBRE'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 5
        Width = 90
      end
      object cxLabel10: TcxLabel
        Left = 8
        Top = 54
        Caption = 'Modelo:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object EdtModelo: TcxDBTextEdit
        Left = 83
        Top = 56
        DataBinding.DataField = 'VXC_MODELO'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 7
        Width = 90
      end
      object cxLabel11: TcxLabel
        Left = 8
        Top = 78
        Caption = 'Kilometraje actual:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object EdtKilometrajeAct: TcxDBTextEdit
        Left = 137
        Top = 79
        DataBinding.DataField = 'OTM_KILOM'
        DataBinding.DataSource = DtsFama
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnKeyPress = EdtKilometrajeActKeyPress
        Width = 90
      end
      object cxLabel12: TcxLabel
        Left = 185
        Top = 54
        Caption = 'Color:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object EdtColor: TcxDBTextEdit
        Left = 245
        Top = 55
        DataBinding.DataField = 'VXC_COLOR'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 11
        Width = 90
      end
      object DblVeXCli: TcxDBLookupComboBox
        Left = 8
        Top = 9
        DataBinding.DataField = 'VXC_CODI'
        DataBinding.DataSource = DtsFama
        Properties.AutoSelect = False
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VXC_CODI'
        Properties.ListColumns = <
          item
            Caption = 'Marca'
            FieldName = 'MR_NOMBRE'
          end
          item
            Caption = 'Linea'
            FieldName = 'LI_NOMBRE'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DtsVeXCli
        TabOrder = 12
        Width = 165
      end
      object EdtKilometrajeAnt: TcxDBTextEdit
        Left = 137
        Top = 101
        DataBinding.DataField = 'VXC_KILO_ACT'
        DataBinding.DataSource = DtsVeXCli
        TabOrder = 13
        OnKeyPress = EdtKilometrajeActKeyPress
        Width = 90
      end
      object cxLabel15: TcxLabel
        Left = 8
        Top = 100
        Caption = 'Kilometraje anterior:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 72
    Align = alTop
    TabOrder = 1
    object BtnNuevo: TcxButton
      Left = 9
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Nuevo Documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Nuevo'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
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
    object BtnGuardar: TcxButton
      Left = 60
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Guardar cambios'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Guardar'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 1
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
      OnClick = BtnGuardarClick
    end
    object BtnFinalizar: TcxButton
      Left = 215
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Finalizar'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Finalizar'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnFinalizarClick
    end
    object BtnEditar: TcxButton
      Left = 111
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Editar Documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Editar'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnEditarClick
    end
    object BtnCancelar: TcxButton
      Left = 163
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Cancelar operaci'#243'n'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnCancelarClick
    end
    object BtnImprimir: TcxButton
      Left = 266
      Top = 4
      Width = 48
      Height = 65
      Hint = 'Imprimir documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Imprimir'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnImprimirClick
    end
    object BtnConsFacturas: TcxButton
      Left = 322
      Top = 4
      Width = 67
      Height = 65
      Hint = 'Imprimir documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Documentos'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnConsFacturasClick
    end
    object RdgClaseDoc: TcxDBRadioGroup
      Left = 651
      Top = 44
      Alignment = alCenterCenter
      DataBinding.DataField = 'OTM_CLASE_DOC'
      DataBinding.DataSource = DtsFama
      Properties.Columns = 2
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Orden'
          Value = 0
        end
        item
          Caption = 'Factura'
          Value = 1
        end>
      Properties.OnChange = RdgClaseDocPropertiesChange
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 7
      Height = 22
      Width = 129
    end
    object LblEstadoDoc: TcxLabel
      Left = 716
      Top = 12
      Caption = 'En Proceso'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel19: TcxLabel
      Left = 659
      Top = 12
      Caption = 'Estado: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object pnlDetalle: TPanel
    Left = 0
    Top = 301
    Width = 794
    Height = 249
    Align = alClient
    TabOrder = 2
    object GridFaDe: TcxGrid
      Left = 1
      Top = 1
      Width = 792
      Height = 247
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object TvlFaDe: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = DmGlobal.ImLNavegador16
        Navigator.Buttons.First.Enabled = False
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
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Hint = 'Agregar'
        Navigator.Buttons.Insert.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = 'Nuevo Item'
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
        Navigator.Buttons.Refresh.Hint = 'Refrescar'
        Navigator.Buttons.Refresh.ImageIndex = 10
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Enabled = False
        Navigator.Buttons.Filter.ImageIndex = 11
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DtsFade
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
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
        OptionsCustomize.ColumnMoving = False
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsView.NoDataToDisplayInfoText = '<No hay items para mostrar>'
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.Header = DmGlobal.TitulosDetalle
        object TvlFaDeOTD_CONT: TcxGridDBColumn
          DataBinding.FieldName = 'OTD_CONT'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object TvlFaDePR_NOMB: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'PR_NOMB'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = TvlFaDePR_NOMBPropertiesButtonClick
          Properties.OnValidate = TvlFaDePR_NOMBPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object TvlFaDePR_CODI: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'PR_CODI'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = TvlFaDePR_CODIPropertiesButtonClick
          Properties.OnValidate = TvlFaDePR_CODIPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object TvlFaDePRO_CBARRAS: TcxGridDBColumn
          Caption = 'Cod. Barras'
          DataBinding.FieldName = 'PRO_CBARRAS'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = TvlFaDePRO_CBARRASPropertiesButtonClick
          Properties.OnValidate = TvlFaDePRO_CBARRASPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object TvlFaDeOTD_CANT: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'OTD_CANT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.AssignedValues.EditFormat = True
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = ',0.;0.'
          Properties.OnValidate = TvlFaDeOTD_CANTPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Options.SortByDisplayText = isbtOff
          Width = 50
        end
        object TvlFaDeOTD_PRECIO: TcxGridDBColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'OTD_PRECIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = TvlFaDeOTD_PRECIOPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object TvlFaDeOTD_SBTOTAL: TcxGridDBColumn
          Caption = 'Sub Total'
          DataBinding.FieldName = 'OTD_SBTOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 77
        end
        object TvlFaDeOTD_POR_IVA: TcxGridDBColumn
          Caption = '% IVA'
          DataBinding.FieldName = 'OTD_POR_IVA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          VisibleForCustomization = False
          Width = 46
        end
        object TvlFaDeOTD_POR_DSC: TcxGridDBColumn
          Caption = '% Desc'
          DataBinding.FieldName = 'OTD_POR_DSC'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object TvlFaDeOTD_VR_DSC: TcxGridDBColumn
          Caption = 'Vr. Descuento'
          DataBinding.FieldName = 'OTD_VR_DSC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.OnValidate = TvlFaDeOTD_VR_DSCPropertiesValidate
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object TvlFaDeOTD_VR_IVA: TcxGridDBColumn
          Caption = 'Vr. IVA'
          DataBinding.FieldName = 'OTD_VR_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 68
        end
        object TvlFaDeOTD_VR_TOTAL: TcxGridDBColumn
          Caption = 'Vr. Total'
          DataBinding.FieldName = 'OTD_VR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object TvlFaDeEMP_CODI: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'EMP_CODI'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'EMP_CODI'
          Properties.ListColumns = <
            item
              Caption = 'C'#243'digo'
              Fixed = True
              HeaderAlignment = taCenter
              FieldName = 'EMP_CODI'
            end
            item
              Caption = 'Nombre'
              Fixed = True
              HeaderAlignment = taCenter
              SortOrder = soAscending
              Width = 200
              FieldName = 'NOMBREC'
            end
            item
              Caption = 'Num. Doc'
              Fixed = True
              HeaderAlignment = taCenter
              Width = 100
              FieldName = 'EMP_NUMDOC'
            end>
          Properties.ListSource = DtsEmpleados
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object TvlFaDeBOD_CODI: TcxGridDBColumn
          DataBinding.FieldName = 'BOD_CODI'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object TvlFaDeOpciones: TcxGridDBColumn
          Caption = 'Opciones'
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
          Width = 131
        end
      end
      object LvlFaDe: TcxGridLevel
        GridView = TvlFaDe
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 794
    Height = 72
    Align = alTop
    TabOrder = 3
    object GrbBusqueda: TcxGroupBox
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Busqueda'
      Enabled = False
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      TabOrder = 0
      Height = 70
      Width = 388
      object EdtBusqueda: TcxButtonEdit
        Left = 3
        Top = 13
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
        Properties.OnButtonClick = EdtBusqueda1PropertiesButtonClick
        TabOrder = 0
        Width = 379
      end
      object RgCriterio: TcxRadioGroup
        Left = 3
        Top = 40
        Alignment = alCenterCenter
        Ctl3D = True
        ParentCtl3D = False
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Placa'
          end
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
        TabOrder = 1
        Height = 25
        Width = 379
      end
    end
    object GrbEncabezado: TcxGroupBox
      Left = 389
      Top = 1
      Align = alClient
      Enabled = False
      TabOrder = 1
      Height = 70
      Width = 404
      object EdtFechaOrden: TcxDBDateEdit
        Left = 55
        Top = 15
        DataBinding.DataField = 'OTM_FECHA'
        DataBinding.DataSource = DtsFama
        Properties.ButtonGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000C0000001300000015000000160000001700000018000000190000001B0000
          001C0000001D0000001E0000001F0000001E00000015000000050000000A6D5F
          52C3978371FF968270FF94816DFF947F6CFF937F6BFF917C69FF907B68FF8F7A
          67FF8E7A66FF8D7866FF8D7865FF8D7865FF655648CD000000140000000E9986
          74FFF5F1EEFFF3EFEBFFF6F4F0FFDAD5D0FFEFEBE8FFF4F1EEFFF2ECE8FFF3EF
          EBFFECE7E2FFEFE8E2FFEDE6E0FFECE4DEFF8D7865FF0000001E0000000E9C89
          77FFF6F4F0FFF3EFEBFFB0A69DFF6B5C4CFF6A5A4CFFC5BDB7FFF1ECE7FFB6AC
          A4FF84776CFFEDE6E0FFEBE4DDFFEDE6E0FF8D7966FF0000001E0000000D9D8A
          78FFF8F6F3FFF5F2EEFFE3DDD7FFF6F2EEFFCFC9C2FF6A5B4CFFF3EEEAFFD3CD
          C6FF665749FFEFEAE5FFEDE5DFFFEDE7E2FF8E7A67FF0000001C0000000B9F8D
          7AFFFAF6F6FFF7F4F2FFF7F5F2FFF7F5F2FFB4ABA2FF807165FFF4F0ECFFF4F1
          EDFF67574BFFDED7D2FFEDE6E1FFEFE8E3FF8F7A67FF0000001B0000000AA08E
          7CFFFAF9F7FFF9F7F5FFF9F7F5FFEEEDEAFF8C7E73FF968A7FFFF6F3F1FFCFC9
          C3FF736458FFC2B9B2FFEEE7E3FFF0E9E4FF907B68FF0000001A00000009A28F
          7FFFFCFBF9FFFAF9F8FFFAFAF8FFE8E4E1FFDED9D6FF6E5E4FFFD9D4CDFF9386
          7AFF6B5B4CFFAEA59CFFEFE8E3FFEFEAE4FF917C6AFF0000001800000008A493
          81FFFCFCFAFFFCFBF9FFFCFCFAFFB6AEA5FF716051FFA1958BFFF7F5F2FFF5F2
          EFFFB9B0A7FFAEA399FFF0E9E4FFF0EAE4FF937E6BFF0000001700000007A694
          83FFFCFCFBFFFDFCFCFFFDFDFDFFFDFDFBFFFCFBF9FFFBF9F8FFF9F7F4FFF7F4
          F1FFF5F1EEFFF3EEEBFFF2ECE7FFF1ECE8FF94806DFF00000015000000062C2C
          C4FF8F90EAFF4B4BDDFF4949DCFF4647DAFF4344D8FF4041D5FF3C3DD2FF393A
          D0FF3636CDFF3333CBFF3030C8FF4B4BCEFF1A1AB6FF00000014000000052D2D
          C7FFA0A0F4FF6161E6FF5D5DDDFF5B5BDDFF5D5DE7FF5C5CEAFF5758E7FF5454
          E4FF4C4DDBFF4647D0FF4243CFFF5C5CDDFF1B1BB7FF00000013000000042F2F
          C7FFA3A3F3FF433C93FF352C73FF3B3585FF5B5BDDFF5F5FEBFF5C5BE9FF5757
          E5FF3E3791FF362C73FF372F82FF5A5AD4FF1C1CB7FF00000011000000033130
          C8FFA6A6F6FF423983FFBBAEA2FF3D3379FF9191E1FF9A9AF3FF9595F2FF9091
          F0FF423983FFBBAEA2FF3D347AFF7272D7FF1D1DB9FF0000000F000000012525
          95BF3031C9FF4C428EFFF4F0EDFF473D85FF2929BAFF2929C2FF2828C2FF2626
          C0FF4D438FFFF4F0EDFF473D85FF1E1EB1FF171789C600000009000000000000
          00010000000265574BBE897663FF665749C00000000A00000006000000070000
          000865574ABF897663FF655749C2000000100000000800000002}
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd/mm/YYYY'
        Properties.EditFormat = 'dd/mm/YYYY'
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        Properties.OnChange = EdtFechaOrdenPropertiesChange
        TabOrder = 0
        Width = 121
      end
      object EdtNumOrdenTr: TcxDBTextEdit
        Left = 270
        Top = 13
        DataBinding.DataField = 'OTM_NUME'
        DataBinding.DataSource = DtsFama
        Properties.OnEditValueChanged = EdtNumOrdenTrPropertiesEditValueChanged
        TabOrder = 1
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 7
        Top = 15
        Caption = 'Fecha'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel6: TcxLabel
        Left = 194
        Top = 15
        Caption = 'N'#250'mero'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object DblFormaPago: TcxDBLookupComboBox
        Left = 270
        Top = 40
        DataBinding.DataField = 'FP_CODI'
        DataBinding.DataSource = DtsFama
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'FP_CODI'
        Properties.ListColumns = <
          item
            Caption = 'Forma de Pago'
            HeaderAlignment = taCenter
            FieldName = 'FP_NOMBRE'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = DtsFormaPago
        Properties.OnChange = DblFormaPagoPropertiesChange
        TabOrder = 4
        Width = 121
      end
      object EdtFechaVence: TcxDBDateEdit
        Left = 55
        Top = 43
        DataBinding.DataField = 'OTM_FECHA_VENCE'
        DataBinding.DataSource = DtsFama
        Properties.ButtonGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000C0000001300000015000000160000001700000018000000190000001B0000
          001C0000001D0000001E0000001F0000001E00000015000000050000000A6D5F
          52C3978371FF968270FF94816DFF947F6CFF937F6BFF917C69FF907B68FF8F7A
          67FF8E7A66FF8D7866FF8D7865FF8D7865FF655648CD000000140000000E9986
          74FFF5F1EEFFF3EFEBFFF6F4F0FFDAD5D0FFEFEBE8FFF4F1EEFFF2ECE8FFF3EF
          EBFFECE7E2FFEFE8E2FFEDE6E0FFECE4DEFF8D7865FF0000001E0000000E9C89
          77FFF6F4F0FFF3EFEBFFB0A69DFF6B5C4CFF6A5A4CFFC5BDB7FFF1ECE7FFB6AC
          A4FF84776CFFEDE6E0FFEBE4DDFFEDE6E0FF8D7966FF0000001E0000000D9D8A
          78FFF8F6F3FFF5F2EEFFE3DDD7FFF6F2EEFFCFC9C2FF6A5B4CFFF3EEEAFFD3CD
          C6FF665749FFEFEAE5FFEDE5DFFFEDE7E2FF8E7A67FF0000001C0000000B9F8D
          7AFFFAF6F6FFF7F4F2FFF7F5F2FFF7F5F2FFB4ABA2FF807165FFF4F0ECFFF4F1
          EDFF67574BFFDED7D2FFEDE6E1FFEFE8E3FF8F7A67FF0000001B0000000AA08E
          7CFFFAF9F7FFF9F7F5FFF9F7F5FFEEEDEAFF8C7E73FF968A7FFFF6F3F1FFCFC9
          C3FF736458FFC2B9B2FFEEE7E3FFF0E9E4FF907B68FF0000001A00000009A28F
          7FFFFCFBF9FFFAF9F8FFFAFAF8FFE8E4E1FFDED9D6FF6E5E4FFFD9D4CDFF9386
          7AFF6B5B4CFFAEA59CFFEFE8E3FFEFEAE4FF917C6AFF0000001800000008A493
          81FFFCFCFAFFFCFBF9FFFCFCFAFFB6AEA5FF716051FFA1958BFFF7F5F2FFF5F2
          EFFFB9B0A7FFAEA399FFF0E9E4FFF0EAE4FF937E6BFF0000001700000007A694
          83FFFCFCFBFFFDFCFCFFFDFDFDFFFDFDFBFFFCFBF9FFFBF9F8FFF9F7F4FFF7F4
          F1FFF5F1EEFFF3EEEBFFF2ECE7FFF1ECE8FF94806DFF00000015000000062C2C
          C4FF8F90EAFF4B4BDDFF4949DCFF4647DAFF4344D8FF4041D5FF3C3DD2FF393A
          D0FF3636CDFF3333CBFF3030C8FF4B4BCEFF1A1AB6FF00000014000000052D2D
          C7FFA0A0F4FF6161E6FF5D5DDDFF5B5BDDFF5D5DE7FF5C5CEAFF5758E7FF5454
          E4FF4C4DDBFF4647D0FF4243CFFF5C5CDDFF1B1BB7FF00000013000000042F2F
          C7FFA3A3F3FF433C93FF352C73FF3B3585FF5B5BDDFF5F5FEBFF5C5BE9FF5757
          E5FF3E3791FF362C73FF372F82FF5A5AD4FF1C1CB7FF00000011000000033130
          C8FFA6A6F6FF423983FFBBAEA2FF3D3379FF9191E1FF9A9AF3FF9595F2FF9091
          F0FF423983FFBBAEA2FF3D347AFF7272D7FF1D1DB9FF0000000F000000012525
          95BF3031C9FF4C428EFFF4F0EDFF473D85FF2929BAFF2929C2FF2828C2FF2626
          C0FF4D438FFFF4F0EDFF473D85FF1E1EB1FF171789C600000009000000000000
          00010000000265574BBE897663FF665749C00000000A00000006000000070000
          000865574ABF897663FF655749C2000000100000000800000002}
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.DisplayFormat = 'dd/mm/YYYY'
        Properties.EditFormat = 'dd/mm/YYYY'
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        TabOrder = 5
        Visible = False
        Width = 121
      end
      object LblVence: TcxLabel
        Left = 7
        Top = 43
        Caption = 'Vence'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Visible = False
      end
      object cxLabel20: TcxLabel
        Left = 194
        Top = 39
        Caption = 'Forma Pago'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
  end
  object PnlInferior: TPanel
    Left = 0
    Top = 550
    Width = 794
    Height = 130
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 555
    object GrbUltimaVenta: TcxGroupBox
      Left = 1
      Top = 1
      Align = alLeft
      Caption = 'Datos '#250'ltima venta'
      Enabled = False
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 128
      Width = 305
      object Label1: TLabel
        Left = 7
        Top = 17
        Width = 34
        Height = 16
        Caption = 'Fecha'
        FocusControl = cxDBDateEdit1
      end
      object Label2: TLabel
        Left = 7
        Top = 67
        Width = 116
        Height = 16
        Caption = 'Clase de documento'
      end
      object Label3: TLabel
        Left = 171
        Top = 67
        Width = 126
        Height = 16
        Caption = 'Estado del documento'
      end
      object Label4: TLabel
        Left = 171
        Top = 40
        Width = 40
        Height = 16
        Caption = 'Precio:'
        FocusControl = cxDBCurrencyEdit1
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 7
        Top = 37
        DataBinding.DataField = 'OTM_FECHA'
        DataBinding.DataSource = DtsUltVenta
        Enabled = False
        Properties.SaveTime = False
        Properties.ShowOnlyValidDates = True
        Properties.ShowTime = False
        Properties.ShowToday = False
        Properties.UseLeftAlignmentOnEditing = False
        Style.BorderColor = clBtnFace
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        Style.Edges = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.ButtonTransparency = ebtInactive
        StyleDisabled.BorderColor = clBtnFace
        StyleDisabled.BorderStyle = ebsNone
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.TextColor = clBlack
        StyleDisabled.ButtonStyle = btsSimple
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 217
        Top = 37
        DataBinding.DataField = 'OTD_PRECIO'
        DataBinding.DataSource = DtsUltVenta
        Enabled = False
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.TextColor = clBlack
        StyleDisabled.TextStyle = [fsBold]
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 83
      end
      object DbLblEstado: TcxDBLabel
        Left = 171
        Top = 86
        DataBinding.DataField = 'ESTADO'
        DataBinding.DataSource = DtsUltVenta
        Height = 21
        Width = 121
      end
      object DbLblClase: TcxDBLabel
        Left = 7
        Top = 86
        DataBinding.DataField = 'CLASE'
        DataBinding.DataSource = DtsUltVenta
        Height = 21
        Width = 121
      end
    end
    object PnlInferiorTot: TPanel
      Left = 512
      Top = 1
      Width = 281
      Height = 128
      Align = alRight
      TabOrder = 1
      DesignSize = (
        281
        128)
      object cxLabel1: TcxLabel
        Left = 2
        Top = 5
        Anchors = [akTop, akRight]
        Caption = 'Sub Total:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object EdtSubTotal: TcxDBCurrencyEdit
        Left = 110
        Top = 6
        DataBinding.DataField = 'SUBTOTAL'
        DataBinding.DataSource = DtsFade
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        StyleDisabled.BorderColor = clWindowFrame
        StyleDisabled.Color = clWindow
        StyleDisabled.TextColor = clWindowText
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 1
        Width = 162
      end
      object cxLabel16: TcxLabel
        Left = 2
        Top = 29
        Anchors = [akTop, akRight]
        Caption = 'Descuentos:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object EdtTotDescuento: TcxDBCurrencyEdit
        Left = 110
        Top = 30
        DataBinding.DataField = 'TOT_DESCUENTO'
        DataBinding.DataSource = DtsFade
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        StyleDisabled.BorderColor = clWindowFrame
        StyleDisabled.Color = clWindow
        StyleDisabled.TextColor = clWindowText
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 3
        Width = 162
      end
      object cxLabel17: TcxLabel
        Left = 2
        Top = 53
        Anchors = [akTop, akRight]
        Caption = 'I.V.A.:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object EdtTotIVA: TcxDBCurrencyEdit
        Left = 110
        Top = 54
        DataBinding.DataField = 'TOT_IVA'
        DataBinding.DataSource = DtsFade
        Enabled = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        StyleDisabled.BorderColor = clWindowFrame
        StyleDisabled.Color = clWindow
        StyleDisabled.TextColor = clWindowText
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 5
        Width = 162
      end
      object cxLabel18: TcxLabel
        Left = 2
        Top = 79
        Anchors = [akTop, akRight]
        Caption = 'TOTAL:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object EdtTotalOrden: TcxDBCurrencyEdit
        Left = 110
        Top = 78
        DataBinding.DataField = 'TOTAL_ORDEN'
        DataBinding.DataSource = DtsFade
        Enabled = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = clWindowFrame
        StyleDisabled.BorderStyle = ebsUltraFlat
        StyleDisabled.Color = clWindow
        StyleDisabled.TextColor = clWindowText
        StyleDisabled.TextStyle = [fsBold]
        TabOrder = 7
        Width = 162
      end
    end
  end
  object DtsListaClientes: TDataSource
    DataSet = QryListaClientes
    Left = 421
    Top = 336
  end
  object QryListaClientes: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT CLIENTES.*, CLIENTES.CLI_NOMBRE NomComp, t.td_abreviado, ' +
        'V.vxc_placa,MV.mr_nombre, LV.li_nombre'
      'FROM CLIENTES'
      'LEFT JOIN tipdocumentos T ON T.td_codi = CLIENTES.cod_tipdo'
      'LEFT JOIN vhxcliente v ON V.cli_codi = CLIENTES.cli_codi'
      'LEFT JOIN marcavh MV ON MV.mr_codi = V.mr_codi'
      
        'LEFT JOIN lineavh LV ON LV.li_codi = V.li_codi AND LV.mr_codi = ' +
        'MV.mr_codi')
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 495
    Top = 336
    object QryListaClientesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"CLIENTES"."CLI_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryListaClientesCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object QryListaClientesCLI_NUMDOC: TIBStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListaClientesCLI_TEL_MOVIL: TIBStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object QryListaClientesCLI_TEL_FIJO: TIBStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object QryListaClientesCLI_CORREOE: TIBStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object QryListaClientesCLI_FECHA_CREA: TDateTimeField
      FieldName = 'CLI_FECHA_CREA'
      Origin = '"CLIENTES"."CLI_FECHA_CREA"'
      Required = True
    end
    object QryListaClientesTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryListaClientesVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object QryListaClientesMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryListaClientesLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object QryListaClientesCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryListaClientesNOMCOMP: TIBStringField
      FieldName = 'NOMCOMP'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryListaClientesCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 255
    end
  end
  object DtsVeXCli: TDataSource
    DataSet = QryVeXCli
    Left = 568
    Top = 8
  end
  object CdsFama: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFama'
    AfterScroll = CdsFamaAfterScroll
    Left = 688
    Top = 56
    object CdsFamaOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsFamaOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object CdsFamaOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object CdsFamaCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object CdsFamaOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
      Required = True
    end
    object CdsFamaVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
    end
    object CdsFamaOTM_KILOM: TWideStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object CdsFamaOTM_OBSERV: TWideStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 300
    end
    object CdsFamaOTM_SUBT: TBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object CdsFamaOTM_VR_IVA: TBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsFamaOTM_VR_DESC: TBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object CdsFamaOTM_VR_TOTAL: TBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsFamaFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object CdsFamaOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object CdsFamaOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
    end
  end
  object DspFama: TDataSetProvider
    DataSet = QryFama
    Left = 624
    Top = 56
  end
  object QryFama: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ORDENTIM'
      'where OTM_CODI = :P_OTM_CODI'
      ' AND CLI_CODI = :P_CLI_CODI')
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 743
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_OTM_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_CLI_CODI'
        ParamType = ptUnknown
      end>
    object QryFamaOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFamaOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object QryFamaOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object QryFamaCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object QryFamaOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
      Required = True
    end
    object QryFamaVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
    end
    object QryFamaOTM_KILOM: TIBStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object QryFamaOTM_OBSERV: TIBStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 300
    end
    object QryFamaOTM_SUBT: TIBBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object QryFamaOTM_VR_IVA: TIBBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryFamaOTM_VR_DESC: TIBBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object QryFamaOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryFamaFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object QryFamaOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object QryFamaOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
      Origin = '"ORDENTIM"."OTM_FECHA_VENCE"'
    end
  end
  object UpdFama: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  OTM_CODI,'
      '  OTM_CLASE_DOC,'
      '  OTM_NUME,'
      '  CLI_CODI,'
      '  OTM_FECHA,'
      '  VXC_CODI,'
      '  OTM_KILOM,'
      '  OTM_OBSERV,'
      '  OTM_SUBT,'
      '  OTM_VR_IVA,'
      '  OTM_VR_DESC,'
      '  OTM_VR_TOTAL,'
      '  FP_CODI,'
      '  OTM_ESTADO,'
      '  OTM_FECHA_VENCE'
      'from ORDENTIM '
      'where'
      '  OTM_CODI = :OTM_CODI and'
      '  CLI_CODI = :CLI_CODI')
    ModifySQL.Strings = (
      'update ORDENTIM'
      'set'
      '  OTM_CLASE_DOC = :OTM_CLASE_DOC,'
      '  OTM_NUME = :OTM_NUME,'
      '  OTM_FECHA = :OTM_FECHA,'
      '  VXC_CODI = :VXC_CODI,'
      '  OTM_KILOM = :OTM_KILOM,'
      '  OTM_OBSERV = :OTM_OBSERV,'
      '  OTM_SUBT = :OTM_SUBT,'
      '  OTM_VR_IVA = :OTM_VR_IVA,'
      '  OTM_VR_DESC = :OTM_VR_DESC,'
      '  OTM_VR_TOTAL = :OTM_VR_TOTAL,'
      '  FP_CODI = :FP_CODI,'
      '  OTM_ESTADO = :OTM_ESTADO,'
      '  OTM_FECHA_VENCE = :OTM_FECHA_VENCE'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI and'
      '  CLI_CODI = :OLD_CLI_CODI')
    InsertSQL.Strings = (
      'insert into ORDENTIM'
      
        '  (OTM_CLASE_DOC, OTM_NUME, OTM_FECHA, VXC_CODI, OTM_KILOM, OTM_' +
        'OBSERV, '
      
        '   OTM_SUBT, OTM_VR_IVA, OTM_VR_DESC, OTM_VR_TOTAL, FP_CODI, OTM' +
        '_ESTADO,'
      '  OTM_FECHA_VENCE)'
      'values'
      
        '  (:OTM_CLASE_DOC, :OTM_NUME, :OTM_FECHA, :VXC_CODI, :OTM_KILOM,' +
        ' :OTM_OBSERV, '
      
        '   :OTM_SUBT, :OTM_VR_IVA, :OTM_VR_DESC, :OTM_VR_TOTAL, :FP_CODI' +
        ', :OTM_ESTADO,'
      '  :OTM_FECHA_VENCE)')
    DeleteSQL.Strings = (
      'delete from ORDENTIM'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI and'
      '  CLI_CODI = :OLD_CLI_CODI')
    Left = 680
    Top = 10
  end
  object DtsFama: TDataSource
    DataSet = CdsFama
    OnDataChange = DtsFamaDataChange
    Left = 568
    Top = 56
  end
  object QryVeXCli: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select marcavh.mr_nombre, lineavh.li_nombre, VHXCLIENTE.*'
      'from VHXCLIENTE'
      'inner join marcavh on marcavh.mr_codi = vhxcliente.mr_codi'
      'inner join lineavh on lineavh.li_codi = vhxcliente.li_codi'
      'where VHXCLIENTE.CLI_CODI = :P_CLI_CODI')
    UpdateObject = UpdFama
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 623
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_CLI_CODI'
        ParamType = ptInput
      end>
    object QryVeXCliVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"VHXCLIENTE"."VXC_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeXCliCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"VHXCLIENTE"."CLI_CODI"'
    end
    object QryVeXCliVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QryVeXCliMR_CODI: TIntegerField
      FieldName = 'MR_CODI'
      Origin = '"VHXCLIENTE"."MR_CODI"'
      Required = True
    end
    object QryVeXCliLI_CODI: TIntegerField
      FieldName = 'LI_CODI'
      Origin = '"VHXCLIENTE"."LI_CODI"'
    end
    object QryVeXCliVXC_COLOR: TIBStringField
      FieldName = 'VXC_COLOR'
      Origin = '"VHXCLIENTE"."VXC_COLOR"'
      Required = True
    end
    object QryVeXCliVXC_KILO_INI: TFloatField
      FieldName = 'VXC_KILO_INI'
      Origin = '"VHXCLIENTE"."VXC_KILO_INI"'
    end
    object QryVeXCliVXC_KILO_ACT: TFloatField
      FieldName = 'VXC_KILO_ACT'
      Origin = '"VHXCLIENTE"."VXC_KILO_ACT"'
    end
    object QryVeXCliVXC_MODELO: TIntegerField
      FieldName = 'VXC_MODELO'
      Origin = '"VHXCLIENTE"."VXC_MODELO"'
      Required = True
    end
    object QryVeXCliMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryVeXCliLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
  end
  object CdsFade: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DspFade'
    BeforeEdit = CdsFadeBeforeEdit
    BeforePost = CdsFadeBeforePost
    BeforeDelete = CdsFadeBeforeDelete
    AfterScroll = CdsFadeAfterScroll
    OnCalcFields = CdsFadeCalcFields
    OnNewRecord = CdsFadeNewRecord
    Left = 736
    Top = 416
    object CdsFadeOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      Required = True
    end
    object CdsFadeOTD_CONT: TIntegerField
      FieldName = 'OTD_CONT'
      Origin = '"ORDENTID"."OTD_CONT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 100
      MinValue = 1
    end
    object CdsFadePR_CODI: TIntegerField
      FieldName = 'PR_CODI'
      Origin = '"ORDENTID"."PR_CODI"'
      Required = True
      OnValidate = CdsFadePR_CODIValidate
    end
    object CdsFadePR_NOMB: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PR_NOMB'
      Size = 50
    end
    object CdsFadePRO_CBARRAS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PRO_CBARRAS'
      Size = 50
    end
    object CdsFadeOTD_CANT: TBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      OnValidate = CdsFadeOTD_CANTValidate
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_PRECIO: TBCDField
      FieldName = 'OTD_PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      OnValidate = CdsFadeOTD_CANTValidate
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_SBTOTAL: TBCDField
      FieldName = 'OTD_SBTOTAL'
      Origin = '"ORDENTID"."OTD_SBTOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_POR_IVA: TBCDField
      FieldName = 'OTD_POR_IVA'
      Origin = '"ORDENTID"."OTD_POR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_VR_IVA: TBCDField
      FieldName = 'OTD_VR_IVA'
      Origin = '"ORDENTID"."OTD_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_POR_DSC: TBCDField
      FieldName = 'OTD_POR_DSC'
      Origin = '"ORDENTID"."OTD_POR_DSC"'
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_VR_DSC: TBCDField
      FieldName = 'OTD_VR_DSC'
      Origin = '"ORDENTID"."OTD_VR_DSC"'
      OnValidate = CdsFadeOTD_VR_DSCValidate
      Precision = 18
      Size = 2
    end
    object CdsFadeOTD_VR_TOTAL: TBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsFadeEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"ORDENTID"."EMP_CODI"'
      Required = True
    end
    object CdsFadeBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"ORDENTID"."BOD_CODI"'
      Required = True
    end
    object CdsFadeSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(OTD_SBTOTAL)'
    end
    object CdsFadeTOT_DESCUENTO: TAggregateField
      FieldName = 'TOT_DESCUENTO'
      Active = True
      DisplayName = ''
      Expression = 'SUM(OTD_VR_DSC)'
    end
    object CdsFadeTOT_IVA: TAggregateField
      FieldName = 'TOT_IVA'
      Active = True
      DisplayName = ''
      Expression = 'SUM(OTD_VR_IVA)'
    end
    object CdsFadeTOTAL_ORDEN: TAggregateField
      FieldName = 'TOTAL_ORDEN'
      Active = True
      DisplayName = ''
      Expression = 'SUM(OTD_VR_TOTAL)'
    end
  end
  object DspFade: TDataSetProvider
    DataSet = QryFade
    Left = 736
    Top = 472
  end
  object QryFade: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ORDENTID'
      'where OTM_CODI = :P_OTM_CODI')
    UpdateObject = UpdFade
    Left = 672
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_OTM_CODI'
        ParamType = ptUnknown
      end>
    object QryFadeOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      Required = True
    end
    object QryFadeOTD_CONT: TIntegerField
      FieldName = 'OTD_CONT'
      Origin = '"ORDENTID"."OTD_CONT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFadePR_CODI: TIntegerField
      FieldName = 'PR_CODI'
      Origin = '"ORDENTID"."PR_CODI"'
      Required = True
    end
    object QryFadeOTD_CANT: TIBBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_PRECIO: TIBBCDField
      FieldName = 'OTD_PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_SBTOTAL: TIBBCDField
      FieldName = 'OTD_SBTOTAL'
      Origin = '"ORDENTID"."OTD_SBTOTAL"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_POR_IVA: TIBBCDField
      FieldName = 'OTD_POR_IVA'
      Origin = '"ORDENTID"."OTD_POR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_VR_IVA: TIBBCDField
      FieldName = 'OTD_VR_IVA'
      Origin = '"ORDENTID"."OTD_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_POR_DSC: TIBBCDField
      FieldName = 'OTD_POR_DSC'
      Origin = '"ORDENTID"."OTD_POR_DSC"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_VR_DSC: TIBBCDField
      FieldName = 'OTD_VR_DSC'
      Origin = '"ORDENTID"."OTD_VR_DSC"'
      Precision = 18
      Size = 2
    end
    object QryFadeOTD_VR_TOTAL: TIBBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryFadeEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"ORDENTID"."EMP_CODI"'
      Required = True
    end
    object QryFadeBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"ORDENTID"."BOD_CODI"'
      Required = True
    end
  end
  object UpdFade: TIBUpdateSQL
    Left = 672
    Top = 472
  end
  object DtsFade: TDataSource
    DataSet = CdsFade
    Left = 616
    Top = 416
  end
  object DtsEmpleados: TDataSource
    DataSet = QryEmpleados
    Left = 568
    Top = 416
  end
  object QryEmpleados: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT emp_nombre as NombreC, empleados.*'
      'FROM empleados'
      'WHERE EMP_ESTA = '#39'A'#39)
    Left = 744
    Top = 341
    object QryEmpleadosNOMBREC: TIBStringField
      FieldName = 'NOMBREC'
      ProviderFlags = []
      Size = 83
    end
    object QryEmpleadosEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"EMPLEADOS"."EMP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEmpleadosCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"EMPLEADOS"."COD_TIPDO"'
      Required = True
    end
    object QryEmpleadosEMP_NUMDOC: TIBStringField
      FieldName = 'EMP_NUMDOC'
      Origin = '"EMPLEADOS"."EMP_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEmpleadosEMP_TEL_MOVIL: TIBStringField
      FieldName = 'EMP_TEL_MOVIL'
      Origin = '"EMPLEADOS"."EMP_TEL_MOVIL"'
    end
    object QryEmpleadosEMP_TEL_FIJO: TIBStringField
      FieldName = 'EMP_TEL_FIJO'
      Origin = '"EMPLEADOS"."EMP_TEL_FIJO"'
    end
    object QryEmpleadosEMP_DIRECCION: TIBStringField
      FieldName = 'EMP_DIRECCION'
      Origin = '"EMPLEADOS"."EMP_DIRECCION"'
      Size = 30
    end
    object QryEmpleadosEMP_BARRIO: TIBStringField
      FieldName = 'EMP_BARRIO'
      Origin = '"EMPLEADOS"."EMP_BARRIO"'
      Size = 100
    end
    object QryEmpleadosCG_CODI: TIntegerField
      FieldName = 'CG_CODI'
      Origin = '"EMPLEADOS"."CG_CODI"'
      Required = True
    end
    object QryEmpleadosEMP_ESTA: TIBStringField
      FieldName = 'EMP_ESTA'
      Origin = '"EMPLEADOS"."EMP_ESTA"'
      FixedChar = True
      Size = 1
    end
    object QryEmpleadosEMP_NOMBRE: TIBStringField
      FieldName = 'EMP_NOMBRE'
      Origin = '"EMPLEADOS"."EMP_NOMBRE"'
      Required = True
      Size = 60
    end
  end
  object QryListaProductos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT PRODUCTOS.*, COALESCE(STOCK.st_cantidad, 0) st_cantidad, ' +
        'BODEGAS.bod_nombre'
      ', coalesce( (select sum(M.mvi_cantidad) AS CANTIDAD'
      'from movinventario m'
      
        'where m.pro_codi = productos.pro_codi and cast(m.mvi_fecha_docu ' +
        'as date) <= :mvi_fecha_docu'
      '), 0) saldo_real'
      'FROM PRODUCTOS'
      'LEFT JOIN stock ON stock.pro_codi = productos.pro_codi'
      'LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi')
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 663
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mvi_fecha_docu'
        ParamType = ptUnknown
      end>
    object QryListaProductosPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"PRODUCTOS"."PRO_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListaProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryListaProductosPRO_DESCRIPCION: TIBStringField
      FieldName = 'PRO_DESCRIPCION'
      Origin = '"PRODUCTOS"."PRO_DESCRIPCION"'
      Size = 100
    end
    object QryListaProductosPRO_REFERENCIA: TIBStringField
      FieldName = 'PRO_REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
    object QryListaProductosPRO_COD_BARRAS: TIBStringField
      FieldName = 'PRO_COD_BARRAS'
      Origin = '"PRODUCTOS"."PRO_COD_BARRAS"'
      Size = 50
    end
    object QryListaProductosPRO_PRECIO: TIBBCDField
      FieldName = 'PRO_PRECIO'
      Origin = '"PRODUCTOS"."PRO_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryListaProductosPRO_MAXIMO: TSmallintField
      FieldName = 'PRO_MAXIMO'
      Origin = '"PRODUCTOS"."PRO_MAXIMO"'
    end
    object QryListaProductosPRO_MINIMO: TSmallintField
      FieldName = 'PRO_MINIMO'
      Origin = '"PRODUCTOS"."PRO_MINIMO"'
    end
    object QryListaProductosPRO_IVA: TIBBCDField
      FieldName = 'PRO_IVA'
      Origin = '"PRODUCTOS"."PRO_IVA"'
      Precision = 18
      Size = 2
    end
    object QryListaProductosST_CANTIDAD: TIntegerField
      FieldName = 'ST_CANTIDAD'
      Origin = '"STOCK"."ST_CANTIDAD"'
    end
    object QryListaProductosBOD_NOMBRE: TIBStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryListaProductosPRO_CLASE: TIntegerField
      FieldName = 'PRO_CLASE'
      Origin = '"PRODUCTOS"."PRO_CLASE"'
      Required = True
    end
    object QryListaProductosPRO_MARCA: TIBStringField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUCTOS"."PRO_MARCA"'
      Size = 50
    end
    object QryListaProductosPRO_PRESENTACION: TIBStringField
      FieldName = 'PRO_PRESENTACION'
      Origin = '"PRODUCTOS"."PRO_PRESENTACION"'
      Size = 50
    end
    object QryListaProductosSALDO_REAL: TIBBCDField
      FieldName = 'SALDO_REAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object DtsListaProductos: TDataSource
    DataSet = QryListaProductos
    Left = 574
    Top = 343
  end
  object DtsFormaPago: TDataSource
    DataSet = DmGlobal.TblFormaPago
    Left = 517
    Top = 8
  end
  object TraFama: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 736
    Top = 240
  end
  object QryBuscaProducto: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUCTOS'
      'WHERE PRO_CODI = :PRO_CODI')
    Left = 496
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRO_CODI'
        ParamType = ptUnknown
      end>
    object QryBuscaProductoPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"PRODUCTOS"."PRO_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBuscaProductoPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryBuscaProductoPRO_DESCRIPCION: TIBStringField
      FieldName = 'PRO_DESCRIPCION'
      Origin = '"PRODUCTOS"."PRO_DESCRIPCION"'
      Size = 100
    end
    object QryBuscaProductoPRO_REFERENCIA: TIBStringField
      FieldName = 'PRO_REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
    object QryBuscaProductoPRO_COD_BARRAS: TIBStringField
      FieldName = 'PRO_COD_BARRAS'
      Origin = '"PRODUCTOS"."PRO_COD_BARRAS"'
      Size = 50
    end
    object QryBuscaProductoPRO_PRECIO: TIBBCDField
      FieldName = 'PRO_PRECIO'
      Origin = '"PRODUCTOS"."PRO_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryBuscaProductoPRO_MAXIMO: TSmallintField
      FieldName = 'PRO_MAXIMO'
      Origin = '"PRODUCTOS"."PRO_MAXIMO"'
    end
    object QryBuscaProductoPRO_MINIMO: TSmallintField
      FieldName = 'PRO_MINIMO'
      Origin = '"PRODUCTOS"."PRO_MINIMO"'
    end
    object QryBuscaProductoPRO_IVA: TIBBCDField
      FieldName = 'PRO_IVA'
      Origin = '"PRODUCTOS"."PRO_IVA"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryBuscaProductoPRO_CLASE: TIntegerField
      FieldName = 'PRO_CLASE'
      Origin = '"PRODUCTOS"."PRO_CLASE"'
      Required = True
    end
    object QryBuscaProductoPRO_MARCA: TIBStringField
      FieldName = 'PRO_MARCA'
      Origin = '"PRODUCTOS"."PRO_MARCA"'
      Size = 50
    end
    object QryBuscaProductoPRO_PRESENTACION: TIBStringField
      FieldName = 'PRO_PRESENTACION'
      Origin = '"PRODUCTOS"."PRO_PRESENTACION"'
      Size = 50
    end
  end
  object QryUltimaVenta: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select m.otm_fecha,'
      'CASE'
      '  WHEN m.otm_clase_doc = 0 THEN '#39'Orden de Trabajo'#39
      '  WHEN m.otm_clase_doc = 1 THEN '#39'Factura'#39
      'END clase,'
      'CASE'
      '  WHEN m.otm_estado = 0 THEN '#39'En proceso'#39
      '  WHEN m.otm_estado = 1 THEN '#39'Aplicada'#39
      'END estado,'
      'd.pr_codi, '
      'iif(d.otd_precio = 0, 0,'
      
        'iif(:otm_clase_doc = 1, d.otd_precio,(d.otd_precio + (d.otd_vr_i' +
        'va/d.otd_cant)))'
      ') otd_precio'
      'from ordentim m'
      'inner join ordentid d on d.otm_codi = m.otm_codi'
      'where m.cli_codi = :cli_codi'
      '  and m.otm_fecha = (select max(ma.otm_fecha) '
      
        '     from ordentim ma where ma.cli_codi = :cli_codi and ma.otm_c' +
        'odi <> :otm_codi)'
      '  and d.pr_codi = :pr_codi')
    Left = 320
    Top = 616
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'otm_clase_doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otm_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_codi'
        ParamType = ptUnknown
      end>
    object QryUltimaVentaOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryUltimaVentaCLASE: TIBStringField
      FieldName = 'CLASE'
      ProviderFlags = []
      FixedChar = True
      Size = 16
    end
    object QryUltimaVentaESTADO: TIBStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object QryUltimaVentaPR_CODI: TIntegerField
      FieldName = 'PR_CODI'
      Origin = '"ORDENTID"."PR_CODI"'
      Required = True
    end
    object QryUltimaVentaOTD_PRECIO: TIBBCDField
      FieldName = 'OTD_PRECIO'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object DtsUltVenta: TDataSource
    DataSet = QryUltimaVenta
    Left = 320
    Top = 560
  end
  object SqlMovInventario: TIBSQL
    Database = DmGlobal.DbGlobal
    Transaction = TraFama
    Left = 328
    Top = 336
  end
end
