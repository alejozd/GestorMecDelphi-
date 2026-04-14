object FrmListaProveedores: TFrmListaProveedores
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Busqueda de Proveedores'
  ClientHeight = 485
  ClientWidth = 766
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlListaProveedores: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 485
    Align = alClient
    TabOrder = 0
    object GridListaPrv: TcxGrid
      Left = 1
      Top = 1
      Width = 764
      Height = 483
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      object TvlListaPrv: TcxGridDBTableView
        OnDblClick = TvlListaPrvDblClick
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Enabled = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Enabled = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Enabled = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.Visible = True
        DataController.DataSource = FrmEntradas.DtsListaProveedores
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Cantidad de Proveedores #'
            Kind = skCount
            FieldName = 'NOMCOMP'
            DisplayText = 'Cantidad de Proveedores '
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
        OptionsCustomize.GroupBySorting = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.Footer = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.Content = DmGlobal.ContenidoLetra
        Styles.Header = DmGlobal.Titulos
        object TvlListaPrvPRV_NOMBRE: TcxGridDBColumn
          Caption = 'Proveedor'
          DataBinding.FieldName = 'PRV_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 334
        end
        object TvlListaPrvTD_ABREVIADO: TcxGridDBColumn
          Caption = 'Tip. Doc.'
          DataBinding.FieldName = 'TD_ABREVIADO'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_NUMDOC: TcxGridDBColumn
          Caption = 'Num Documento'
          DataBinding.FieldName = 'PRV_NUMDOC'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_TEL_MOVIL: TcxGridDBColumn
          Caption = 'Tel. Movil'
          DataBinding.FieldName = 'PRV_TEL_MOVIL'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_TEL_FIJO: TcxGridDBColumn
          Caption = 'Tel Fijo'
          DataBinding.FieldName = 'PRV_TEL_FIJO'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_DIRECCION: TcxGridDBColumn
          Caption = 'Direcci'#243'n'
          DataBinding.FieldName = 'PRV_DIRECCION'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_CORREOE: TcxGridDBColumn
          Caption = 'Correo Electr'#243'nico'
          DataBinding.FieldName = 'PRV_CORREOE'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_CONTACTO: TcxGridDBColumn
          Caption = 'Contacto'
          DataBinding.FieldName = 'PRV_CONTACTO'
          HeaderAlignmentHorz = taCenter
        end
        object TvlListaPrvPRV_OBSERVACIONES: TcxGridDBColumn
          Caption = 'Observaciones'
          DataBinding.FieldName = 'PRV_OBSERVACIONES'
          HeaderAlignmentHorz = taCenter
        end
      end
      object LvlListaPrv: TcxGridLevel
        GridView = TvlListaPrv
      end
    end
  end
end
