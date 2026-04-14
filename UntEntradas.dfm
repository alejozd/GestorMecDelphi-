object FrmEntradas: TFrmEntradas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Entradas'
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
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcEntradas: TcxPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 680
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TbsEntrada
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 676
    ClientRectLeft = 4
    ClientRectRight = 796
    ClientRectTop = 4
    object TbsEntrada: TcxTabSheet
      Caption = 'Entradas'
      ImageIndex = 0
      object pnlSuperior: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 73
        Align = alTop
        TabOrder = 0
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = 'ENTRADAS    '
          ParentColor = False
          ParentFont = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -32
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
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.LabelEffect = cxleCool
          Properties.LabelStyle = cxlsRaised
          Height = 55
          Width = 790
          AnchorX = 791
          AnchorY = 29
        end
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 73
        Width = 792
        Height = 72
        Align = alTop
        TabOrder = 1
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
            Properties.OnButtonClick = EdtBusquedaPropertiesButtonClick
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
                Caption = 'Num. Documento'
              end
              item
                Caption = 'Nombres'
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
          Caption = 'Encabezado'
          Enabled = False
          TabOrder = 1
          Height = 70
          Width = 402
          object EdtFechaOrden: TcxDBDateEdit
            Left = 64
            Top = 15
            DataBinding.DataField = 'ENT_FECHA'
            DataBinding.DataSource = DtsEntMa
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
            TabOrder = 0
            Width = 121
          end
          object EdtNumEntrada: TcxDBTextEdit
            Left = 272
            Top = 16
            DataBinding.DataField = 'ENT_NUME'
            DataBinding.DataSource = DtsEntMa
            Properties.OnEditValueChanged = EdtNumEntradaPropertiesEditValueChanged
            TabOrder = 1
            Width = 121
          end
          object cxLabel5: TcxLabel
            Left = 7
            Top = 15
            Caption = 'Fecha'
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel6: TcxLabel
            Left = 199
            Top = 15
            Caption = 'N'#250'mero'
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object LblEstadoDoc: TcxLabel
            Left = 64
            Top = 44
            Caption = 'En Proceso'
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel19: TcxLabel
            Left = 7
            Top = 44
            Caption = 'Estado: '
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object EdtDocOrigen: TcxDBTextEdit
            Left = 272
            Top = 45
            DataBinding.DataField = 'ENT_DOCORIGEN'
            DataBinding.DataSource = DtsEntMa
            Properties.OnEditValueChanged = EdtNumEntradaPropertiesEditValueChanged
            TabOrder = 6
            Width = 121
          end
          object cxLabel7: TcxLabel
            Left = 199
            Top = 44
            Caption = 'Doc. Origen'
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 145
        Width = 792
        Height = 117
        Align = alTop
        TabOrder = 2
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 447
          Height = 115
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
            Height = 112
            Width = 445
            object Label1: TLabel
              Left = 7
              Top = 81
              Width = 44
              Height = 13
              Caption = 'Contacto'
              FocusControl = EdtContacto
            end
            object EdtNumDoc: TcxDBTextEdit
              Left = 81
              Top = 54
              DataBinding.DataField = 'PRV_NUMDOC'
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 0
              Width = 135
            end
            object EdtProveedor: TcxDBTextEdit
              Left = 81
              Top = 8
              DataBinding.DataField = 'PRV_NOMBRE'
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 1
              Width = 347
            end
            object cxLabel2: TcxLabel
              Left = 7
              Top = 7
              Caption = 'Proveedor'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
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
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
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
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
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
              DataBinding.DataField = 'PRV_TEL_FIJO'
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 5
              Width = 124
            end
            object EdtTelMovil: TcxDBTextEdit
              Left = 304
              Top = 54
              DataBinding.DataField = 'PRV_TEL_MOVIL'
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 6
              Width = 124
            end
            object cxLabel13: TcxLabel
              Left = 7
              Top = 30
              Caption = 'Tip. Docu.'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
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
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
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
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 9
              Width = 135
            end
            object EdtContacto: TcxDBTextEdit
              Left = 81
              Top = 78
              DataBinding.DataField = 'PRV_CONTACTO'
              DataBinding.DataSource = DtsListaProveedores
              TabOrder = 10
              Width = 347
            end
          end
        end
        object GrbObservaciones: TcxGroupBox
          Left = 448
          Top = 1
          Align = alClient
          Caption = 'Observaciones'
          Enabled = False
          TabOrder = 1
          Height = 115
          Width = 343
          object cxDBMemo1: TcxDBMemo
            Left = 2
            Top = 18
            Align = alClient
            DataBinding.DataField = 'ENT_OBSERVACIONES'
            DataBinding.DataSource = DtsEntMa
            TabOrder = 0
            Height = 95
            Width = 339
          end
        end
      end
      object pnlDetalle: TPanel
        Left = 0
        Top = 262
        Width = 792
        Height = 410
        Align = alClient
        TabOrder = 3
        object GridEntDe: TcxGrid
          Left = 1
          Top = 1
          Width = 790
          Height = 278
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'LondonLiquidSky'
          object TvlEntDe: TcxGridDBTableView
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
            DataController.DataSource = DtsEntDe
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
            Styles.Content = DmGlobal.ContenidoLetra
            Styles.Header = DmGlobal.TitulosDetalle
            object TvlEntDePRO_NOMB: TcxGridDBColumn
              Caption = 'Nombre'
              DataBinding.FieldName = 'PRO_NOMB'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TvlEntDePRO_NOMBPropertiesButtonClick
              Properties.OnValidate = TvlEntDePRO_NOMBPropertiesValidate
              HeaderAlignmentHorz = taCenter
              Width = 121
            end
            object TvlEntDePRO_CODI: TcxGridDBColumn
              Caption = 'C'#243'digo Producto'
              DataBinding.FieldName = 'PRO_CODI'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TvlEntDePRO_CODIPropertiesButtonClick
              Properties.OnValidate = TvlEntDePRO_CODIPropertiesValidate
              HeaderAlignmentHorz = taCenter
              Width = 87
            end
            object TvlEntDePRO_CBARRAS: TcxGridDBColumn
              Caption = 'C'#243'digo de Barras'
              DataBinding.FieldName = 'PRO_CBARRAS'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = TvlEntDePRO_CBARRASPropertiesButtonClick
              Properties.OnValidate = TvlEntDePRO_CBARRASPropertiesValidate
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
            object TvlEntDeEND_CANT: TcxGridDBColumn
              Caption = 'Cantidad'
              DataBinding.FieldName = 'END_CANT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = ',0.;0.'
              Properties.OnValidate = TvlEntDeEND_CANTPropertiesValidate
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object TvlEntDeEND_VBAS: TcxGridDBColumn
              Caption = 'Vr Base'
              DataBinding.FieldName = 'END_VBAS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 85
            end
            object TvlEntDeEND_VIVA: TcxGridDBColumn
              Caption = 'Vr I.V.A.'
              DataBinding.FieldName = 'END_VIVA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 82
            end
            object TvlEntDeEND_PRECIO: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'END_PRECIO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.OnValidate = TvlEntDeEND_PRECIOPropertiesValidate
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object TvlEntDeBOD_CODI: TcxGridDBColumn
              Caption = 'Bodega'
              DataBinding.FieldName = 'BOD_CODI'
              Visible = False
              HeaderAlignmentHorz = taCenter
              VisibleForCustomization = False
              VisibleForEditForm = bFalse
              Width = 75
            end
            object TvlEntDeVR_SUBTOTAL: TcxGridDBColumn
              Caption = 'SubTotal'
              DataBinding.FieldName = 'VR_SUBTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 106
            end
          end
          object LvlEntDe: TcxGridLevel
            GridView = TvlEntDe
          end
        end
        object PnlInferior: TPanel
          Left = 1
          Top = 279
          Width = 790
          Height = 130
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            790
            130)
          object EdtTotalOrden: TcxDBCurrencyEdit
            Left = 660
            Top = 78
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'VR_TOTAL'
            DataBinding.DataSource = DtsEntDe
            Enabled = False
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.BorderColor = clWindowFrame
            StyleDisabled.BorderStyle = ebsUltraFlat
            StyleDisabled.Color = clWindow
            StyleDisabled.TextColor = clWindowText
            StyleDisabled.TextStyle = [fsBold]
            TabOrder = 0
            Width = 121
          end
          object cxLabel20: TcxLabel
            Left = 553
            Top = 79
            Anchors = [akTop, akRight]
            Caption = 'TOTAL:'
            ParentColor = False
            ParentFont = False
            Style.Color = clWindow
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.Color = clWindow
          end
          object GrbUltimaVenta: TcxGroupBox
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'Datos '#250'ltima compra'
            Enabled = False
            ParentFont = False
            Style.BorderStyle = ebsOffice11
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 128
            Width = 305
            object Label2: TLabel
              Left = 7
              Top = 17
              Width = 34
              Height = 16
              Caption = 'Fecha'
              FocusControl = cxDBDateEdit1
            end
            object Label4: TLabel
              Left = 7
              Top = 67
              Width = 126
              Height = 16
              Caption = 'Estado del documento'
            end
            object Label5: TLabel
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
              DataBinding.DataField = 'ENT_FECHA'
              DataBinding.DataSource = DtsUltCompra
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
              StyleDisabled.Color = clWindow
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
              DataBinding.DataField = 'END_PRECIO'
              DataBinding.DataSource = DtsUltCompra
              Enabled = False
              Style.Edges = []
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.Color = clWindow
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.TextColor = clBlack
              StyleDisabled.TextStyle = [fsBold]
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 83
            end
            object DbLblEstado: TcxDBLabel
              Left = 7
              Top = 86
              DataBinding.DataField = 'ESTADO'
              DataBinding.DataSource = DtsUltCompra
              ParentColor = False
              Style.Color = clWindow
              StyleDisabled.Color = clWindow
              Height = 21
              Width = 121
            end
          end
        end
      end
    end
  end
  object QryEntMa: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraEntrada
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ENTRADASM'
      'where ENT_CODI = :P_ENT_CODI'
      ' AND PRV_CODI = :P_PRV_CODI')
    UpdateObject = UpdEntMa
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 751
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_ENT_CODI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'P_PRV_CODI'
        ParamType = ptUnknown
      end>
    object QryEntMaENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Origin = '"ENTRADASM"."ENT_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEntMaENT_NUME: TIntegerField
      FieldName = 'ENT_NUME'
      Origin = '"ENTRADASM"."ENT_NUME"'
    end
    object QryEntMaPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Origin = '"ENTRADASM"."PRV_CODI"'
      Required = True
    end
    object QryEntMaENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
      Origin = '"ENTRADASM"."ENT_FECHA"'
    end
    object QryEntMaENT_OBSERVACIONES: TIBStringField
      FieldName = 'ENT_OBSERVACIONES'
      Origin = '"ENTRADASM"."ENT_OBSERVACIONES"'
      Size = 2000
    end
    object QryEntMaENT_VR_TOTAL: TIBBCDField
      FieldName = 'ENT_VR_TOTAL'
      Origin = '"ENTRADASM"."ENT_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryEntMaENT_ESTADO: TIntegerField
      FieldName = 'ENT_ESTADO'
      Origin = '"ENTRADASM"."ENT_ESTADO"'
    end
    object QryEntMaENT_DOCORIGEN: TIBStringField
      FieldName = 'ENT_DOCORIGEN'
      Origin = '"ENTRADASM"."ENT_DOCORIGEN"'
      Size = 60
    end
  end
  object UpdEntMa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ENT_CODI,'
      '  ENT_NUME,'
      '  PRV_CODI,'
      '  ENT_FECHA,'
      '  ENT_OBSERVACIONES,'
      '  ENT_VR_TOTAL,'
      '  ENT_ESTADO,'
      '  ENT_DOCORIGEN'
      'from ENTRADASM '
      'where'
      '  ENT_CODI = :ENT_CODI')
    ModifySQL.Strings = (
      'update ENTRADASM'
      'set'
      '  ENT_NUME = :ENT_NUME,'
      '  PRV_CODI = :PRV_CODI,'
      '  ENT_FECHA = :ENT_FECHA,'
      '  ENT_OBSERVACIONES = :ENT_OBSERVACIONES,'
      '  ENT_VR_TOTAL = :ENT_VR_TOTAL,'
      '  ENT_ESTADO = :ENT_ESTADO,'
      '  ENT_DOCORIGEN = :ENT_DOCORIGEN'
      'where'
      '  ENT_CODI = :OLD_ENT_CODI')
    InsertSQL.Strings = (
      'insert into ENTRADASM'
      
        '  (ENT_NUME, PRV_CODI, ENT_FECHA, ENT_OBSERVACIONES, ENT_VR_TOTA' +
        'L, '
      '   ENT_ESTADO, ENT_DOCORIGEN)'
      'values'
      
        '  (:ENT_NUME, :PRV_CODI, :ENT_FECHA, :ENT_OBSERVACIONES, :ENT_VR' +
        '_TOTAL, '
      '   :ENT_ESTADO, :ENT_DOCORIGEN)')
    DeleteSQL.Strings = (
      'delete from ENTRADASM'
      'where'
      '  ENT_CODI = :OLD_ENT_CODI')
    Left = 688
    Top = 10
  end
  object CdsEntMa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEntMa'
    AfterScroll = CdsEntMaAfterScroll
    Left = 752
    Top = 48
    object CdsEntMaENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Required = True
    end
    object CdsEntMaENT_NUME: TIntegerField
      FieldName = 'ENT_NUME'
    end
    object CdsEntMaPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Required = True
    end
    object CdsEntMaENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
    end
    object CdsEntMaENT_OBSERVACIONES: TWideStringField
      FieldName = 'ENT_OBSERVACIONES'
      Size = 2000
    end
    object CdsEntMaENT_VR_TOTAL: TBCDField
      FieldName = 'ENT_VR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CdsEntMaENT_ESTADO: TIntegerField
      FieldName = 'ENT_ESTADO'
    end
    object CdsEntMaENT_DOCORIGEN: TWideStringField
      FieldName = 'ENT_DOCORIGEN'
      Size = 60
    end
  end
  object DspEntMa: TDataSetProvider
    DataSet = QryEntMa
    Left = 688
    Top = 56
  end
  object DtsEntMa: TDataSource
    DataSet = CdsEntMa
    Left = 624
    Top = 8
  end
  object DtsListaProveedores: TDataSource
    DataSet = QryListaProveedores
    Left = 429
    Top = 8
  end
  object QryListaProveedores: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraEntrada
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT PROVEEDORES.*, tipdocumentos.td_abreviado '
      'from PROVEEDORES'
      
        'LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = PROVEEDORES.c' +
        'od_tipdo')
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 527
    Top = 8
    object QryListaProveedoresPRV_CODI: TIntegerField
      FieldName = 'PRV_CODI'
      Origin = '"PROVEEDORES"."PRV_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryListaProveedoresCOD_TIPDO: TIntegerField
      FieldName = 'COD_TIPDO'
      Origin = '"PROVEEDORES"."COD_TIPDO"'
    end
    object QryListaProveedoresPRV_NUMDOC: TIBStringField
      FieldName = 'PRV_NUMDOC'
      Origin = '"PROVEEDORES"."PRV_NUMDOC"'
      Required = True
    end
    object QryListaProveedoresPRV_TEL_MOVIL: TIBStringField
      FieldName = 'PRV_TEL_MOVIL'
      Origin = '"PROVEEDORES"."PRV_TEL_MOVIL"'
    end
    object QryListaProveedoresPRV_TEL_FIJO: TIBStringField
      FieldName = 'PRV_TEL_FIJO'
      Origin = '"PROVEEDORES"."PRV_TEL_FIJO"'
    end
    object QryListaProveedoresPRV_CORREOE: TIBStringField
      FieldName = 'PRV_CORREOE'
      Origin = '"PROVEEDORES"."PRV_CORREOE"'
      Size = 30
    end
    object QryListaProveedoresPRV_FECHA_CREA: TDateTimeField
      FieldName = 'PRV_FECHA_CREA'
      Origin = '"PROVEEDORES"."PRV_FECHA_CREA"'
      Required = True
    end
    object QryListaProveedoresPRV_CONTACTO: TIBStringField
      FieldName = 'PRV_CONTACTO'
      Origin = '"PROVEEDORES"."PRV_CONTACTO"'
      Size = 60
    end
    object QryListaProveedoresPRV_OBSERVACIONES: TIBStringField
      FieldName = 'PRV_OBSERVACIONES'
      Origin = '"PROVEEDORES"."PRV_OBSERVACIONES"'
      Size = 2000
    end
    object QryListaProveedoresTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryListaProveedoresPRV_NOMBRE: TIBStringField
      FieldName = 'PRV_NOMBRE'
      Origin = '"PROVEEDORES"."PRV_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryListaProveedoresPRV_DIRECCION: TIBStringField
      FieldName = 'PRV_DIRECCION'
      Origin = '"PROVEEDORES"."PRV_DIRECCION"'
      Size = 255
    end
  end
  object CdsEntDe: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DspEntDe'
    BeforePost = CdsEntDeBeforePost
    AfterScroll = CdsEntDeAfterScroll
    OnCalcFields = CdsEntDeCalcFields
    OnNewRecord = CdsEntDeNewRecord
    Left = 736
    Top = 360
    object CdsEntDeENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Required = True
    end
    object CdsEntDeEND_CONT: TIntegerField
      FieldName = 'END_CONT'
      Required = True
    end
    object CdsEntDePRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Required = True
    end
    object CdsEntDeEND_CANT: TBCDField
      FieldName = 'END_CANT'
      Precision = 18
      Size = 2
    end
    object CdsEntDeEND_PRECIO: TBCDField
      FieldName = 'END_PRECIO'
      OnChange = CdsEntDeEND_PRECIOChange
      Precision = 18
      Size = 2
    end
    object CdsEntDeBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Required = True
    end
    object CdsEntDePRO_NOMB: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PRO_NOMB'
      Size = 50
    end
    object CdsEntDePRO_CBARRAS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PRO_CBARRAS'
      Size = 50
    end
    object CdsEntDeVR_SUBTOTAL: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'VR_SUBTOTAL'
    end
    object CdsEntDeEND_VBAS: TBCDField
      FieldName = 'END_VBAS'
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsEntDeEND_VIVA: TBCDField
      FieldName = 'END_VIVA'
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsEntDeVR_TOTAL: TAggregateField
      FieldName = 'VR_TOTAL'
      Active = True
      DisplayName = ''
      Expression = 'SUM(VR_SUBTOTAL)'
    end
  end
  object QryEntDe: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraEntrada
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM ENTRADADET'
      'where ENT_CODI = :P_ENT_CODI')
    UpdateObject = UpdEntDe
    Left = 672
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P_ENT_CODI'
        ParamType = ptUnknown
      end>
    object QryEntDeENT_CODI: TIntegerField
      FieldName = 'ENT_CODI'
      Origin = '"ENTRADADET"."ENT_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEntDeEND_CONT: TIntegerField
      FieldName = 'END_CONT'
      Origin = '"ENTRADADET"."END_CONT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEntDePRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"ENTRADADET"."PRO_CODI"'
      Required = True
    end
    object QryEntDeEND_CANT: TIBBCDField
      FieldName = 'END_CANT'
      Origin = '"ENTRADADET"."END_CANT"'
      Precision = 18
      Size = 2
    end
    object QryEntDeEND_PRECIO: TIBBCDField
      FieldName = 'END_PRECIO'
      Origin = '"ENTRADADET"."END_PRECIO"'
      Precision = 18
      Size = 2
    end
    object QryEntDeEND_VBAS: TIBBCDField
      FieldName = 'END_VBAS'
      Origin = '"ENTRADADET"."END_VBAS"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryEntDeEND_VIVA: TIBBCDField
      FieldName = 'END_VIVA'
      Origin = '"ENTRADADET"."END_VIVA"'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryEntDeBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"ENTRADADET"."BOD_CODI"'
      Required = True
    end
  end
  object UpdEntDe: TIBUpdateSQL
    Left = 672
    Top = 416
  end
  object DspEntDe: TDataSetProvider
    DataSet = QryEntDe
    Left = 736
    Top = 416
  end
  object DtsEntDe: TDataSource
    DataSet = CdsEntDe
    Left = 616
    Top = 360
  end
  object DtsListaProductos: TDataSource
    DataSet = QryListaProductos
    Left = 622
    Top = 303
  end
  object QryListaProductos: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = TraEntrada
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT PRODUCTOS.*, COALESCE(STOCK.st_cantidad, 0) st_cantidad, ' +
        'BODEGAS.bod_nombre'
      ', coalesce((select sum(M.mvi_cantidad) AS CANTIDAD'
      'from movinventario m'
      
        'where m.pro_codi = productos.pro_codi and cast(m.mvi_fecha_docu ' +
        'as date) <=  '#39'2019-04-26'#39
      '), 0) saldo_real'
      'FROM PRODUCTOS'
      'LEFT JOIN stock ON stock.pro_codi = productos.pro_codi'
      'LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi'
      'WHERE PRO_CLASE = 0')
    GeneratorField.Generator = 'GEN_CLIENTE'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 711
    Top = 302
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
  object TraEntrada: TIBTransaction
    Active = True
    DefaultDatabase = DmGlobal.DbGlobal
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 608
    Top = 416
  end
  object QryUltimaCompra: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select m.ent_fecha,'
      'CASE'
      '  WHEN m.ent_estado = 0 THEN '#39'En proceso'#39
      '  WHEN m.ent_estado = 1 THEN '#39'Aplicada'#39
      'END estado,'
      'd.pro_codi, d.end_precio'
      'from entradasm m'
      'inner join entradadet d on d.ent_codi = m.ent_codi'
      'where m.prv_codi = :prv_codi'
      '  and m.ent_fecha = (select max(ma.ent_fecha) '
      
        '      from entradasm ma where ma.prv_codi = :prv_codi and ma.ent' +
        '_codi <> :ent_codi)'
      '  and d.pro_codi = :pro_codi')
    Left = 424
    Top = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prv_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prv_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pro_codi'
        ParamType = ptUnknown
      end>
    object QryUltimaCompraENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
      Origin = '"ENTRADASM"."ENT_FECHA"'
    end
    object QryUltimaCompraESTADO: TIBStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object QryUltimaCompraPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
      Origin = '"ENTRADADET"."PRO_CODI"'
      Required = True
    end
    object QryUltimaCompraEND_PRECIO: TIBBCDField
      FieldName = 'END_PRECIO'
      Origin = '"ENTRADADET"."END_PRECIO"'
      Precision = 18
      Size = 2
    end
  end
  object DtsUltCompra: TDataSource
    DataSet = QryUltimaCompra
    Left = 344
    Top = 560
  end
  object SqlMovInventario: TIBSQL
    Database = DmGlobal.DbGlobal
    Transaction = TraEntrada
    Left = 512
    Top = 304
  end
end
