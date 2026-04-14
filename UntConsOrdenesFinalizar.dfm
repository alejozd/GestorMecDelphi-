object FrmConsOrdenesFinalizar: TFrmConsOrdenesFinalizar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Ordenes por Finalizar'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSuperior: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 57
    Align = alTop
    TabOrder = 0
    object cxLabel3: TcxLabel
      Left = 503
      Top = 1
      Align = alRight
      Caption = 'Ordenes por Finalizar'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
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
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      AnchorX = 651
      AnchorY = 29
    end
    object BtnBuscar: TcxButton
      Left = 344
      Top = 11
      Width = 93
      Height = 30
      Hint = 'Buscar Documentos'
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Buscar'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = DmGlobal.ImlBotones
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
      OnClick = BtnBuscarClick
    end
    object cxLabel1: TcxLabel
      Left = 6
      Top = 15
      Caption = 'desde'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object DateIni: TcxDateEdit
      Left = 50
      Top = 13
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
    object cxLabel2: TcxLabel
      Left = 173
      Top = 15
      Caption = 'hasta'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object DateFin: TcxDateEdit
      Left = 216
      Top = 13
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
      TabOrder = 5
      Width = 115
    end
  end
  object GrdOrdPend: TcxGrid
    Left = 0
    Top = 57
    Width = 800
    Height = 623
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LondonLiquidSky'
    object TvlOrdPend: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
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
      DataController.DataSource = DtsOrdenes
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'OTM_NUME'
          Column = TvlOrdPendOTM_NUME
        end
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          FieldName = 'OTM_SUBT'
          Column = TvlOrdPendOTM_SUBT
        end
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          FieldName = 'OTM_VR_DESC'
          Column = TvlOrdPendOTM_VR_DESC
        end
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          FieldName = 'OTM_VR_IVA'
          Column = TvlOrdPendOTM_VR_IVA
        end
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          FieldName = 'OTM_VR_TOTAL'
          Column = TvlOrdPendOTM_VR_TOTAL
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
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.GroupBySorting = True
      OptionsCustomize.GroupRowSizing = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.Footer = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos8
      object TvlOrdPendOTM_CLASE_DOC: TcxGridDBColumn
        Caption = 'Clase'
        DataBinding.FieldName = 'OTM_CLASE_DOC'
        OnGetDisplayText = TvlOrdPendOTM_CLASE_DOCGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object TvlOrdPendOTM_CODI: TcxGridDBColumn
        DataBinding.FieldName = 'OTM_CODI'
        Visible = False
        HeaderAlignmentHorz = taCenter
        VisibleForCustomization = False
        VisibleForEditForm = bFalse
      end
      object TvlOrdPendOTM_NUME: TcxGridDBColumn
        Caption = 'N'#250'm. Doc.'
        DataBinding.FieldName = 'OTM_NUME'
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object TvlOrdPendOTM_FECHA: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'OTM_FECHA'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.ShowToday = False
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebNever
        Width = 72
      end
      object TvlOrdPendOTM_FECHA_VENCE: TcxGridDBColumn
        Caption = 'Fecha Vence'
        DataBinding.FieldName = 'OTM_FECHA_VENCE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.ShowToday = False
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebNever
        Width = 88
      end
      object TvlOrdPendCLI_NOMBRE: TcxGridDBColumn
        Caption = 'Cliente'
        DataBinding.FieldName = 'CLI_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 212
      end
      object TvlOrdPendTD_ABREVIADO: TcxGridDBColumn
        Caption = 'T. Doc'
        DataBinding.FieldName = 'TD_ABREVIADO'
        HeaderAlignmentHorz = taCenter
        Width = 48
      end
      object TvlOrdPendCLI_NUMDOC: TcxGridDBColumn
        Caption = 'Identificaci'#243'n'
        DataBinding.FieldName = 'CLI_NUMDOC'
        HeaderAlignmentHorz = taCenter
        Width = 95
      end
      object TvlOrdPendOTM_ESTADO: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'OTM_ESTADO'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object TvlOrdPendOTM_SUBT: TcxGridDBColumn
        Caption = 'SubTotal'
        DataBinding.FieldName = 'OTM_SUBT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object TvlOrdPendOTM_VR_DESC: TcxGridDBColumn
        Caption = 'Descuento'
        DataBinding.FieldName = 'OTM_VR_DESC'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object TvlOrdPendOTM_VR_IVA: TcxGridDBColumn
        Caption = 'I.V.A.'
        DataBinding.FieldName = 'OTM_VR_IVA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object TvlOrdPendOTM_VR_TOTAL: TcxGridDBColumn
        Caption = 'Vr. Total'
        DataBinding.FieldName = 'OTM_VR_TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 95
      end
      object TvlOrdPendOTM_OBSERV: TcxGridDBColumn
        Caption = 'Observaciones'
        DataBinding.FieldName = 'OTM_OBSERV'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object TvlOrdPendVXC_PLACA: TcxGridDBColumn
        Caption = 'Placa'
        DataBinding.FieldName = 'VXC_PLACA'
        HeaderAlignmentHorz = taCenter
      end
      object TvlOrdPendOTM_KILOM: TcxGridDBColumn
        Caption = 'Kilometraje'
        DataBinding.FieldName = 'OTM_KILOM'
        HeaderAlignmentHorz = taCenter
      end
      object TvlOrdPendMR_NOMBRE: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'MR_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object TvlOrdPendLI_NOMBRE: TcxGridDBColumn
        Caption = 'Linea'
        DataBinding.FieldName = 'LI_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object TvlOrdPendFP_NOMBRE: TcxGridDBColumn
        Caption = 'Forma Pago'
        DataBinding.FieldName = 'FP_NOMBRE'
        HeaderAlignmentHorz = taCenter
      end
    end
    object LvlOrdPend: TcxGridLevel
      GridView = TvlOrdPend
    end
  end
  object QryOrdenes: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select ORDENTIM.CLI_CODI, ORDENTIM.FP_CODI, ORDENTIM.OTM_CLASE_D' +
        'OC, ORDENTIM.OTM_CODI,'
      
        'ORDENTIM.OTM_ESTADO, ORDENTIM.OTM_FECHA, ORDENTIM.otm_fecha_venc' +
        'e, ORDENTIM.OTM_KILOM, ORDENTIM.OTM_NUME,'
      
        'ORDENTIM.OTM_OBSERV, coalesce(ORDENTIM.OTM_SUBT,0) OTM_SUBT, coa' +
        'lesce(ORDENTIM.OTM_VR_DESC,0) OTM_VR_DESC,'
      'coalesce(ORDENTIM.OTM_VR_IVA,0) OTM_VR_IVA,'
      
        'coalesce(ORDENTIM.OTM_VR_TOTAL,0) OTM_VR_TOTAL, ORDENTIM.VXC_COD' +
        'I, clientes.cli_nombre'
      
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
      
        'WHERE CAST(ordentim.otm_fecha AS DATE) BETWEEN :FECHAINI AND :FE' +
        'CHAFIN'
      'AND ordentim.otm_estado = 0')
    Left = 608
    Top = 112
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
    object QryOrdenesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object QryOrdenesFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object QryOrdenesOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object QryOrdenesOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryOrdenesOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object QryOrdenesOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryOrdenesOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
      Origin = '"ORDENTIM"."OTM_FECHA_VENCE"'
    end
    object QryOrdenesOTM_KILOM: TIBStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object QryOrdenesOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object QryOrdenesOTM_OBSERV: TIBStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object QryOrdenesOTM_SUBT: TIBBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_DESC: TIBBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_IVA: TIBBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryOrdenesVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      Required = True
    end
    object QryOrdenesCLI_CORREOE: TIBStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object QryOrdenesCLI_NUMDOC: TIBStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      Required = True
    end
    object QryOrdenesCLI_TEL_FIJO: TIBStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object QryOrdenesCLI_TEL_MOVIL: TIBStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object QryOrdenesCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object QryOrdenesTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryOrdenesVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object QryOrdenesMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryOrdenesLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object QryOrdenesFP_NOMBRE: TIBStringField
      FieldName = 'FP_NOMBRE'
      Origin = '"FORMA_PAGO"."FP_NOMBRE"'
    end
    object QryOrdenesCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryOrdenesCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 255
    end
  end
  object CdsOrdenes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOrdenes'
    Left = 720
    Top = 112
    object CdsOrdenesCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object CdsOrdenesFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object CdsOrdenesOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object CdsOrdenesOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsOrdenesOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object CdsOrdenesOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object CdsOrdenesOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
    end
    object CdsOrdenesOTM_KILOM: TWideStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object CdsOrdenesOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object CdsOrdenesOTM_OBSERV: TWideStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object CdsOrdenesOTM_SUBT: TBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_DESC: TBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_IVA: TBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesOTM_VR_TOTAL: TBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object CdsOrdenesVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      Required = True
    end
    object CdsOrdenesCLI_NOMBRE: TWideStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
    end
    object CdsOrdenesCLI_CORREOE: TWideStringField
      FieldName = 'CLI_CORREOE'
      Origin = '"CLIENTES"."CLI_CORREOE"'
      Size = 30
    end
    object CdsOrdenesCLI_DIRECCION: TWideStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 30
    end
    object CdsOrdenesCLI_NUMDOC: TWideStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      Required = True
    end
    object CdsOrdenesCLI_TEL_FIJO: TWideStringField
      FieldName = 'CLI_TEL_FIJO'
      Origin = '"CLIENTES"."CLI_TEL_FIJO"'
    end
    object CdsOrdenesCLI_TEL_MOVIL: TWideStringField
      FieldName = 'CLI_TEL_MOVIL'
      Origin = '"CLIENTES"."CLI_TEL_MOVIL"'
    end
    object CdsOrdenesCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"CLIENTES"."COD_TIPDO"'
    end
    object CdsOrdenesTD_ABREVIADO: TWideStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object CdsOrdenesVXC_PLACA: TWideStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object CdsOrdenesMR_NOMBRE: TWideStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object CdsOrdenesLI_NOMBRE: TWideStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object CdsOrdenesFP_NOMBRE: TWideStringField
      FieldName = 'FP_NOMBRE'
      Origin = '"FORMA_PAGO"."FP_NOMBRE"'
    end
  end
  object DspOrdenes: TDataSetProvider
    DataSet = QryOrdenes
    Left = 720
    Top = 176
  end
  object DtsOrdenes: TDataSource
    DataSet = CdsOrdenes
    Left = 608
    Top = 176
  end
  object popGrdOrdPend: TcxGridPopupMenu
    Grid = GrdOrdPend
    PopupMenus = <>
    Left = 720
    Top = 248
  end
end
