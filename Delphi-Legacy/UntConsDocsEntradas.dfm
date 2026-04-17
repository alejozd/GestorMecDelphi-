object FrmConsDocsEntradas: TFrmConsDocsEntradas
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consultar Entradas'
  ClientHeight = 622
  ClientWidth = 1055
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 62
    Align = alTop
    TabOrder = 0
    object DateIni: TcxDateEdit
      Left = 50
      Top = 17
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
      TabOrder = 0
      Width = 115
    end
    object DateFin: TcxDateEdit
      Left = 216
      Top = 17
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
    object cxLabel1: TcxLabel
      Left = 6
      Top = 19
      Caption = 'desde'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 173
      Top = 19
      Caption = 'hasta'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object BtnImprimir: TcxButton
      Left = 465
      Top = 2
      Width = 48
      Height = 54
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
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 626
      Top = 9
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
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Hint = 'Refrescar'
      Buttons.Refresh.ImageIndex = 10
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = DtsDocumentos
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object BtnBuscar: TcxButton
      Left = 348
      Top = 2
      Width = 48
      Height = 54
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
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnBuscarClick
    end
    object BtnVerDoc: TcxButton
      Left = 407
      Top = 2
      Width = 48
      Height = 54
      Hint = 'Ver documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Ver'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnVerDocClick
    end
    object BtnEliminar: TcxButton
      Left = 570
      Top = 2
      Width = 48
      Height = 54
      Hint = 'Eliminar documento'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Eliminar'
      Enabled = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DmGlobal.ImlBotones
      OptionsImage.Layout = blGlyphTop
      ParentBiDiMode = False
      ParentShowHint = False
      PopupAlignment = paRight
      ShowHint = True
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnEliminarClick
    end
    object BtnCancelar: TcxButton
      Left = 995
      Top = 2
      Width = 52
      Height = 59
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
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnCancelarClick
    end
  end
  object pnlDetalle: TPanel
    Left = 0
    Top = 62
    Width = 1055
    Height = 560
    Align = alClient
    TabOrder = 1
    object GrdDocumentos: TcxGrid
      Left = 1
      Top = 1
      Width = 1053
      Height = 259
      Align = alTop
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object CavDocumentos: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.FocusViewOnApplyFilter = True
        DataController.DataSource = DtsDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.CardExpanding = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 307
        Styles.CardBorder = DmGlobal.ContenidoSeleccion
        object CavDocumentosOTM_CLASE_DOC: TcxGridDBCardViewRow
          DataBinding.FieldName = 'OTM_CLASE_DOC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Options.ShowCaption = False
          Position.BeginsLayer = True
          Styles.Content = DmGlobal.Titulos
          IsCaptionAssigned = True
        end
        object CavDocumentosOTM_NUME: TcxGridDBCardViewRow
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'OTM_NUME'
          Position.BeginsLayer = False
          Styles.Content = DmGlobal.Titulos
        end
        object CavDocumentosOTM_ESTADO: TcxGridDBCardViewRow
          Caption = 'Estado'
          DataBinding.FieldName = 'OTM_ESTADO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_FECHA: TcxGridDBCardViewRow
          DataBinding.FieldName = 'OTM_FECHA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ShowTime = False
          Options.ShowCaption = False
          Position.BeginsLayer = False
          IsCaptionAssigned = True
        end
        object CavDocumentosNOMCOMP: TcxGridDBCardViewRow
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOMCOMP'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosTD_ABREVIADO: TcxGridDBCardViewRow
          Caption = 'Tipo Doc'
          DataBinding.FieldName = 'TD_ABREVIADO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosCLI_NUMDOC: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CLI_NUMDOC'
          Options.ShowCaption = False
          Position.BeginsLayer = False
          IsCaptionAssigned = True
        end
        object CavDocumentosCLI_CORREOE: TcxGridDBCardViewRow
          Caption = 'Correo Electronico'
          DataBinding.FieldName = 'CLI_CORREOE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosCLI_TEL_FIJO: TcxGridDBCardViewRow
          Caption = 'Tel fijo'
          DataBinding.FieldName = 'CLI_TEL_FIJO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosCLI_TEL_MOVIL: TcxGridDBCardViewRow
          Caption = 'Tel Movil'
          DataBinding.FieldName = 'CLI_TEL_MOVIL'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosMR_NOMBRE: TcxGridDBCardViewRow
          Caption = 'Marca'
          DataBinding.FieldName = 'MR_NOMBRE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosLI_NOMBRE: TcxGridDBCardViewRow
          Caption = 'Linea'
          DataBinding.FieldName = 'LI_NOMBRE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosVXC_PLACA: TcxGridDBCardViewRow
          Caption = 'Placa'
          DataBinding.FieldName = 'VXC_PLACA'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_KILOM: TcxGridDBCardViewRow
          Caption = 'Kilometraje'
          DataBinding.FieldName = 'OTM_KILOM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_SUBT: TcxGridDBCardViewRow
          Caption = 'SubTotal'
          DataBinding.FieldName = 'OTM_SUBT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_VR_DESC: TcxGridDBCardViewRow
          Caption = 'Descuento'
          DataBinding.FieldName = 'OTM_VR_DESC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_VR_IVA: TcxGridDBCardViewRow
          Caption = 'I.V.A.'
          DataBinding.FieldName = 'OTM_VR_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_VR_TOTAL: TcxGridDBCardViewRow
          Caption = 'TOTAL'
          DataBinding.FieldName = 'OTM_VR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Content = DmGlobal.ContentCard
          Styles.Caption = DmGlobal.LabelCard
        end
        object CavDocumentosOTM_OBSERV: TcxGridDBCardViewRow
          Caption = 'Observaciones'
          DataBinding.FieldName = 'OTM_OBSERV'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
      end
      object TvBMasterDocs: TcxGridDBBandedTableView
        OnKeyPress = TvBMasterDocsKeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = TvBMasterDocsCellDblClick
        DataController.DataSource = DtsDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'OTM_CODI'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        Styles.Content = DmGlobal.Contenido
        Styles.Header = DmGlobal.TitulosDetalle
        Styles.BandHeader = DmGlobal.TitulosDetalle
        Bands = <
          item
            Caption = 'Datos Basicos'
            FixedKind = fkLeft
            Options.Moving = False
            Width = 232
          end
          item
            Caption = 'Datos Encabezado'
            Width = 803
          end
          item
            Caption = 'Valores Documento'
            FixedKind = fkRight
            Width = 100
          end>
        object TvBMasterDocsENT_CODI: TcxGridDBBandedColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'ENT_CODI'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bTrue
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBMasterDocsENT_NUME: TcxGridDBBandedColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'ENT_NUME'
          HeaderAlignmentHorz = taCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_CODI: TcxGridDBBandedColumn
          Caption = 'Cod Proveedor'
          DataBinding.FieldName = 'PRV_CODI'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bTrue
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBMasterDocsENT_FECHA: TcxGridDBBandedColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'ENT_FECHA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 83
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBMasterDocsENT_ESTADO: TcxGridDBBandedColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'ENT_ESTADO'
          OnGetDisplayText = TvBMasterDocsENT_ESTADOGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Proveedor'
          DataBinding.FieldName = 'PRV_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 203
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_NUMDOC: TcxGridDBBandedColumn
          Caption = 'Num.Documento'
          DataBinding.FieldName = 'PRV_NUMDOC'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBMasterDocsTD_ABREVIADO: TcxGridDBBandedColumn
          Caption = 'Tipo de Documento'
          DataBinding.FieldName = 'TD_ABREVIADO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_TEL_MOVIL: TcxGridDBBandedColumn
          Caption = 'Tel Movil'
          DataBinding.FieldName = 'PRV_TEL_MOVIL'
          HeaderAlignmentHorz = taCenter
          Width = 104
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_TEL_FIJO: TcxGridDBBandedColumn
          Caption = 'Tel Fijo'
          DataBinding.FieldName = 'PRV_TEL_FIJO'
          HeaderAlignmentHorz = taCenter
          Width = 104
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_DIRECCION: TcxGridDBBandedColumn
          Caption = 'Direcci'#243'n'
          DataBinding.FieldName = 'PRV_DIRECCION'
          HeaderAlignmentHorz = taCenter
          Width = 165
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object TvBMasterDocsPRV_CORREOE: TcxGridDBBandedColumn
          Caption = 'Correo Electr'#243'nico'
          DataBinding.FieldName = 'PRV_CORREOE'
          HeaderAlignmentHorz = taCenter
          Width = 134
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object TvBMasterDocsENT_OBSERVACIONES: TcxGridDBBandedColumn
          Caption = 'Observaciones'
          DataBinding.FieldName = 'ENT_OBSERVACIONES'
          PropertiesClassName = 'TcxBlobEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object TvBMasterDocsENT_VR_TOTAL: TcxGridDBBandedColumn
          Caption = 'Vr. Total'
          DataBinding.FieldName = 'ENT_VR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 203
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object LvlDocumentos: TcxGridLevel
        GridView = TvBMasterDocs
      end
    end
    object GrdDetalle: TcxGrid
      Left = 1
      Top = 260
      Width = 1053
      Height = 299
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object cxGridDBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.FocusViewOnApplyFilter = True
        DataController.DataSource = DtsDocumentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsCustomize.CardExpanding = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 307
        Styles.CardBorder = DmGlobal.ContenidoSeleccion
        object cxGridDBCardViewRow1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'OTM_CLASE_DOC'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Options.ShowCaption = False
          Position.BeginsLayer = True
          Styles.Content = DmGlobal.Titulos
          IsCaptionAssigned = True
        end
        object cxGridDBCardViewRow2: TcxGridDBCardViewRow
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'OTM_NUME'
          Position.BeginsLayer = False
          Styles.Content = DmGlobal.Titulos
        end
        object cxGridDBCardViewRow3: TcxGridDBCardViewRow
          Caption = 'Estado'
          DataBinding.FieldName = 'OTM_ESTADO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow4: TcxGridDBCardViewRow
          DataBinding.FieldName = 'OTM_FECHA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ShowTime = False
          Options.ShowCaption = False
          Position.BeginsLayer = False
          IsCaptionAssigned = True
        end
        object cxGridDBCardViewRow5: TcxGridDBCardViewRow
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOMCOMP'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow6: TcxGridDBCardViewRow
          Caption = 'Tipo Doc'
          DataBinding.FieldName = 'TD_ABREVIADO'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow7: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CLI_NUMDOC'
          Options.ShowCaption = False
          Position.BeginsLayer = False
          IsCaptionAssigned = True
        end
        object cxGridDBCardViewRow8: TcxGridDBCardViewRow
          Caption = 'Correo Electronico'
          DataBinding.FieldName = 'CLI_CORREOE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow9: TcxGridDBCardViewRow
          Caption = 'Tel fijo'
          DataBinding.FieldName = 'CLI_TEL_FIJO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow10: TcxGridDBCardViewRow
          Caption = 'Tel Movil'
          DataBinding.FieldName = 'CLI_TEL_MOVIL'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow11: TcxGridDBCardViewRow
          Caption = 'Marca'
          DataBinding.FieldName = 'MR_NOMBRE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow12: TcxGridDBCardViewRow
          Caption = 'Linea'
          DataBinding.FieldName = 'LI_NOMBRE'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow13: TcxGridDBCardViewRow
          Caption = 'Placa'
          DataBinding.FieldName = 'VXC_PLACA'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow14: TcxGridDBCardViewRow
          Caption = 'Kilometraje'
          DataBinding.FieldName = 'OTM_KILOM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Position.BeginsLayer = False
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow15: TcxGridDBCardViewRow
          Caption = 'SubTotal'
          DataBinding.FieldName = 'OTM_SUBT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow16: TcxGridDBCardViewRow
          Caption = 'Descuento'
          DataBinding.FieldName = 'OTM_VR_DESC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow17: TcxGridDBCardViewRow
          Caption = 'I.V.A.'
          DataBinding.FieldName = 'OTM_VR_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow18: TcxGridDBCardViewRow
          Caption = 'TOTAL'
          DataBinding.FieldName = 'OTM_VR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Position.BeginsLayer = True
          Styles.Content = DmGlobal.ContentCard
          Styles.Caption = DmGlobal.LabelCard
        end
        object cxGridDBCardViewRow19: TcxGridDBCardViewRow
          Caption = 'Observaciones'
          DataBinding.FieldName = 'OTM_OBSERV'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          Position.BeginsLayer = True
          Styles.Caption = DmGlobal.LabelCard
        end
      end
      object TvBDetalle: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DtsDetalle
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        Styles.Content = DmGlobal.Contenido
        Styles.Header = DmGlobal.TitulosDetalle
        Styles.BandHeader = DmGlobal.TitulosDetalle
        Bands = <
          item
            Caption = 'Datos Basicos'
            Options.Moving = False
          end
          item
            Caption = 'Valores'
            FixedKind = fkRight
          end>
        object TvBDetalleENT_CODI: TcxGridDBBandedColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'ENT_CODI'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBDetallePRO_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Producto'
          DataBinding.FieldName = 'PRO_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBDetalleBOD_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Bodega'
          DataBinding.FieldName = 'BOD_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBDetalleEND_CANT: TcxGridDBBandedColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'END_CANT'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBDetalleEND_PRECIO: TcxGridDBBandedColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'END_PRECIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object LvlDetalle: TcxGridLevel
        GridView = TvBDetalle
      end
    end
  end
  object QryDocumentos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraDocs
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT M.ent_codi, m.ent_nume, m.prv_codi, m.ent_fecha,'
      
        'm.ent_observaciones, m.ent_vr_total, m.ent_estado, PV.prv_nombre' +
        ','
      
        'PV.prv_numdoc, T.td_abreviado, PV.prv_tel_movil, PV.prv_tel_fijo' +
        ','
      'PV.prv_direccion, PV.prv_correoe'
      'FROM entradasm M'
      'INNER JOIN PROVEEDORES PV ON PV.prv_codi = M.prv_codi'
      'LEFT JOIN tipdocumentos T ON T.td_codi = PV.cod_tipdo'
      'ORDER BY M.ent_nume ASC')
    UpdateObject = UpdDocumentos
    Left = 992
    Top = 8
    object QryDocumentosENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Origin = '"ENTRADASM"."ENT_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDocumentosENT_NUME: TIntegerField
      FieldName = 'ENT_NUME'
      Origin = '"ENTRADASM"."ENT_NUME"'
    end
    object QryDocumentosPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Origin = '"ENTRADASM"."PRV_CODI"'
      Required = True
    end
    object QryDocumentosENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
      Origin = '"ENTRADASM"."ENT_FECHA"'
    end
    object QryDocumentosENT_OBSERVACIONES: TIBStringField
      FieldName = 'ENT_OBSERVACIONES'
      Origin = '"ENTRADASM"."ENT_OBSERVACIONES"'
      Size = 2000
    end
    object QryDocumentosENT_VR_TOTAL: TIBBCDField
      FieldName = 'ENT_VR_TOTAL'
      Origin = '"ENTRADASM"."ENT_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryDocumentosENT_ESTADO: TIntegerField
      FieldName = 'ENT_ESTADO'
      Origin = '"ENTRADASM"."ENT_ESTADO"'
    end
    object QryDocumentosPRV_NUMDOC: TIBStringField
      FieldName = 'PRV_NUMDOC'
      Origin = '"PROVEEDORES"."PRV_NUMDOC"'
      Required = True
    end
    object QryDocumentosTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryDocumentosPRV_TEL_MOVIL: TIBStringField
      FieldName = 'PRV_TEL_MOVIL'
      Origin = '"PROVEEDORES"."PRV_TEL_MOVIL"'
    end
    object QryDocumentosPRV_TEL_FIJO: TIBStringField
      FieldName = 'PRV_TEL_FIJO'
      Origin = '"PROVEEDORES"."PRV_TEL_FIJO"'
    end
    object QryDocumentosPRV_CORREOE: TIBStringField
      FieldName = 'PRV_CORREOE'
      Origin = '"PROVEEDORES"."PRV_CORREOE"'
      Size = 30
    end
    object QryDocumentosPRV_NOMBRE: TIBStringField
      FieldName = 'PRV_NOMBRE'
      Origin = '"PROVEEDORES"."PRV_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryDocumentosPRV_DIRECCION: TIBStringField
      FieldName = 'PRV_DIRECCION'
      Origin = '"PROVEEDORES"."PRV_DIRECCION"'
      Size = 255
    end
  end
  object CdsDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDocumentos'
    AfterScroll = CdsDocumentosAfterScroll
    Left = 912
    Top = 8
    object CdsDocumentosENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Required = True
    end
    object CdsDocumentosENT_NUME: TIntegerField
      FieldName = 'ENT_NUME'
    end
    object CdsDocumentosPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Required = True
    end
    object CdsDocumentosENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
    end
    object CdsDocumentosENT_OBSERVACIONES: TWideStringField
      FieldName = 'ENT_OBSERVACIONES'
      Size = 2000
    end
    object CdsDocumentosENT_VR_TOTAL: TBCDField
      FieldName = 'ENT_VR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CdsDocumentosENT_ESTADO: TIntegerField
      FieldName = 'ENT_ESTADO'
    end
    object CdsDocumentosPRV_NOMBRE: TWideStringField
      FieldName = 'PRV_NOMBRE'
      Required = True
      Size = 60
    end
    object CdsDocumentosPRV_NUMDOC: TWideStringField
      FieldName = 'PRV_NUMDOC'
      Required = True
    end
    object CdsDocumentosTD_ABREVIADO: TWideStringField
      FieldName = 'TD_ABREVIADO'
      Size = 10
    end
    object CdsDocumentosPRV_TEL_MOVIL: TWideStringField
      FieldName = 'PRV_TEL_MOVIL'
    end
    object CdsDocumentosPRV_TEL_FIJO: TWideStringField
      FieldName = 'PRV_TEL_FIJO'
    end
    object CdsDocumentosPRV_DIRECCION: TWideStringField
      FieldName = 'PRV_DIRECCION'
      Size = 30
    end
    object CdsDocumentosPRV_CORREOE: TWideStringField
      FieldName = 'PRV_CORREOE'
      Size = 30
    end
  end
  object DtsDocumentos: TDataSource
    DataSet = CdsDocumentos
    OnDataChange = DtsDocumentosDataChange
    Left = 912
    Top = 65
  end
  object DspDocumentos: TDataSetProvider
    DataSet = QryDocumentos
    Left = 992
    Top = 65
  end
  object QryDetalle: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraDocs
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT D.ent_codi, P.pro_nombre, B.bod_nombre, D.end_cant, D.end' +
        '_precio'
      'FROM entradadet d'
      'left join productos P ON P.pro_codi = D.pro_codi'
      'LEFT join bodegas B ON B.bod_codi = D.bod_codi'
      'WHERE D.ent_codi = :ent_codi')
    UpdateObject = UpdDetalle
    Left = 992
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ent_codi'
        ParamType = ptUnknown
      end>
    object QryDetalleENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Origin = '"ENTRADADET"."ENT_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Size = 50
    end
    object QryDetalleBOD_NOMBRE: TIBStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Size = 50
    end
    object QryDetalleEND_CANT: TIBBCDField
      FieldName = 'END_CANT'
      Origin = '"ENTRADADET"."END_CANT"'
      Precision = 18
      Size = 2
    end
    object QryDetalleEND_PRECIO: TIBBCDField
      FieldName = 'END_PRECIO'
      Origin = '"ENTRADADET"."END_PRECIO"'
      Precision = 18
      Size = 2
    end
  end
  object DspDetalle: TDataSetProvider
    DataSet = QryDetalle
    Left = 992
    Top = 185
  end
  object DtsDetalle: TDataSource
    DataSet = CdsDetalle
    Left = 912
    Top = 185
  end
  object CdsDetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDetalle'
    Left = 912
    Top = 129
    object CdsDetalleENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Required = True
    end
    object CdsDetallePRO_NOMBRE: TWideStringField
      FieldName = 'PRO_NOMBRE'
      Size = 50
    end
    object CdsDetalleBOD_NOMBRE: TWideStringField
      FieldName = 'BOD_NOMBRE'
      Size = 50
    end
    object CdsDetalleEND_CANT: TBCDField
      FieldName = 'END_CANT'
      Precision = 18
      Size = 2
    end
    object CdsDetalleEND_PRECIO: TBCDField
      FieldName = 'END_PRECIO'
      Precision = 18
      Size = 2
    end
  end
  object TraDocs: TIBTransaction
    Active = True
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 832
    Top = 184
  end
  object UpdDocumentos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from entradasm '
      'where'
      '  ENT_CODI = :ENT_CODI')
    DeleteSQL.Strings = (
      'delete from entradasm'
      'where'
      '  ENT_CODI = :OLD_ENT_CODI')
    Left = 824
    Top = 64
  end
  object UpdDetalle: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from entradadet '
      'where'
      '  ENT_CODI = :ENT_CODI')
    DeleteSQL.Strings = (
      'delete from entradadet'
      'where'
      '  ENT_CODI = :OLD_ENT_CODI')
    Left = 832
    Top = 121
  end
end
