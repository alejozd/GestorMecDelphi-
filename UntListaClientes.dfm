object FrmListaClientes: TFrmListaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Busqueda de Clientes'
  ClientHeight = 485
  ClientWidth = 908
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlListaClientes: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 485
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 766
    object GridListaCli: TcxGrid
      Left = 1
      Top = 1
      Width = 906
      Height = 483
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ExplicitWidth = 764
      object TvlListaClie: TcxGridDBBandedTableView
        OnKeyPress = TvlListaClieKeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = TvlListaClieCellDblClick
        DataController.DataSource = FrmOrdenTrabajo.DtsListaClientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        Styles.Content = DmGlobal.Contenido
        Styles.Header = DmGlobal.Titulos8
        Styles.BandHeader = DmGlobal.Titulos8
        Bands = <
          item
            Caption = 'Vehiculo'
            FixedKind = fkLeft
            Options.Moving = False
          end
          item
            Caption = 'Cliente'
            Options.Moving = False
          end>
        object TvlListaClieCLI_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLI_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 207
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvlListaClieTD_ABREVIADO: TcxGridDBBandedColumn
          Caption = 'Tipo Doc.'
          DataBinding.FieldName = 'TD_ABREVIADO'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvlListaClieCLI_NUMDOC: TcxGridDBBandedColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'CLI_NUMDOC'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object TvlListaClieCLI_TEL_MOVIL: TcxGridDBBandedColumn
          Caption = 'Tel. M'#243'vil'
          DataBinding.FieldName = 'CLI_TEL_MOVIL'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object TvlListaClieCLI_TEL_FIJO: TcxGridDBBandedColumn
          Caption = 'Tel. Fijo'
          DataBinding.FieldName = 'CLI_TEL_FIJO'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object TvlListaClieCLI_DIRECCION: TcxGridDBBandedColumn
          Caption = 'Direcci'#243'n'
          DataBinding.FieldName = 'CLI_DIRECCION'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object TvlListaClieCLI_CORREOE: TcxGridDBBandedColumn
          Caption = 'Correo Electr'#243'nico'
          DataBinding.FieldName = 'CLI_CORREOE'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object TvlListaClieVXC_PLACA: TcxGridDBBandedColumn
          Caption = 'Placa'
          DataBinding.FieldName = 'VXC_PLACA'
          HeaderAlignmentHorz = taCenter
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object TvlListaClieMR_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MR_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object TvlListaClieLI_NOMBRE: TcxGridDBBandedColumn
          Caption = 'Linea'
          DataBinding.FieldName = 'LI_NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object LvlListaCli: TcxGridLevel
        GridView = TvlListaClie
      end
    end
  end
end
