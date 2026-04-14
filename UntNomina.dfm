object FrmNomina: TFrmNomina
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Nomina'
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
    ExplicitLeft = -16
    ExplicitWidth = 816
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
      TabOrder = 0
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
      TabOrder = 2
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
      TabOrder = 4
      Width = 115
    end
  end
  object GrdEmpleados: TcxGrid
    Left = 0
    Top = 57
    Width = 800
    Height = 623
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LondonLiquidSky'
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 435
    ExplicitHeight = 328
    object TvlEmpleados: TcxGridDBTableView
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
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DtsEmpleados
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          Position = spFooter
          FieldName = 'OTD_VR_TOTAL'
          Column = TvlEmpleadosOTD_VR_TOTAL
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$ ,0.;-$ ,0.'
          Kind = skSum
          FieldName = 'OTD_VR_TOTAL'
          Column = TvlEmpleadosOTD_VR_TOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnPopup.MultiSelect = False
      NewItemRow.InfoText = 'Clic aqui para agregar un item nuevo'
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FixedGroups = True
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
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos
      object TvlEmpleadosEMP_CODI: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'EMP_CODI'
        HeaderAlignmentHorz = taCenter
        Width = 73
      end
      object TvlEmpleadosEMP_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'EMP_NOMBRE'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Width = 249
      end
      object TvlEmpleadosPRO_NOMBRE: TcxGridDBColumn
        Caption = 'Item'
        DataBinding.FieldName = 'PRO_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 110
      end
      object TvlEmpleadosOTD_CANT: TcxGridDBColumn
        Caption = 'Cantidad'
        DataBinding.FieldName = 'OTD_CANT'
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosOTD_VR_TOTAL: TcxGridDBColumn
        Caption = 'Vr Total'
        DataBinding.FieldName = 'OTD_VR_TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taCenter
      end
    end
    object LvlEmpleados: TcxGridLevel
      GridView = TvlEmpleados
    end
  end
  object QryEmpleados: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT E.emp_codi, E.emp_nombre, P.pro_nombre, D.otd_cant, D.otd' +
        '_vr_total, m.otm_fecha'
      'FROM EMPLEADOS E'
      'LEFT JOIN ordentid D ON D.emp_codi = E.emp_codi'
      'left JOIN ordentim M ON M.otm_codi = D.otm_codi'
      'LEFT JOIN productos P ON P.pro_codi = D.pr_codi'
      'WHERE CAST(m.otm_fecha AS DATE) BETWEEN :FECHAINI AND :FECHAFIN'
      'AND M.otm_estado = 1')
    Left = 648
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
    object QryEmpleadosEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"EMPLEADOS"."EMP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEmpleadosEMP_NOMBRE: TIBStringField
      FieldName = 'EMP_NOMBRE'
      Origin = '"EMPLEADOS"."EMP_NOMBRE"'
      Required = True
      Size = 60
    end
    object QryEmpleadosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Size = 50
    end
    object QryEmpleadosOTD_CANT: TIBBCDField
      FieldName = 'OTD_CANT'
      Origin = '"ORDENTID"."OTD_CANT"'
      Precision = 18
      Size = 2
    end
    object QryEmpleadosOTD_VR_TOTAL: TIBBCDField
      FieldName = 'OTD_VR_TOTAL'
      Origin = '"ORDENTID"."OTD_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryEmpleadosOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
  end
  object DtsEmpleados: TDataSource
    DataSet = QryEmpleados
    Left = 728
    Top = 112
  end
end
