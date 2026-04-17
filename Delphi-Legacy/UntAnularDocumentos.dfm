object FrmAnularDocumentos: TFrmAnularDocumentos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Anular Documentos'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgAnular: TcxPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 680
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabOpAnular
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    Properties.NavigatorPosition = npLeftTop
    Properties.TabSlants.Kind = skCutCorner
    TabSlants.Kind = skCutCorner
    ClientRectBottom = 676
    ClientRectLeft = 4
    ClientRectRight = 796
    ClientRectTop = 4
    object TabOpAnular: TcxTabSheet
      Caption = 'Opciones Anular'
      ImageIndex = 0
      object pnlDetalle: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 97
        Align = alTop
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 6
          Top = 26
          Caption = 'desde'
          ParentColor = False
          ParentFont = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object DateIni: TcxDateEdit
          Left = 53
          Top = 24
          EditValue = 43466d
          ParentFont = False
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
          Properties.DateButtons = [btnClear, btnToday]
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 115
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 66
          Caption = 'hasta'
          ParentColor = False
          ParentFont = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object DateFin: TcxDateEdit
          Left = 53
          Top = 64
          EditValue = 43621d
          ParentFont = False
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
          Properties.DateButtons = [btnClear, btnToday]
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 115
        end
        object BtnBuscar: TcxButton
          Left = 187
          Top = 26
          Width = 48
          Height = 65
          Hint = 'Buscar Documentos'
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Caption = 'Buscar'
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          OptionsImage.ImageIndex = 5
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
          OnClick = BtnBuscarClick
        end
        object GrbDatosAnular: TcxGroupBox
          Left = 336
          Top = 1
          Align = alRight
          Caption = 'Datos para anular'
          TabOrder = 5
          Height = 95
          Width = 455
          object MemDescAnular: TcxMemo
            Left = 2
            Top = 18
            Align = alLeft
            Properties.OnChange = MemDescAnularPropertiesChange
            TabOrder = 0
            Height = 75
            Width = 399
          end
          object BtnAnular: TcxButton
            Left = 405
            Top = 18
            Width = 48
            Height = 75
            Hint = 'Buscar Documentos'
            ParentCustomHint = False
            Align = alRight
            BiDiMode = bdLeftToRight
            Caption = 'Anular'
            Enabled = False
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'LondonLiquidSky'
            OptionsImage.ImageIndex = 6
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
            OnClick = BtnAnularClick
          end
        end
        object cxButton1: TcxButton
          Left = 250
          Top = 26
          Width = 48
          Height = 65
          Caption = 'Listado'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = DmGlobal.ImlBotones
          OptionsImage.Layout = blGlyphTop
          TabOrder = 6
          OnClick = cxButton1Click
        end
      end
      object GrdTiposDocs: TcxGrid
        Left = 0
        Top = 97
        Width = 792
        Height = 575
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        object TvlTiposDocs: TcxGridDBTableView
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
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Hint = 'Agregar'
          Navigator.Buttons.Append.ImageIndex = 6
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Hint = 'Borrar'
          Navigator.Buttons.Delete.ImageIndex = 13
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Hint = 'Editar'
          Navigator.Buttons.Edit.ImageIndex = 8
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Hint = 'Guardar'
          Navigator.Buttons.Post.ImageIndex = 9
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Hint = 'Cancelar'
          Navigator.Buttons.Cancel.ImageIndex = 12
          Navigator.Buttons.Cancel.Visible = False
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
          DataController.DataSource = DtsOrdenes
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
          object TvlTiposDocsOTM_CLASE_DOC: TcxGridDBColumn
            Caption = 'Clase'
            DataBinding.FieldName = 'OTM_CLASE_DOC'
            OnGetDisplayText = TvlTiposDocsOTM_CLASE_DOCGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
          object TvlTiposDocsOTM_NUME: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'OTM_NUME'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object TvlTiposDocsOTM_FECHA: TcxGridDBColumn
            Caption = 'Fecha'
            DataBinding.FieldName = 'OTM_FECHA'
            PropertiesClassName = 'TcxDateEditProperties'
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebNever
            Width = 85
          end
          object TvlTiposDocsCLI_NOMBRE: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_NOMBRE'
            HeaderAlignmentHorz = taCenter
            Width = 205
          end
          object TvlTiposDocsOTM_VR_TOTAL: TcxGridDBColumn
            Caption = 'Vr. Total'
            DataBinding.FieldName = 'OTM_VR_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 131
          end
          object TvlTiposDocsOTM_ESTADO: TcxGridDBColumn
            Caption = 'Estado'
            DataBinding.FieldName = 'OTM_ESTADO'
            OnGetDisplayText = TvlTiposDocsOTM_ESTADOGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object TvlTiposDocsOTM_ANULADO: TcxGridDBColumn
            Caption = 'Anulado'
            DataBinding.FieldName = 'OTM_ANULADO'
            OnGetDisplayText = TvlTiposDocsOTM_ANULADOGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 125
          end
          object TvlTiposDocsModificar: TcxGridDBColumn
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
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderHint = 'Eliminar'
            VisibleForCustomization = False
            VisibleForEditForm = bTrue
            Width = 100
          end
        end
        object LvlTiposDocs: TcxGridLevel
          GridView = TvlTiposDocs
        end
      end
    end
    object tabDocumentos: TcxTabSheet
      Caption = 'Documentos Anulados'
      ImageIndex = 1
      object pnlMaestroDoc: TPanel
        Left = 0
        Top = 73
        Width = 792
        Height = 249
        Align = alTop
        TabOrder = 0
        object GridEncabezado: TcxGrid
          Left = 1
          Top = 1
          Width = 790
          Height = 247
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvEncabezado: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Images = DmGlobal.ImLNavegador16
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
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Append.Hint = 'Agregar'
            Navigator.Buttons.Append.ImageIndex = 6
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Hint = 'Borrar'
            Navigator.Buttons.Delete.ImageIndex = 13
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Hint = 'Editar'
            Navigator.Buttons.Edit.ImageIndex = 8
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Hint = 'Guardar'
            Navigator.Buttons.Post.ImageIndex = 9
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Hint = 'Cancelar'
            Navigator.Buttons.Cancel.ImageIndex = 12
            Navigator.Buttons.Cancel.Visible = False
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
            DataController.DataSource = DtsDoan
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
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.Content = DmGlobal.ContenidoLetra
            Styles.Header = DmGlobal.Titulos
            object TvEncabezadoDOAN_CLASEDOC: TcxGridDBColumn
              Caption = 'Clase'
              DataBinding.FieldName = 'DOAN_CLASEDOC'
              OnGetDisplayText = TvEncabezadoDOAN_CLASEDOCGetDisplayText
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 76
            end
            object TvEncabezadoDOAN_DOC_NUME: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'DOAN_DOC_NUME'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 75
            end
            object TvEncabezadoCLI_NOMBRE: TcxGridDBColumn
              Caption = 'Cliente'
              DataBinding.FieldName = 'CLI_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 215
            end
            object TvEncabezadoOTM_FECHA: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'OTM_FECHA'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.SaveTime = False
              Properties.ShowTime = False
              Properties.ShowToday = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 96
            end
            object TvEncabezadoOTM_VR_TOTAL: TcxGridDBColumn
              Caption = 'Vr Total'
              DataBinding.FieldName = 'OTM_VR_TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 108
            end
            object TvEncabezadoDOAN_MOTIVO: TcxGridDBColumn
              Caption = 'Motivo'
              DataBinding.FieldName = 'DOAN_MOTIVO'
              PropertiesClassName = 'TcxMemoProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              Width = 205
            end
          end
          object LvlEncabezado: TcxGridLevel
            GridView = TvEncabezado
          end
        end
      end
      object pnlDetalleDoc: TPanel
        Left = 0
        Top = 322
        Width = 792
        Height = 350
        Align = alClient
        TabOrder = 1
        object GrdiDetalle: TcxGrid
          Left = 1
          Top = 1
          Width = 790
          Height = 348
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvDetalle: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Images = DmGlobal.ImLNavegador16
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
            Navigator.Buttons.Append.Enabled = False
            Navigator.Buttons.Append.Hint = 'Agregar'
            Navigator.Buttons.Append.ImageIndex = 6
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Enabled = False
            Navigator.Buttons.Delete.Hint = 'Borrar'
            Navigator.Buttons.Delete.ImageIndex = 13
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Hint = 'Editar'
            Navigator.Buttons.Edit.ImageIndex = 8
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Hint = 'Guardar'
            Navigator.Buttons.Post.ImageIndex = 9
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Enabled = False
            Navigator.Buttons.Cancel.Hint = 'Cancelar'
            Navigator.Buttons.Cancel.ImageIndex = 12
            Navigator.Buttons.Cancel.Visible = False
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
            DataController.DataSource = DtsDoanDet
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
            object TvDetalleBOD_NOMBRE: TcxGridDBColumn
              Caption = 'Bodega'
              DataBinding.FieldName = 'BOD_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object TvDetallePRO_NOMBRE: TcxGridDBColumn
              Caption = 'Producto'
              DataBinding.FieldName = 'PRO_NOMBRE'
              HeaderAlignmentHorz = taCenter
              Width = 318
            end
            object TvDetalleOTM_CODI: TcxGridDBColumn
              DataBinding.FieldName = 'OTM_CODI'
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
            end
            object TvDetalleOTD_CANT: TcxGridDBColumn
              Caption = 'Cantidad'
              DataBinding.FieldName = 'OTD_CANT'
              HeaderAlignmentHorz = taCenter
              Width = 125
            end
            object TvDetalleOTD_PRECIO: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'OTD_PRECIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 124
            end
            object TvDetalleOTD_VR_TOTAL: TcxGridDBColumn
              Caption = 'Vr. Total'
              DataBinding.FieldName = 'OTD_VR_TOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 123
            end
          end
          object LvlDetalle: TcxGridLevel
            GridView = TvDetalle
          end
        end
      end
      object pnlBotones: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 73
        Align = alTop
        TabOrder = 2
        object BtnVolver: TcxButton
          Left = 726
          Top = 2
          Width = 48
          Height = 65
          Caption = 'Volver'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.ImageIndex = 13
          OptionsImage.Images = DmGlobal.ImlBotones
          OptionsImage.Layout = blGlyphTop
          TabOrder = 0
          OnClick = BtnVolverClick
        end
      end
    end
  end
  object QryOrdenes: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraAnular
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT M.*, C.cli_nombre'
      'FROM ordentim M'
      'INNER JOIN CLIENTES C ON C.cli_codi = M.cli_codi'
      'WHERE M.otm_fecha BETWEEN :FECHAINI AND :FECHAFIN')
    Left = 568
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAFIN'
        ParamType = ptUnknown
      end>
    object QryOrdenesOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryOrdenesOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
      ProviderFlags = []
    end
    object QryOrdenesOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
      ProviderFlags = []
    end
    object QryOrdenesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      ProviderFlags = []
      Required = True
    end
    object QryOrdenesOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
      ProviderFlags = []
    end
    object QryOrdenesVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      ProviderFlags = []
      Required = True
    end
    object QryOrdenesOTM_KILOM: TIBStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      ProviderFlags = []
      Size = 10
    end
    object QryOrdenesOTM_OBSERV: TIBStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      ProviderFlags = []
      Size = 2000
    end
    object QryOrdenesOTM_SUBT: TIBBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_IVA: TIBBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_DESC: TIBBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      ProviderFlags = []
      Required = True
    end
    object QryOrdenesOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
      ProviderFlags = []
    end
    object QryOrdenesOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
      Origin = '"ORDENTIM"."OTM_FECHA_VENCE"'
      ProviderFlags = []
    end
    object QryOrdenesOTM_ANULADO: TIntegerField
      FieldName = 'OTM_ANULADO'
      Origin = '"ORDENTIM"."OTM_ANULADO"'
    end
    object QryOrdenesCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
  end
  object TraAnular: TIBTransaction
    Active = True
    DefaultDatabase = DmGlobal.DbGlobal
    Left = 456
    Top = 16
  end
  object CdsOrdenes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOrdenes'
    AfterScroll = CdsOrdenesAfterScroll
    Left = 640
    Top = 16
    object CdsOrdenesOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object CdsOrdenesOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
      ProviderFlags = []
    end
    object CdsOrdenesOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
      ProviderFlags = []
    end
    object CdsOrdenesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      ProviderFlags = []
      Required = True
    end
    object CdsOrdenesOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
      ProviderFlags = []
    end
    object CdsOrdenesVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      ProviderFlags = []
      Required = True
    end
    object CdsOrdenesOTM_KILOM: TWideStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      ProviderFlags = []
      Size = 10
    end
    object CdsOrdenesOTM_OBSERV: TWideStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      ProviderFlags = []
      Size = 2000
    end
    object CdsOrdenesOTM_SUBT: TBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_IVA: TBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_DESC: TBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_TOTAL: TBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      ProviderFlags = []
      Required = True
    end
    object CdsOrdenesOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
      ProviderFlags = []
    end
    object CdsOrdenesOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
      Origin = '"ORDENTIM"."OTM_FECHA_VENCE"'
      ProviderFlags = []
    end
    object CdsOrdenesOTM_ANULADO: TIntegerField
      FieldName = 'OTM_ANULADO'
      Origin = '"ORDENTIM"."OTM_ANULADO"'
    end
    object CdsOrdenesCLI_NOMBRE: TWideStringField
      FieldName = 'CLI_NOMBRE'
      Required = True
      Size = 255
    end
  end
  object DspOrdenes: TDataSetProvider
    DataSet = QryOrdenes
    Left = 640
    Top = 64
  end
  object DtsOrdenes: TDataSource
    DataSet = CdsOrdenes
    Left = 568
    Top = 64
  end
  object UpdAnularDoc: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordentim '
      'where'
      '  OTM_CODI = :OTM_CODI')
    ModifySQL.Strings = (
      'update ordentim'
      'set'
      '  OTM_ANULADO = :OTM_ANULADO,'
      '  OTM_SUBT = :OTM_SUBT,'
      '  OTM_VR_IVA = :OTM_VR_IVA,'
      '  OTM_VR_DESC = :OTM_VR_DESC,'
      '  OTM_VR_TOTAL = :OTM_VR_TOTAL'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI')
    InsertSQL.Strings = (
      '')
    Left = 504
    Top = 16
  end
  object SqlInsertar: TIBSQL
    Database = DmGlobal.DbGlobal
    Transaction = TraAnular
    Left = 744
    Top = 16
  end
  object QryDoan: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraAnular
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT a.*, c.cli_nombre, m.otm_fecha, m.otm_vr_total'
      'FROM doanulados a'
      'inner join ordentim m on m.otm_codi = a.doan_doc_codi'
      'inner join clientes c on c.cli_codi = m.cli_codi')
    Left = 708
    Top = 186
    object QryDoanDOAN_CODI: TIntegerField
      FieldName = 'DOAN_CODI'
      Origin = '"DOANULADOS"."DOAN_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDoanDOAN_CLASEDOC: TIntegerField
      FieldName = 'DOAN_CLASEDOC'
      Origin = '"DOANULADOS"."DOAN_CLASEDOC"'
    end
    object QryDoanDOAN_DOC_CODI: TIntegerField
      FieldName = 'DOAN_DOC_CODI'
      Origin = '"DOANULADOS"."DOAN_DOC_CODI"'
      Required = True
    end
    object QryDoanDOAN_DOC_NUME: TIntegerField
      FieldName = 'DOAN_DOC_NUME'
      Origin = '"DOANULADOS"."DOAN_DOC_NUME"'
      Required = True
    end
    object QryDoanDOAN_MOTIVO: TIBStringField
      FieldName = 'DOAN_MOTIVO'
      Origin = '"DOANULADOS"."DOAN_MOTIVO"'
      Required = True
      Size = 200
    end
    object QryDoanCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
    end
    object QryDoanOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryDoanOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
  end
  object CdsDoan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DtpDoan'
    AfterScroll = CdsDoanAfterScroll
    Left = 628
    Top = 186
    object CdsDoanDOAN_CODI: TIntegerField
      FieldName = 'DOAN_CODI'
      Required = True
    end
    object CdsDoanDOAN_CLASEDOC: TIntegerField
      FieldName = 'DOAN_CLASEDOC'
    end
    object CdsDoanDOAN_DOC_CODI: TIntegerField
      FieldName = 'DOAN_DOC_CODI'
      Required = True
    end
    object CdsDoanDOAN_DOC_NUME: TIntegerField
      FieldName = 'DOAN_DOC_NUME'
      Required = True
    end
    object CdsDoanDOAN_MOTIVO: TWideStringField
      FieldName = 'DOAN_MOTIVO'
      Required = True
      Size = 200
    end
    object CdsDoanCLI_NOMBRE: TWideStringField
      FieldName = 'CLI_NOMBRE'
      Required = True
    end
    object CdsDoanOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
    end
    object CdsDoanOTM_VR_TOTAL: TBCDField
      FieldName = 'OTM_VR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DtpDoan: TDataSetProvider
    DataSet = QryDoan
    Left = 556
    Top = 186
  end
  object DtsDoan: TDataSource
    DataSet = CdsDoan
    Left = 492
    Top = 186
  end
  object QryDoanDet: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraAnular
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT D.otm_codi, d.otd_cant, d.otd_precio, d.otd_vr_total, P.p' +
        'ro_nombre, B.bod_nombre'
      'FROM ordentid D'
      'INNER JOIN PRODUCTOS P ON P.pro_codi = D.pr_codi'
      'INNER JOIN BODEGAS B ON B.bod_codi = D.bod_codi'
      'WHERE D.otm_codi = :OTM_CODI')
    Left = 716
    Top = 442
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OTM_CODI'
        ParamType = ptUnknown
      end>
    object QryDoanDetOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDoanDetOTD_CANT: TIBBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object QryDoanDetOTD_PRECIO: TIBBCDField
      FieldName = 'OTD_PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryDoanDetOTD_VR_TOTAL: TIBBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryDoanDetPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryDoanDetBOD_NOMBRE: TIBStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
  end
  object CdsDoanDet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDoanDet'
    Left = 628
    Top = 442
    object CdsDoanDetOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Required = True
    end
    object CdsDoanDetOTD_CANT: TBCDField
      FieldName = 'OTD_CANT'
      Precision = 18
      Size = 2
    end
    object CdsDoanDetOTD_PRECIO: TBCDField
      FieldName = 'OTD_PRECIO'
      Precision = 18
      Size = 2
    end
    object CdsDoanDetOTD_VR_TOTAL: TBCDField
      FieldName = 'OTD_VR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CdsDoanDetPRO_NOMBRE: TWideStringField
      FieldName = 'PRO_NOMBRE'
      Required = True
      Size = 50
    end
    object CdsDoanDetBOD_NOMBRE: TWideStringField
      FieldName = 'BOD_NOMBRE'
      Required = True
      Size = 50
    end
  end
  object DspDoanDet: TDataSetProvider
    DataSet = QryDoanDet
    Left = 556
    Top = 442
  end
  object DtsDoanDet: TDataSource
    DataSet = CdsDoanDet
    Left = 492
    Top = 442
  end
  object QryProductosDet: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraAnular
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT D.otd_cont, d.pr_codi, d.bod_codi'
      'FROM ordentid D'
      'WHERE D.otm_codi = :otm_codi')
    Left = 484
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'otm_codi'
        ParamType = ptUnknown
      end>
    object QryProductosDetOTD_CONT: TIntegerField
      FieldName = 'OTD_CONT'
      Origin = '"ORDENTID"."OTD_CONT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProductosDetPR_CODI: TIntegerField
      FieldName = 'PR_CODI'
      Origin = '"ORDENTID"."PR_CODI"'
      Required = True
    end
    object QryProductosDetBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"ORDENTID"."BOD_CODI"'
      Required = True
    end
  end
end
