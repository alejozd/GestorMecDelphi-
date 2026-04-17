object FrmEmpleados: TFrmEmpleados
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Empleados'
  ClientHeight = 680
  ClientWidth = 803
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
  object GrdEmpleados: TcxGrid
    Left = 0
    Top = 223
    Width = 803
    Height = 437
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'LondonLiquidSky'
    object TvlEmpleados: TcxGridDBTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.PriorPage.Hint = 'Pagina Anterior'
      Navigator.Buttons.Prior.Hint = 'Anterior'
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Siguiente'
      Navigator.Buttons.NextPage.Hint = 'Pagina siguiente'
      Navigator.Buttons.Last.Hint = #218'ltimo'
      Navigator.Buttons.Insert.Hint = 'Agregar'
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Hint = 'Borrar'
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Hint = 'Editar'
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Hint = 'Guardar'
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Enabled = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Hint = 'Refrescar'
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Hint = 'Filtrar'
      Navigator.InfoPanel.Visible = True
      DataController.DataSource = DtsEmpleados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Empleados #'
          Kind = skCount
          FieldName = 'EMP_NUMDOC'
          Column = TvlEmpleadosEMP_NUMDOC
          DisplayText = 'Total de empleados'
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.Content = DmGlobal.ContenidoLetra
      Styles.Header = DmGlobal.Titulos
      object TvlEmpleadosEMP_CODI: TcxGridDBColumn
        DataBinding.FieldName = 'EMP_CODI'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosCOD_TIPDO: TcxGridDBColumn
        Caption = 'Tipo Doc'
        DataBinding.FieldName = 'COD_TIPDO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'TD_CODI'
        Properties.ListColumns = <
          item
            FieldName = 'TD_ABREVIADO'
          end>
        Properties.ListSource = DtsTipDocs
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object TvlEmpleadosEMP_NUMDOC: TcxGridDBColumn
        Caption = 'N'#250'mero Documento'
        DataBinding.FieldName = 'EMP_NUMDOC'
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object TvlEmpleadosEMP_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'EMP_NOMBRE'
        HeaderAlignmentHorz = taCenter
        Width = 221
      end
      object TvlEmpleadosEMP_TEL_MOVIL: TcxGridDBColumn
        Caption = 'Tel Movil'
        DataBinding.FieldName = 'EMP_TEL_MOVIL'
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosEMP_TEL_FIJO: TcxGridDBColumn
        Caption = 'Tel Fijo'
        DataBinding.FieldName = 'EMP_TEL_FIJO'
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosEMP_DIRECCION: TcxGridDBColumn
        Caption = 'Direcci'#243'n de Residencia'
        DataBinding.FieldName = 'EMP_DIRECCION'
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosEMP_BARRIO: TcxGridDBColumn
        Caption = 'Barrio'
        DataBinding.FieldName = 'EMP_BARRIO'
        HeaderAlignmentHorz = taCenter
        Width = 194
      end
      object TvlEmpleadosCG_CODI: TcxGridDBColumn
        Caption = 'Cargo'
        DataBinding.FieldName = 'CG_CODI'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CG_CODI'
        Properties.ListColumns = <
          item
            FieldName = 'CG_NOMBRE'
          end>
        Properties.ListSource = DtsCargos
        HeaderAlignmentHorz = taCenter
      end
      object TvlEmpleadosEMP_ESTA: TcxGridDBColumn
        Caption = 'Estado'
        DataBinding.FieldName = 'EMP_ESTA'
        OnGetDisplayText = TvlEmpleadosEMP_ESTAGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 78
      end
    end
    object LvlEmpleados: TcxGridLevel
      GridView = TvlEmpleados
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 660
    Width = 803
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pnlDatosEmp: TPanel
    Left = 0
    Top = 0
    Width = 803
    Height = 223
    Align = alTop
    TabOrder = 2
    object GrbBasicos: TcxGroupBox
      Left = 4
      Top = 44
      Caption = 'Datos b'#225'sicos'
      Enabled = False
      TabOrder = 0
      Height = 178
      Width = 397
      object Label1: TLabel
        Left = 5
        Top = 24
        Width = 91
        Height = 13
        Caption = 'Tipo de documento'
      end
      object Label2: TLabel
        Left = 165
        Top = 24
        Width = 108
        Height = 13
        Caption = 'N'#250'mero de documento'
        FocusControl = EdtNumeroDoc
      end
      object Label3: TLabel
        Left = 5
        Top = 65
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = EdtNombre
      end
      object Label8: TLabel
        Left = 6
        Top = 118
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label10: TLabel
        Left = 230
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object EdtNumeroDoc: TcxDBTextEdit
        Left = 165
        Top = 40
        Hint = 'N'#250'mero de documento'
        DataBinding.DataField = 'EMP_NUMDOC'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        Width = 223
      end
      object EdtNombre: TcxDBTextEdit
        Left = 5
        Top = 85
        Hint = 'Primer nombre'
        DataBinding.DataField = 'EMP_NOMBRE'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Width = 383
      end
      object DblTipDocu: TcxDBLookupComboBox
        Left = 5
        Top = 40
        DataBinding.DataField = 'COD_TIPDO'
        DataBinding.DataSource = DtsEmpleados
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
        Properties.ListSource = DtsTipDocs
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
        TabOrder = 0
        Width = 145
      end
      object DblCargo: TcxDBLookupComboBox
        Left = 6
        Top = 134
        DataBinding.DataField = 'CG_CODI'
        DataBinding.DataSource = DtsEmpleados
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CG_CODI'
        Properties.ListColumns = <
          item
            Caption = 'Cargo'
            HeaderAlignment = taCenter
            SortOrder = soAscending
            FieldName = 'CG_NOMBRE'
          end>
        Properties.ListSource = DtsCargos
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2016Colorful'
        Style.PopupBorderStyle = epbsDefault
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2016Colorful'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2016Colorful'
        TabOrder = 3
        Width = 190
      end
      object TogEstado: TdxDBToggleSwitch
        Left = 230
        Top = 134
        Hint = 'Estado del empleado'
        DataBinding.DataField = 'EMP_ESTA'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        Properties.ImmediatePost = True
        Properties.StateIndicator.Kind = sikText
        Properties.StateIndicator.OffText = 'Inactivo'
        Properties.StateIndicator.OnText = 'Activo'
        Properties.ValueChecked = 'A'
        Properties.ValueUnchecked = 'I'
        ShowHint = True
        Style.BorderStyle = ebs3D
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 4
      end
    end
    object GrbAdicionales: TcxGroupBox
      Left = 406
      Top = 44
      Caption = 'Datos adicionales'
      Enabled = False
      TabOrder = 1
      Height = 178
      Width = 393
      object Label4: TLabel
        Left = 6
        Top = 24
        Width = 69
        Height = 13
        Caption = 'Tel'#233'fono movil'
        FocusControl = EdtTelMovil
      end
      object Label6: TLabel
        Left = 190
        Top = 24
        Width = 60
        Height = 13
        Caption = 'Tel'#233'fono fijo'
        FocusControl = EdtTelFijo
      end
      object Label7: TLabel
        Left = 6
        Top = 70
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = EdtDireccion
      end
      object Label9: TLabel
        Left = 190
        Top = 70
        Width = 28
        Height = 13
        Caption = 'Barrio'
        FocusControl = EdtBarrio
      end
      object Label5: TLabel
        Left = 6
        Top = 120
        Width = 33
        Height = 13
        Caption = 'Ciudad'
      end
      object EdtTelMovil: TcxDBTextEdit
        Left = 6
        Top = 40
        Hint = 'N'#250'mero de tel'#233'fono movil'
        DataBinding.DataField = 'EMP_TEL_MOVIL'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Width = 179
      end
      object EdtTelFijo: TcxDBTextEdit
        Left = 190
        Top = 40
        Hint = 'N'#250'mero de tel'#233'fono fijo'
        DataBinding.DataField = 'EMP_TEL_FIJO'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Width = 187
      end
      object EdtDireccion: TcxDBTextEdit
        Left = 6
        Top = 86
        Hint = 'Direcci'#243'n de residencia'
        DataBinding.DataField = 'EMP_DIRECCION'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Width = 179
      end
      object EdtBarrio: TcxDBTextEdit
        Left = 190
        Top = 86
        Hint = 'Nombre del barrio en el que reside'
        DataBinding.DataField = 'EMP_BARRIO'
        DataBinding.DataSource = DtsEmpleados
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Width = 187
      end
      object DblCiudad: TcxDBLookupComboBox
        Left = 6
        Top = 134
        DataBinding.DataField = 'CIU_CODI'
        DataBinding.DataSource = DtsEmpleados
        Properties.KeyFieldNames = 'CIU_CODI'
        Properties.ListColumns = <
          item
            FieldName = 'CIU_NOMBRE'
          end>
        Properties.ListSource = DtsCiudad
        TabOrder = 4
        Width = 145
      end
    end
    object NavEmpleados: TcxDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 792
      Height = 40
      BorderStyle = nbsNone
      Buttons.CustomButtons = <>
      Buttons.Images = DmGlobal.ImLNavegador32
      Buttons.First.Hint = 'Primero'
      Buttons.First.ImageIndex = 0
      Buttons.PriorPage.Hint = 'P'#225'gina Anterior'
      Buttons.PriorPage.ImageIndex = 1
      Buttons.Prior.Hint = 'Anterior'
      Buttons.Prior.ImageIndex = 2
      Buttons.Next.Hint = 'Siguiente'
      Buttons.Next.ImageIndex = 3
      Buttons.NextPage.Hint = 'P'#225'gina Siguiente'
      Buttons.NextPage.ImageIndex = 4
      Buttons.Last.Hint = #218'ltimo'
      Buttons.Last.ImageIndex = 5
      Buttons.Insert.Enabled = False
      Buttons.Insert.Hint = 'Nuevo'
      Buttons.Insert.ImageIndex = 6
      Buttons.Insert.Visible = False
      Buttons.Append.Hint = 'Agregar'
      Buttons.Append.ImageIndex = 6
      Buttons.Append.Visible = True
      Buttons.Delete.Hint = 'Borrar'
      Buttons.Delete.ImageIndex = 13
      Buttons.Edit.Hint = 'Modificar'
      Buttons.Edit.ImageIndex = 8
      Buttons.Post.Hint = 'Guardar'
      Buttons.Post.ImageIndex = 9
      Buttons.Cancel.Hint = 'Cancelar'
      Buttons.Cancel.ImageIndex = 12
      Buttons.Refresh.Hint = 'Refrescar'
      Buttons.Refresh.ImageIndex = 10
      Buttons.SaveBookmark.Enabled = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Enabled = False
      Buttons.Filter.Visible = False
      DataSource = DtsEmpleados
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2016Colorful'
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object QryEmpleados: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraEmpleados
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * FROM EMPLEADOS')
    UpdateObject = UpdEmpleados
    GeneratorField.Field = 'TD_CODI'
    GeneratorField.Generator = 'GEN_TIPDOC'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 696
    Top = 360
    object QryEmpleadosEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"EMPLEADOS"."EMP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object QryEmpleadosEMP_NOMBRE: TIBStringField
      FieldName = 'EMP_NOMBRE'
      Origin = '"EMPLEADOS"."EMP_NOMBRE"'
      Required = True
      Size = 60
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
    object QryEmpleadosCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
      Origin = '"EMPLEADOS"."CIU_CODI"'
    end
  end
  object UpdEmpleados: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODI,'
      '  COD_TIPDO,'
      '  EMP_NUMDOC,'
      '  EMP_NOMBRE,'
      '  EMP_TEL_MOVIL,'
      '  EMP_TEL_FIJO,'
      '  EMP_DIRECCION,'
      '  EMP_BARRIO,'
      '  CG_CODI,'
      '  EMP_ESTA,'
      '  CIU_CODI'
      'from EMPLEADOS '
      'where'
      '  EMP_CODI = :EMP_CODI')
    ModifySQL.Strings = (
      'update EMPLEADOS'
      'set'
      '  COD_TIPDO = :COD_TIPDO,'
      '  EMP_NUMDOC = :EMP_NUMDOC,'
      '  EMP_NOMBRE = :EMP_NOMBRE,'
      '  EMP_TEL_MOVIL = :EMP_TEL_MOVIL,'
      '  EMP_TEL_FIJO = :EMP_TEL_FIJO,'
      '  EMP_DIRECCION = :EMP_DIRECCION,'
      '  EMP_BARRIO = :EMP_BARRIO,'
      '  CG_CODI = :CG_CODI,'
      '  EMP_ESTA = :EMP_ESTA,'
      '  CIU_CODI = :CIU_CODI'
      'where'
      '  EMP_CODI = :OLD_EMP_CODI')
    InsertSQL.Strings = (
      'insert into EMPLEADOS'
      '  (COD_TIPDO, EMP_NUMDOC, EMP_NOMBRE, '
      '   EMP_TEL_MOVIL, EMP_TEL_FIJO, EMP_DIRECCION, '
      '   EMP_BARRIO, CG_CODI, EMP_ESTA, CIU_CODI)'
      'values'
      '  (:COD_TIPDO, :EMP_NUMDOC, :EMP_NOMBRE, '
      '   :EMP_TEL_MOVIL, :EMP_TEL_FIJO, :EMP_DIRECCION, '
      '   :EMP_BARRIO, :CG_CODI, :EMP_ESTA, :CIU_CODI)')
    DeleteSQL.Strings = (
      'delete from EMPLEADOS'
      'where'
      '  EMP_CODI = :OLD_EMP_CODI')
    Left = 752
    Top = 360
  end
  object CdsEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmpleados'
    AfterOpen = CdsEmpleadosAfterOpen
    BeforeInsert = CdsEmpleadosBeforeInsert
    BeforeEdit = CdsEmpleadosBeforeEdit
    AfterEdit = CdsEmpleadosAfterEdit
    BeforePost = CdsEmpleadosBeforePost
    AfterPost = CdsEmpleadosAfterPost
    AfterCancel = CdsEmpleadosAfterCancel
    BeforeDelete = CdsEmpleadosBeforeDelete
    AfterDelete = CdsEmpleadosAfterPost
    OnNewRecord = CdsEmpleadosNewRecord
    Left = 752
    Top = 304
    object CdsEmpleadosEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"EMPLEADOS"."EMP_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEmpleadosCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"EMPLEADOS"."COD_TIPDO"'
      Required = True
    end
    object CdsEmpleadosEMP_NUMDOC: TWideStringField
      FieldName = 'EMP_NUMDOC'
      Origin = '"EMPLEADOS"."EMP_NUMDOC"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEmpleadosEMP_NOMBRE: TWideStringField
      FieldName = 'EMP_NOMBRE'
      Required = True
      Size = 60
    end
    object CdsEmpleadosEMP_TEL_MOVIL: TWideStringField
      FieldName = 'EMP_TEL_MOVIL'
      Origin = '"EMPLEADOS"."EMP_TEL_MOVIL"'
    end
    object CdsEmpleadosEMP_TEL_FIJO: TWideStringField
      FieldName = 'EMP_TEL_FIJO'
      Origin = '"EMPLEADOS"."EMP_TEL_FIJO"'
    end
    object CdsEmpleadosEMP_DIRECCION: TWideStringField
      FieldName = 'EMP_DIRECCION'
      Origin = '"EMPLEADOS"."EMP_DIRECCION"'
      Size = 30
    end
    object CdsEmpleadosEMP_BARRIO: TWideStringField
      FieldName = 'EMP_BARRIO'
      Origin = '"EMPLEADOS"."EMP_BARRIO"'
      Size = 100
    end
    object CdsEmpleadosCG_CODI: TIntegerField
      FieldName = 'CG_CODI'
      Origin = '"EMPLEADOS"."CG_CODI"'
      Required = True
    end
    object CdsEmpleadosEMP_ESTA: TWideStringField
      FieldName = 'EMP_ESTA'
      Origin = '"EMPLEADOS"."EMP_ESTA"'
      FixedChar = True
      Size = 1
    end
    object CdsEmpleadosCIU_CODI: TIntegerField
      FieldName = 'CIU_CODI'
    end
  end
  object DspEmpleados: TDataSetProvider
    DataSet = QryEmpleados
    Left = 696
    Top = 304
  end
  object DtsEmpleados: TDataSource
    DataSet = CdsEmpleados
    Left = 632
    Top = 312
  end
  object DtsTipDocs: TDataSource
    DataSet = DmGlobal.TblTipDocu
    Left = 752
    Top = 415
  end
  object DtsCargos: TDataSource
    DataSet = DmGlobal.TblCargos
    Left = 696
    Top = 415
  end
  object TraEmpleados: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 624
    Top = 416
  end
  object DtsCiudad: TDataSource
    DataSet = DmGlobal.TblCiudad
    Left = 547
    Top = 313
  end
end
