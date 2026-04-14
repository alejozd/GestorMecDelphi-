object FrmConsDocumentos: TFrmConsDocumentos
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consultar Documentos'
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 73
    Align = alTop
    TabOrder = 0
    object DateIni: TcxDateEdit
      Left = 50
      Top = 8
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
      Top = 8
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
      Top = 10
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
      Top = 10
      Caption = 'hasta'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object RgCriterio: TcxRadioGroup
      Left = 6
      Top = 42
      Alignment = alCenterCenter
      Ctl3D = True
      ParentCtl3D = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Ordenes'
        end
        item
          Caption = 'Facturas'
        end
        item
          Caption = 'Todos'
        end>
      ItemIndex = 2
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Height = 25
      Width = 325
    end
    object BtnImprimir: TcxButton
      Left = 465
      Top = 2
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
    object cxDBNavigator1: TcxDBNavigator
      Left = 626
      Top = 15
      Width = 342
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
      TabOrder = 6
    end
    object BtnBuscar: TcxButton
      Left = 348
      Top = 2
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
      TabOrder = 7
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
      Height = 65
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
      TabOrder = 8
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
      Height = 65
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
      TabOrder = 9
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
      TabOrder = 10
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
    Top = 73
    Width = 1055
    Height = 549
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
          OnGetDisplayText = CavDocumentosOTM_CLASE_DOCGetDisplayText
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
            Column = TvBMasterDocsOTM_NUME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.Footer = True
        Styles.Content = DmGlobal.Contenido
        Styles.Header = DmGlobal.TitulosDetalle
        Styles.BandHeader = DmGlobal.TitulosDetalle
        Bands = <
          item
            Caption = 'Datos Basicos'
            FixedKind = fkLeft
            Options.Moving = False
          end
          item
            Caption = 'Datos Encabezado'
            Width = 803
          end
          item
            Caption = 'Valores Documento'
            FixedKind = fkRight
            Width = 320
          end>
        object TvBMasterDocsOTM_NUME: TcxGridDBBandedColumn
          Caption = 'N'#250'mero Doc.'
          DataBinding.FieldName = 'OTM_NUME'
          HeaderAlignmentHorz = taCenter
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_CLASE_DOC: TcxGridDBBandedColumn
          Caption = 'Clase Doc'
          DataBinding.FieldName = 'OTM_CLASE_DOC'
          OnGetDisplayText = TvBMasterDocsOTM_CLASE_DOCGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 106
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_ESTADO: TcxGridDBBandedColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'OTM_ESTADO'
          OnGetDisplayText = TvBMasterDocsOTM_ESTADOGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_FECHA: TcxGridDBBandedColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'OTM_FECHA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 69
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBMasterDocsFP_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'FP_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 99
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object TvBMasterDocsNOMCOMP: TcxGridDBBandedColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOMCOMP'
          HeaderAlignmentHorz = taCenter
          Width = 209
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_OBSERV: TcxGridDBBandedColumn
          Caption = 'Observaciones'
          DataBinding.FieldName = 'OTM_OBSERV'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 155
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_SUBT: TcxGridDBBandedColumn
          Caption = 'Subtotal'
          DataBinding.FieldName = 'OTM_SUBT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_VR_DESC: TcxGridDBBandedColumn
          Caption = 'Descuento'
          DataBinding.FieldName = 'OTM_VR_DESC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 79
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_VR_IVA: TcxGridDBBandedColumn
          Caption = 'IVA'
          DataBinding.FieldName = 'OTM_VR_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 56
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_VR_TOTAL: TcxGridDBBandedColumn
          Caption = 'Vr. Total'
          DataBinding.FieldName = 'OTM_VR_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 93
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBMasterDocsCLI_CORREOE: TcxGridDBBandedColumn
          Caption = 'Correo Electr'#243'nico'
          DataBinding.FieldName = 'CLI_CORREOE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 143
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBMasterDocsCLI_DIRECCION: TcxGridDBBandedColumn
          Caption = 'Direcci'#243'n'
          DataBinding.FieldName = 'CLI_DIRECCION'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBMasterDocsCLI_NUMDOC: TcxGridDBBandedColumn
          Caption = 'Identificaci'#243'n'
          DataBinding.FieldName = 'CLI_NUMDOC'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBMasterDocsCLI_TEL_FIJO: TcxGridDBBandedColumn
          Caption = 'Tel'#233'fono'
          DataBinding.FieldName = 'CLI_TEL_FIJO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvBMasterDocsCLI_TEL_MOVIL: TcxGridDBBandedColumn
          Caption = 'Movil'
          DataBinding.FieldName = 'CLI_TEL_MOVIL'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object TvBMasterDocsTD_ABREVIADO: TcxGridDBBandedColumn
          Caption = 'Tipo Doc.'
          DataBinding.FieldName = 'TD_ABREVIADO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 83
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object TvBMasterDocsVXC_PLACA: TcxGridDBBandedColumn
          Caption = 'Placa'
          DataBinding.FieldName = 'VXC_PLACA'
          HeaderAlignmentHorz = taCenter
          Width = 53
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object TvBMasterDocsMR_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MR_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object TvBMasterDocsLI_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Linea'
          DataBinding.FieldName = 'LI_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 58
          Position.BandIndex = 1
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object TvBMasterDocsOTM_KILOM: TcxGridDBBandedColumn
          Caption = 'Kilometraje'
          DataBinding.FieldName = 'OTM_KILOM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ' ,0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 76
          Position.BandIndex = 1
          Position.ColIndex = 12
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
      Height = 288
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
          OnGetDisplayText = CavDocumentosOTM_CLASE_DOCGetDisplayText
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
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
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
        object TvBDetallePRO_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Producto'
          DataBinding.FieldName = 'PRO_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 208
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvBDetalleBOD_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Bodega'
          DataBinding.FieldName = 'BOD_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_CANT: TcxGridDBBandedColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'OTD_CANT'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_PRECIO: TcxGridDBBandedColumn
          Caption = 'Precio'
          DataBinding.FieldName = 'OTD_PRECIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_SBTOTAL: TcxGridDBBandedColumn
          Caption = 'Sub Total'
          DataBinding.FieldName = 'OTD_SBTOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 99
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_POR_IVA: TcxGridDBBandedColumn
          Caption = '% IVA'
          DataBinding.FieldName = 'OTD_POR_IVA'
          HeaderAlignmentHorz = taCenter
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_VR_IVA: TcxGridDBBandedColumn
          Caption = 'Vr IVA'
          DataBinding.FieldName = 'OTD_VR_IVA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_POR_DSC: TcxGridDBBandedColumn
          Caption = '% Descuento'
          DataBinding.FieldName = 'OTD_POR_DSC'
          HeaderAlignmentHorz = taCenter
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_VR_DSC: TcxGridDBBandedColumn
          Caption = 'Vr Descuento'
          DataBinding.FieldName = 'OTD_VR_DSC'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 98
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object TvBDetalleOTD_VR_TOTAL: TcxGridDBBandedColumn
          Caption = 'Total'
          DataBinding.FieldName = 'OTD_VR_TOTAL'
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
      
        'select ORDENTIM.CLI_CODI, ORDENTIM.FP_CODI, ORDENTIM.OTM_CLASE_D' +
        'OC, ORDENTIM.OTM_CODI,'
      
        'ORDENTIM.OTM_ESTADO, ORDENTIM.OTM_FECHA, ORDENTIM.OTM_KILOM, ORD' +
        'ENTIM.OTM_NUME,'
      
        'ORDENTIM.OTM_OBSERV, ORDENTIM.OTM_SUBT, ORDENTIM.OTM_VR_DESC, OR' +
        'DENTIM.OTM_VR_IVA,'
      'ORDENTIM.OTM_VR_TOTAL, ORDENTIM.VXC_CODI, CLI_NOMBRE NomComp'
      
        ', clientes.CLI_CORREOE, clientes.CLI_DIRECCION, clientes.CLI_NUM' +
        'DOC, clientes.CLI_TEL_FIJO,'
      
        'clientes.CLI_TEL_MOVIL, clientes.COD_TIPDO, tipdocumentos.td_abr' +
        'eviado'
      
        ', vhxcliente.vxc_placa, marcavh.mr_nombre, lineavh.li_nombre, fo' +
        'rma_pago.fp_nombre'
      'from ORDENTIM'
      'INNER JOIN clientes ON clientes.cli_codi = ORDENTIM.cli_codi'
      
        'LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = clientes.cod_' +
        'tipdo'
      'LEFT JOIN vhxcliente ON vhxcliente.vxc_codi = ordentim.vxc_codi'
      'LEFT JOIN marcavh ON marcavh.mr_codi = vhxcliente.mr_codi'
      'LEFT join lineavh ON lineavh.li_codi = vhxcliente.li_codi'
      'INNER JOIN forma_pago ON forma_pago.fp_codi = ORDENTIM.FP_CODI'
      'ORDER BY ORDENTIM.OTM_NUME ASC')
    UpdateObject = UpdDocumentos
    Left = 992
    Top = 8
    object QryDocumentosCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object QryDocumentosFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object QryDocumentosOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object QryDocumentosOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDocumentosOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object QryDocumentosOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryDocumentosOTM_KILOM: TIBStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object QryDocumentosOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object QryDocumentosOTM_OBSERV: TIBStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object QryDocumentosOTM_SUBT: TIBBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object QryDocumentosOTM_VR_DESC: TIBBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object QryDocumentosOTM_VR_IVA: TIBBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryDocumentosOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryDocumentosVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      Required = True
    end
    object QryDocumentosCLI_CORREOE: TIBStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object QryDocumentosCLI_NUMDOC: TIBStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDocumentosCLI_TEL_FIJO: TIBStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object QryDocumentosCLI_TEL_MOVIL: TIBStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object QryDocumentosCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object QryDocumentosTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryDocumentosVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object QryDocumentosMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryDocumentosLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object QryDocumentosFP_NOMBRE: TIBStringField
      FieldName = 'FP_NOMBRE'
      Origin = '"FORMA_PAGO"."FP_NOMBRE"'
    end
    object QryDocumentosCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 255
    end
    object QryDocumentosNOMCOMP: TIBStringField
      FieldName = 'NOMCOMP'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
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
    object CdsDocumentosCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object CdsDocumentosFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object CdsDocumentosOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object CdsDocumentosOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsDocumentosOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object CdsDocumentosOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object CdsDocumentosOTM_KILOM: TWideStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object CdsDocumentosOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object CdsDocumentosOTM_OBSERV: TWideStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object CdsDocumentosOTM_SUBT: TBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object CdsDocumentosOTM_VR_DESC: TBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object CdsDocumentosOTM_VR_IVA: TBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsDocumentosOTM_VR_TOTAL: TBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsDocumentosVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      Required = True
    end
    object CdsDocumentosCLI_CORREOE: TWideStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object CdsDocumentosCLI_DIRECCION: TWideStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 30
    end
    object CdsDocumentosCLI_NUMDOC: TWideStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsDocumentosCLI_TEL_FIJO: TWideStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object CdsDocumentosCLI_TEL_MOVIL: TWideStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object CdsDocumentosCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object CdsDocumentosTD_ABREVIADO: TWideStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object CdsDocumentosVXC_PLACA: TWideStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object CdsDocumentosMR_NOMBRE: TWideStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object CdsDocumentosLI_NOMBRE: TWideStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object CdsDocumentosFP_NOMBRE: TWideStringField
      FieldName = 'FP_NOMBRE'
      Origin = '"FORMA_PAGO"."FP_NOMBRE"'
    end
    object CdsDocumentosNOMCOMP: TWideStringField
      FieldName = 'NOMCOMP'
      Required = True
      Size = 60
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
      
        'SELECT ordentid.otm_codi, PRODUCTOS.pro_nombre, BODEGAS.bod_nomb' +
        're, ordentid.otd_cant, ordentid.otd_precio,'
      
        'ordentid.otd_sbtotal, ordentid.otd_por_iva, ordentid.otd_vr_iva,' +
        ' ordentid.otd_por_dsc,'
      'ordentid.otd_vr_dsc, ordentid.otd_vr_total'
      'FROM ordentid'
      'LEFT JOIN PRODUCTOS ON PRODUCTOS.pro_codi = ordentid.pr_codi'
      'LEFT JOIN BODEGAS ON BODEGAS.bod_codi = ordentid.bod_codi'
      'WHERE ordentid.otm_codi = :otm_codi')
    UpdateObject = UpdDetalle
    Left = 992
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OTM_CODI'
        ParamType = ptUnknown
        Value = 25
      end>
    object QryDetalleOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryDetalleBOD_NOMBRE: TIBStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryDetalleOTD_CANT: TIBBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_PRECIO: TIBBCDField
      FieldName = 'OTD_PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_SBTOTAL: TIBBCDField
      FieldName = 'OTD_SBTOTAL'
      Origin = '"ORDENTID"."OTD_SBTOTAL"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_POR_IVA: TIBBCDField
      FieldName = 'OTD_POR_IVA'
      Origin = '"ORDENTID"."OTD_POR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_VR_IVA: TIBBCDField
      FieldName = 'OTD_VR_IVA'
      Origin = '"ORDENTID"."OTD_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_POR_DSC: TIBBCDField
      FieldName = 'OTD_POR_DSC'
      Origin = '"ORDENTID"."OTD_POR_DSC"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_VR_DSC: TIBBCDField
      FieldName = 'OTD_VR_DSC'
      Origin = '"ORDENTID"."OTD_VR_DSC"'
      Precision = 18
      Size = 2
    end
    object QryDetalleOTD_VR_TOTAL: TIBBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
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
    object CdsDetalleOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsDetallePRO_NOMBRE: TWideStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object CdsDetalleBOD_NOMBRE: TWideStringField
      FieldName = 'BOD_NOMBRE'
      Origin = '"BODEGAS"."BOD_NOMBRE"'
      Required = True
      Size = 50
    end
    object CdsDetalleOTD_CANT: TBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_PRECIO: TBCDField
      FieldName = 'OTD_PRECIO'
      Origin = '"ORDENTID"."OTD_PRECIO"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_SBTOTAL: TBCDField
      FieldName = 'OTD_SBTOTAL'
      Origin = '"ORDENTID"."OTD_SBTOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_POR_IVA: TBCDField
      FieldName = 'OTD_POR_IVA'
      Origin = '"ORDENTID"."OTD_POR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_VR_IVA: TBCDField
      FieldName = 'OTD_VR_IVA'
      Origin = '"ORDENTID"."OTD_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_POR_DSC: TBCDField
      FieldName = 'OTD_POR_DSC'
      Origin = '"ORDENTID"."OTD_POR_DSC"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_VR_DSC: TBCDField
      FieldName = 'OTD_VR_DSC'
      Origin = '"ORDENTID"."OTD_VR_DSC"'
      Precision = 18
      Size = 2
    end
    object CdsDetalleOTD_VR_TOTAL: TBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
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
      '  OTM_CODI = :OTM_CODI')
    ModifySQL.Strings = (
      '')
    DeleteSQL.Strings = (
      'delete from ORDENTIM'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI')
    Left = 824
    Top = 64
  end
  object UpdDetalle: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ordentid '
      'where'
      '  OTM_CODI = :OTM_CODI')
    ModifySQL.Strings = (
      'update ordentid'
      'set'
      '  PRO_NOMBRE = :PRO_NOMBRE,'
      '  BOD_NOMBRE = :BOD_NOMBRE,'
      '  OTD_CANT = :OTD_CANT,'
      '  OTD_PRECIO = :OTD_PRECIO,'
      '  OTD_SBTOTAL = :OTD_SBTOTAL,'
      '  OTD_POR_IVA = :OTD_POR_IVA,'
      '  OTD_VR_IVA = :OTD_VR_IVA,'
      '  OTD_POR_DSC = :OTD_POR_DSC,'
      '  OTD_VR_DSC = :OTD_VR_DSC,'
      '  OTD_VR_TOTAL = :OTD_VR_TOTAL'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI')
    InsertSQL.Strings = (
      'insert into ordentid'
      
        '  (PRO_NOMBRE, BOD_NOMBRE, OTD_CANT, OTD_PRECIO, OTD_SBTOTAL, OT' +
        'D_POR_IVA, '
      '   OTD_VR_IVA, OTD_POR_DSC, OTD_VR_DSC, OTD_VR_TOTAL)'
      'values'
      
        '  (:PRO_NOMBRE, :BOD_NOMBRE, :OTD_CANT, :OTD_PRECIO, :OTD_SBTOTA' +
        'L, :OTD_POR_IVA, '
      '   :OTD_VR_IVA, :OTD_POR_DSC, :OTD_VR_DSC, :OTD_VR_TOTAL)')
    DeleteSQL.Strings = (
      'delete from ordentid'
      'where'
      '  OTM_CODI = :OLD_OTM_CODI')
    Left = 832
    Top = 121
  end
  object popGrdDocs: TcxGridPopupMenu
    Grid = GrdDocumentos
    PopupMenus = <>
    Left = 744
    Top = 184
  end
  object popGridDetalle: TcxGridPopupMenu
    Grid = GrdDetalle
    PopupMenus = <>
    Left = 744
    Top = 248
  end
end
