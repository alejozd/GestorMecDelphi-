object FrmUsuarios: TFrmUsuarios
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Usuarios'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrdPermisos: TcxGrid
    Left = 377
    Top = 0
    Width = 423
    Height = 680
    Align = alClient
    Enabled = False
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Silver'
    object TvlPermisos: TcxGridDBTableView
      PopupMenu = PopPermiso
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Images = DmGlobal.ImLNavegador32
      Navigator.Buttons.First.Enabled = False
      Navigator.Buttons.First.Hint = 'Primero'
      Navigator.Buttons.First.ImageIndex = 0
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
      Navigator.Buttons.Last.Hint = 'Ultimo'
      Navigator.Buttons.Last.ImageIndex = 5
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Hint = 'Agregar'
      Navigator.Buttons.Insert.ImageIndex = 6
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Append.Hint = 'Agregar'
      Navigator.Buttons.Append.ImageIndex = 6
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Enabled = False
      Navigator.Buttons.Delete.Hint = 'Eliminar'
      Navigator.Buttons.Delete.ImageIndex = 13
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Enabled = False
      Navigator.Buttons.Edit.Hint = 'Editar'
      Navigator.Buttons.Edit.ImageIndex = 8
      Navigator.Buttons.Edit.Visible = False
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
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = DtsPermisos
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
      object TvlPermisosPER_OPCION: TcxGridDBColumn
        Caption = 'Opci'#243'n'
        DataBinding.FieldName = 'PER_OPCION'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'MEN_CODI'
        Properties.ListColumns = <
          item
            FieldName = 'MEN_OPCION'
          end>
        Properties.ListSource = DtsMenu
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.ShowEditButtons = isebNever
        Width = 161
      end
      object TvlPermisosPER_LEER: TcxGridDBColumn
        Caption = 'Leer'
        DataBinding.FieldName = 'PER_LEER'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object TvlPermisosPER_CREAR: TcxGridDBColumn
        Caption = 'Crear'
        DataBinding.FieldName = 'PER_CREAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object TvlPermisosPER_MODIFICAR: TcxGridDBColumn
        Caption = 'Modificar'
        DataBinding.FieldName = 'PER_MODIFICAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
      end
      object TvlPermisosPER_BORRAR: TcxGridDBColumn
        Caption = 'Borrar'
        DataBinding.FieldName = 'PER_BORRAR'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
      end
    end
    object LvlPermisos: TcxGridLevel
      GridView = TvlPermisos
    end
  end
  object pnlIzquierdo: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 680
    Align = alLeft
    TabOrder = 1
    object GridUsuarios: TcxGrid
      Left = 1
      Top = 241
      Width = 375
      Height = 438
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object TvlUsuarios: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = DmGlobal.ImLNavegador32
        Navigator.Buttons.First.Enabled = False
        Navigator.Buttons.First.Hint = 'Primero'
        Navigator.Buttons.First.ImageIndex = 0
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
        Navigator.Buttons.Last.Hint = 'Ultimo'
        Navigator.Buttons.Last.ImageIndex = 5
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Insert.Hint = 'Agregar'
        Navigator.Buttons.Insert.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = 'Agregar'
        Navigator.Buttons.Append.ImageIndex = 6
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = 'Eliminar'
        Navigator.Buttons.Delete.ImageIndex = 13
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.ImageIndex = 8
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = 'Guardar'
        Navigator.Buttons.Post.ImageIndex = 9
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Enabled = False
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
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        DataController.DataSource = DtsUsuarios
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
        object TvlUsuariosUSU_USUARIO: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'USU_USUARIO'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Width = 141
        end
        object TvlUsuariosUSU_PASSWORD: TcxGridDBColumn
          Caption = 'Password'
          DataBinding.FieldName = 'USU_PASSWORD'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Options.Moving = False
          Width = 138
        end
        object TvlUsuariosUSU_ESTADO: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'USU_ESTADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueGrayed = '0'
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Width = 67
        end
      end
      object LvlUsuarios: TcxGridLevel
        GridView = TvlUsuarios
      end
    end
    object pnlSuperior: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 240
      Align = alTop
      TabOrder = 1
      object cxDBNavigator3: TcxDBNavigator
        Left = 1
        Top = 199
        Width = 370
        Height = 40
        Buttons.OnButtonClick = cxDBNavigator3ButtonsButtonClick
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
        Buttons.Delete.Enabled = False
        Buttons.Delete.Hint = 'Borrar'
        Buttons.Delete.ImageIndex = 13
        Buttons.Delete.Visible = False
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
        DataSource = DtsUsuarios
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        Align = alBottom
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object GrbDBasicos: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Alignment = alTopRight
        Caption = 'Datos Basicos'
        Enabled = False
        TabOrder = 1
        Height = 198
        Width = 373
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 36
          Height = 13
          Caption = 'Usuario'
          FocusControl = EdtUsuario
        end
        object Label2: TLabel
          Left = 16
          Top = 51
          Width = 46
          Height = 13
          Caption = 'Password'
          FocusControl = EdtPassword
        end
        object Label3: TLabel
          Left = 16
          Top = 94
          Width = 37
          Height = 13
          Caption = 'Nombre'
          FocusControl = EdtNombre
        end
        object Label5: TLabel
          Left = 16
          Top = 144
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
          FocusControl = EdtTelefono
        end
        object Label7: TLabel
          Left = 194
          Top = 51
          Width = 96
          Height = 13
          Caption = 'Confirmar Password'
        end
        object Label4: TLabel
          Left = 194
          Top = 94
          Width = 88
          Height = 13
          Caption = 'Correo Electr'#243'nico'
          FocusControl = EdtCorreo
        end
        object Label10: TLabel
          Left = 194
          Top = 144
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object EdtUsuario: TcxDBTextEdit
          Left = 13
          Top = 24
          DataBinding.DataField = 'USU_USUARIO'
          DataBinding.DataSource = DtsUsuarios
          Enabled = False
          TabOrder = 0
          Width = 172
        end
        object EdtPassword: TcxDBTextEdit
          Left = 13
          Top = 67
          DataBinding.DataField = 'USU_PASSWORD'
          DataBinding.DataSource = DtsUsuarios
          Enabled = False
          Properties.EchoMode = eemPassword
          TabOrder = 1
          Width = 172
        end
        object EdtNombre: TcxDBTextEdit
          Left = 13
          Top = 110
          DataBinding.DataField = 'USU_NOMBRE'
          DataBinding.DataSource = DtsUsuarios
          TabOrder = 3
          Width = 172
        end
        object EdtTelefono: TcxDBTextEdit
          Left = 13
          Top = 160
          DataBinding.DataField = 'USU_TELEFONO'
          DataBinding.DataSource = DtsUsuarios
          TabOrder = 5
          Width = 172
        end
        object EdtConfirmarP: TcxTextEdit
          Left = 191
          Top = 67
          Enabled = False
          Properties.EchoMode = eemPassword
          TabOrder = 2
          Width = 176
        end
        object EdtCorreo: TcxDBTextEdit
          Left = 191
          Top = 110
          DataBinding.DataField = 'USU_CORREO'
          DataBinding.DataSource = DtsUsuarios
          TabOrder = 4
          OnExit = EdtCorreoExit
          Width = 176
        end
        object TogEstado: TdxDBToggleSwitch
          Left = 194
          Top = 160
          Hint = 'Estado del empleado'
          DataBinding.DataField = 'USU_ESTADO'
          DataBinding.DataSource = DtsUsuarios
          ParentShowHint = False
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.StateIndicator.Kind = sikText
          Properties.StateIndicator.OffText = 'Inactivo'
          Properties.StateIndicator.OnText = 'Activo'
          Properties.ValueChecked = 1
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = 0
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
          TabOrder = 6
          Width = 157
        end
        object ChkVerPassword: TcxCheckBox
          Left = 279
          Top = 24
          Caption = 'Ver password'
          Properties.OnChange = ChkVerPasswordPropertiesChange
          TabOrder = 7
        end
      end
    end
  end
  object QryUsuarios: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from USUARIOS')
    UpdateObject = UpdUsuarios
    Left = 272
    Top = 336
    object QryUsuariosUSU_CODI: TIntegerField
      FieldName = 'USU_CODI'
      Origin = '"USUARIOS"."USU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryUsuariosUSU_USUARIO: TIBStringField
      FieldName = 'USU_USUARIO'
      Origin = '"USUARIOS"."USU_USUARIO"'
      Required = True
      Size = 60
    end
    object QryUsuariosUSU_PASSWORD: TIBStringField
      FieldName = 'USU_PASSWORD'
      Origin = '"USUARIOS"."USU_PASSWORD"'
      Required = True
      Size = 60
    end
    object QryUsuariosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = '"USUARIOS"."USU_NOMBRE"'
      Size = 100
    end
    object QryUsuariosUSU_CORREO: TIBStringField
      FieldName = 'USU_CORREO'
      Origin = '"USUARIOS"."USU_CORREO"'
      Size = 30
    end
    object QryUsuariosUSU_TELEFONO: TIBStringField
      FieldName = 'USU_TELEFONO'
      Origin = '"USUARIOS"."USU_TELEFONO"'
      Size = 30
    end
    object QryUsuariosUSU_ESTADO: TSmallintField
      FieldName = 'USU_ESTADO'
      Origin = '"USUARIOS"."USU_ESTADO"'
    end
  end
  object UpdUsuarios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  USU_CODI,'
      '  USU_USUARIO,'
      '  USU_PASSWORD,'
      '  USU_NOMBRE,'
      '  USU_CORREO,'
      '  USU_TELEFONO,'
      '  USU_ESTADO'
      'from USUARIOS '
      'where'
      '  USU_CODI = :USU_CODI')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  USU_USUARIO = :USU_USUARIO,'
      '  USU_PASSWORD = :USU_PASSWORD,'
      '  USU_NOMBRE = :USU_NOMBRE,'
      '  USU_CORREO = :USU_CORREO,'
      '  USU_TELEFONO = :USU_TELEFONO,'
      '  USU_ESTADO = :USU_ESTADO'
      'where'
      '  USU_CODI = :OLD_USU_CODI')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      
        '  (USU_USUARIO, USU_PASSWORD, USU_NOMBRE, USU_CORREO, USU_TELEFO' +
        'NO, USU_ESTADO)'
      'values'
      
        '  (:USU_USUARIO, :USU_PASSWORD, :USU_NOMBRE, :USU_CORREO, :USU_T' +
        'ELEFONO, '
      '   :USU_ESTADO)')
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  USU_CODI = :OLD_USU_CODI')
    Left = 344
    Top = 336
  end
  object CdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUsuarios'
    BeforeInsert = CdsUsuariosBeforeInsert
    BeforeEdit = CdsUsuariosBeforeEdit
    BeforePost = CdsUsuariosBeforePost
    AfterPost = CdsUsuariosAfterPost
    BeforeDelete = CdsUsuariosBeforeDelete
    AfterScroll = CdsUsuariosAfterScroll
    OnNewRecord = CdsUsuariosNewRecord
    Left = 272
    Top = 392
    object CdsUsuariosUSU_CODI: TIntegerField
      FieldName = 'USU_CODI'
      Origin = '"USUARIOS"."USU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsUsuariosUSU_USUARIO: TWideStringField
      FieldName = 'USU_USUARIO'
      Origin = '"USUARIOS"."USU_USUARIO"'
      Required = True
      Size = 60
    end
    object CdsUsuariosUSU_PASSWORD: TWideStringField
      FieldName = 'USU_PASSWORD'
      Origin = '"USUARIOS"."USU_PASSWORD"'
      Required = True
      Size = 60
    end
    object CdsUsuariosUSU_NOMBRE: TWideStringField
      FieldName = 'USU_NOMBRE'
      Origin = '"USUARIOS"."USU_NOMBRE"'
      Size = 100
    end
    object CdsUsuariosUSU_CORREO: TWideStringField
      FieldName = 'USU_CORREO'
      Origin = '"USUARIOS"."USU_CORREO"'
      Size = 30
    end
    object CdsUsuariosUSU_TELEFONO: TWideStringField
      FieldName = 'USU_TELEFONO'
      Origin = '"USUARIOS"."USU_TELEFONO"'
      Size = 30
    end
    object CdsUsuariosUSU_ESTADO: TSmallintField
      FieldName = 'USU_ESTADO'
      Origin = '"USUARIOS"."USU_ESTADO"'
    end
  end
  object DspUsuarios: TDataSetProvider
    DataSet = QryUsuarios
    Left = 344
    Top = 392
  end
  object DtsUsuarios: TDataSource
    DataSet = CdsUsuarios
    Left = 272
    Top = 448
  end
  object TraUsuarios: TIBTransaction
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 344
    Top = 448
  end
  object QryPermisos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.per_codi, p.per_opcion, p.usu_codi, p.per_leer,'
      'p.per_crear, p.per_modificar, p.per_borrar'
      'FROM permisos P'
      'WHERE P.usu_codi = :usu_codi')
    UpdateObject = UpdPermisos
    Left = 600
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu_codi'
        ParamType = ptUnknown
      end>
    object QryPermisosPER_CODI: TIntegerField
      FieldName = 'PER_CODI'
      Origin = '"PERMISOS"."PER_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPermisosPER_OPCION: TIntegerField
      FieldName = 'PER_OPCION'
      Origin = '"PERMISOS"."PER_OPCION"'
      Required = True
    end
    object QryPermisosUSU_CODI: TIntegerField
      FieldName = 'USU_CODI'
      Origin = '"PERMISOS"."USU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPermisosPER_LEER: TSmallintField
      FieldName = 'PER_LEER'
      Origin = '"PERMISOS"."PER_LEER"'
    end
    object QryPermisosPER_CREAR: TSmallintField
      FieldName = 'PER_CREAR'
      Origin = '"PERMISOS"."PER_CREAR"'
    end
    object QryPermisosPER_MODIFICAR: TSmallintField
      FieldName = 'PER_MODIFICAR'
      Origin = '"PERMISOS"."PER_MODIFICAR"'
    end
    object QryPermisosPER_BORRAR: TSmallintField
      FieldName = 'PER_BORRAR'
      Origin = '"PERMISOS"."PER_BORRAR"'
    end
  end
  object UpdPermisos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from permisos '
      'where'
      '  PER_CODI = :PER_CODI')
    ModifySQL.Strings = (
      'update permisos'
      'set'
      '  PER_OPCION = :PER_OPCION,'
      '  USU_CODI = :USU_CODI,'
      '  PER_LEER = :PER_LEER,'
      '  PER_CREAR = :PER_CREAR,'
      '  PER_MODIFICAR = :PER_MODIFICAR,'
      '  PER_BORRAR = :PER_BORRAR'
      'where'
      '  PER_CODI = :OLD_PER_CODI')
    InsertSQL.Strings = (
      'insert into permisos'
      
        '  (PER_OPCION, USU_CODI, PER_LEER, PER_CREAR, PER_MODIFICAR, PER' +
        '_BORRAR)'
      'values'
      
        '  (:PER_OPCION, :USU_CODI, :PER_LEER, :PER_CREAR, :PER_MODIFICAR' +
        ', :PER_BORRAR)')
    DeleteSQL.Strings = (
      'delete from permisos'
      'where'
      '  PER_CODI = :OLD_PER_CODI')
    Left = 680
    Top = 384
  end
  object CdsPermisos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPermisos'
    BeforeInsert = CdsPermisosBeforeInsert
    BeforeEdit = CdsPermisosBeforeEdit
    AfterPost = CdsPermisosAfterPost
    BeforeDelete = CdsPermisosBeforeDelete
    Left = 600
    Top = 440
    object CdsPermisosPER_CODI: TIntegerField
      FieldName = 'PER_CODI'
      Origin = '"PERMISOS"."PER_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPermisosPER_OPCION: TIntegerField
      FieldName = 'PER_OPCION'
      Origin = '"PERMISOS"."PER_OPCION"'
      Required = True
    end
    object CdsPermisosUSU_CODI: TIntegerField
      FieldName = 'USU_CODI'
      Origin = '"PERMISOS"."USU_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPermisosPER_LEER: TSmallintField
      FieldName = 'PER_LEER'
      Origin = '"PERMISOS"."PER_LEER"'
    end
    object CdsPermisosPER_CREAR: TSmallintField
      FieldName = 'PER_CREAR'
      Origin = '"PERMISOS"."PER_CREAR"'
    end
    object CdsPermisosPER_MODIFICAR: TSmallintField
      FieldName = 'PER_MODIFICAR'
      Origin = '"PERMISOS"."PER_MODIFICAR"'
    end
    object CdsPermisosPER_BORRAR: TSmallintField
      FieldName = 'PER_BORRAR'
      Origin = '"PERMISOS"."PER_BORRAR"'
    end
  end
  object DspPermisos: TDataSetProvider
    DataSet = QryPermisos
    Left = 680
    Top = 440
  end
  object DtsPermisos: TDataSource
    DataSet = CdsPermisos
    Left = 600
    Top = 496
  end
  object TblMenu: TIBTable
    Database = DmGlobal.DbGlobal
    Transaction = TraUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'MEN_CODI'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MEN_OPCION'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_MENU'
        Fields = 'MEN_CODI'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'MENU'
    UniDirectional = False
    Left = 528
    Top = 384
    object TblMenuMEN_CODI: TIntegerField
      FieldName = 'MEN_CODI'
      Required = True
    end
    object TblMenuMEN_OPCION: TIBStringField
      FieldName = 'MEN_OPCION'
      Required = True
      Size = 100
    end
  end
  object DtsMenu: TDataSource
    DataSet = TblMenu
    Left = 528
    Top = 496
  end
  object QryMenu: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraUsuarios
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT M.men_codi'
      'FROM MENU M'
      'WHERE NOT EXISTS (SELECT * FROM PERMISOS P WHERE '
      'P.per_opcion = M.men_codi AND P.usu_codi = :USU_CODI)'
      'ORDER BY MEN_CODI ASC')
    Left = 472
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USU_CODI'
        ParamType = ptUnknown
      end>
    object QryMenuMEN_CODI: TIntegerField
      FieldName = 'MEN_CODI'
      Origin = '"MENU"."MEN_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object PopPermiso: TPopupMenu
    Left = 736
    Top = 288
    object popMarcarFila: TMenuItem
      Caption = 'Marcar Toda la Fila'
      OnClick = popMarcarFilaClick
    end
    object popMarcarColumna: TMenuItem
      Caption = 'Marcar Toda la Columna Leer'
      OnClick = popMarcarColumnaClick
    end
    object popMarcarColumnaCrear: TMenuItem
      Caption = 'Marcar Toda la Columna Crear'
      OnClick = popMarcarColumnaCrearClick
    end
    object popMarcarColumnaMod: TMenuItem
      Caption = 'Marcar Toda la Columna Modificar'
      OnClick = popMarcarColumnaModClick
    end
    object popMarcarColumnaBorrar: TMenuItem
      Caption = 'Marcar Toda la Columna Borrar'
      OnClick = popMarcarColumnaBorrarClick
    end
  end
end
