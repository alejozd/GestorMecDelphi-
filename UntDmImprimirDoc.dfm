object DmImprimirDoc: TDmImprimirDoc
  OldCreateOrder = False
  Height = 249
  Width = 326
  object QryEncabezado: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT T.td_abreviado, C.cli_numdoc, C.CLI_NOMBRE, c.cli_direcci' +
        'on,'
      
        'iif(C.cli_tel_fijo <> '#39#39', C.cli_tel_fijo, c.cli_tel_movil) TELEF' +
        'ONO,'
      'M.*, V.vxc_placa, MC.mr_nombre, LI.li_nombre, F.fp_nombre F_PAGO'
      'FROM ORDENTIM M'
      'INNER JOIN CLIENTES C ON C.cli_codi = M.cli_codi'
      'INNER JOIN tipdocumentos T ON T.td_codi = C.cod_tipdo'
      'LEFT JOIN vhxcliente V ON V.vxc_codi = M.vxc_codi '
      '  AND V.cli_codi = M.cli_codi'
      'LEFT JOIN marcavh MC ON MC.mr_codi = V.mr_codi'
      'LEFT join lineavh LI ON LI.li_codi = V.li_codi'
      'INNER JOIN forma_pago F ON F.fp_codi= M.fp_codi'
      'WHERE M.otm_codi = :otm_codi AND M.otm_estado = :otm_estado')
    Left = 24
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'otm_codi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'otm_estado'
        ParamType = ptUnknown
      end>
    object QryEncabezadoTD_ABREVIADO: TIBStringField
      FieldName = 'TD_ABREVIADO'
      Origin = '"TIPDOCUMENTOS"."TD_ABREVIADO"'
      Size = 10
    end
    object QryEncabezadoCLI_NUMDOC: TIBStringField
      FieldName = 'CLI_NUMDOC'
      Origin = '"CLIENTES"."CLI_NUMDOC"'
      Required = True
    end
    object QryEncabezadoOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTIM"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEncabezadoOTM_CLASE_DOC: TSmallintField
      FieldName = 'OTM_CLASE_DOC'
      Origin = '"ORDENTIM"."OTM_CLASE_DOC"'
    end
    object QryEncabezadoOTM_NUME: TIntegerField
      FieldName = 'OTM_NUME'
      Origin = '"ORDENTIM"."OTM_NUME"'
    end
    object QryEncabezadoCLI_CODI: TIntegerField
      FieldName = 'CLI_CODI'
      Origin = '"ORDENTIM"."CLI_CODI"'
      Required = True
    end
    object QryEncabezadoOTM_FECHA: TDateTimeField
      FieldName = 'OTM_FECHA'
      Origin = '"ORDENTIM"."OTM_FECHA"'
    end
    object QryEncabezadoVXC_CODI: TIntegerField
      FieldName = 'VXC_CODI'
      Origin = '"ORDENTIM"."VXC_CODI"'
      Required = True
    end
    object QryEncabezadoOTM_KILOM: TIBStringField
      FieldName = 'OTM_KILOM'
      Origin = '"ORDENTIM"."OTM_KILOM"'
      Size = 10
    end
    object QryEncabezadoOTM_OBSERV: TIBStringField
      FieldName = 'OTM_OBSERV'
      Origin = '"ORDENTIM"."OTM_OBSERV"'
      Size = 2000
    end
    object QryEncabezadoOTM_SUBT: TIBBCDField
      FieldName = 'OTM_SUBT'
      Origin = '"ORDENTIM"."OTM_SUBT"'
      Precision = 18
      Size = 2
    end
    object QryEncabezadoOTM_VR_IVA: TIBBCDField
      FieldName = 'OTM_VR_IVA'
      Origin = '"ORDENTIM"."OTM_VR_IVA"'
      Precision = 18
      Size = 2
    end
    object QryEncabezadoOTM_VR_DESC: TIBBCDField
      FieldName = 'OTM_VR_DESC'
      Origin = '"ORDENTIM"."OTM_VR_DESC"'
      Precision = 18
      Size = 2
    end
    object QryEncabezadoOTM_VR_TOTAL: TIBBCDField
      FieldName = 'OTM_VR_TOTAL'
      Origin = '"ORDENTIM"."OTM_VR_TOTAL"'
      Precision = 18
      Size = 2
    end
    object QryEncabezadoFP_CODI: TIntegerField
      FieldName = 'FP_CODI'
      Origin = '"ORDENTIM"."FP_CODI"'
      Required = True
    end
    object QryEncabezadoOTM_ESTADO: TIntegerField
      FieldName = 'OTM_ESTADO'
      Origin = '"ORDENTIM"."OTM_ESTADO"'
    end
    object QryEncabezadoOTM_FECHA_VENCE: TDateTimeField
      FieldName = 'OTM_FECHA_VENCE'
      Origin = '"ORDENTIM"."OTM_FECHA_VENCE"'
    end
    object QryEncabezadoVXC_PLACA: TIBStringField
      FieldName = 'VXC_PLACA'
      Origin = '"VHXCLIENTE"."VXC_PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QryEncabezadoMR_NOMBRE: TIBStringField
      FieldName = 'MR_NOMBRE'
      Origin = '"MARCAVH"."MR_NOMBRE"'
      Size = 50
    end
    object QryEncabezadoLI_NOMBRE: TIBStringField
      FieldName = 'LI_NOMBRE'
      Origin = '"LINEAVH"."LI_NOMBRE"'
      Size = 50
    end
    object QryEncabezadoTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      ProviderFlags = []
    end
    object QryEncabezadoOTM_ANULADO: TIntegerField
      FieldName = 'OTM_ANULADO'
      Origin = '"ORDENTIM"."OTM_ANULADO"'
    end
    object QryEncabezadoF_PAGO: TIBStringField
      FieldName = 'F_PAGO'
      Origin = '"FORMA_PAGO"."FP_NOMBRE"'
    end
    object QryEncabezadoCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = '"CLIENTES"."CLI_NOMBRE"'
      Required = True
      Size = 255
    end
    object QryEncabezadoCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Origin = '"CLIENTES"."CLI_DIRECCION"'
      Size = 255
    end
  end
  object RptOrdenT: TfrxReport
    Version = '6.4.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Alejandro Zambrano'
    ReportOptions.CreateDate = 43612.889570162000000000
    ReportOptions.LastChange = 43687.856439976850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Temp         : real;'
      '  DigitA,DigitB: integer;'
      '  Ams          : string;'
      '  Ac           : string;'
      '  NumStr       : TStringList;'
      ''
      'function xIntToLletras(Numero:LongInt):String;'
      ''
      '  function xxIntToLletras(Valor:LongInt):String;'
      '  var'
      '   Centena, Decena, Unidad, Doble: LongInt;'
      '   Linea: String;'
      ''
      '   aUnidad : array[1..15] of string ='
      '     ['#39'UN'#39','#39'DOS'#39','#39'TRES'#39','#39'CUATRO'#39','#39'CINCO'#39','#39'SEIS'#39','
      '      '#39'SIETE'#39','#39'OCHO'#39','#39'NUEVE'#39','#39'DIEZ'#39','#39'ONCE'#39','#39'DOCE'#39','
      '      '#39'TRECE'#39','#39'CATORCE'#39','#39'QUINCE'#39'];'
      '   aCentena: array[1..9]  of string ='
      '     ['#39'CIENTO'#39','#39'DOSCIENTOS'#39','#39'TRESCIENTOS'#39','
      '      '#39'CUATROCIENTOS'#39','#39'QUINIENTOS'#39','#39'SEISCIENTOS'#39','
      '      '#39'SETECIENTOS'#39','#39'OCHOCIENTOS'#39','#39'NOVECIENTOS'#39'];'
      '   aDecena : array[1..9]  of string ='
      '    ['#39'DIECI'#39','#39'VEINTI'#39','#39'TREINTA'#39','#39'CUARENTA'#39','#39'CINCUENTA'#39','
      '     '#39'SESENTA'#39','#39'SETENTA'#39','#39'OCHENTA'#39','#39'NOVENTA'#39'];'
      ''
      '  begin'
      '   if valor=100 then Linea:='#39' CIEN '#39
      '   else begin'
      '     Linea:='#39#39';'
      '     Centena := Valor div 100;'
      '     Doble   := Valor - (Centena*100);'
      '     Decena  := (Valor div 10) - (Centena*10);'
      '     Unidad  := Valor - (Decena*10) - (Centena*100);'
      ''
      
        '     if Centena>0 then Linea := Linea + Acentena[centena - 1]+'#39' ' +
        #39';'
      ''
      '     if Doble>0 then begin'
      '       if Doble=20 then Linea := Linea +'#39' VEINTE '#39
      '         else begin'
      '          if doble<16 then Linea := Linea + aUnidad[Doble - 1]'
      '            else begin'
      '                 Linea := Linea +'#39' '#39'+ Adecena[Decena - 1];'
      
        '                 if (Decena>2) and (Unidad<>0) then Linea := Lin' +
        'ea+'#39' Y '#39';'
      
        '                 if Unidad>0 then Linea := Linea + aUnidad[Unida' +
        'd - 1];'
      '            end;'
      '         end;'
      '     end;'
      '   end;'
      '   Result := Linea;'
      '  end;'
      ''
      'var'
      '   Millones,Miles,Unidades: Longint;'
      '   Linea : String;'
      'begin'
      
        '  {Inicializamos el string que contendr'#225' las letras seg'#250'n el val' +
        'or'
      '  num'#233'rico}'
      '  if numero=0 then'
      '    Linea := '#39'CERO'#39
      '  else if numero<0 then'
      '    Linea := '#39'MENOS '#39
      '  else if numero=1 then'
      '  begin'
      '    Linea := '#39'UN'#39';'
      '    //xIntToLletras := Linea;'
      '    Result := Linea;'
      '    exit;'
      '  end'
      '  else if numero>1 then'
      '    Linea := '#39#39';'
      ''
      '  {Determinamos el N'#186' de millones, miles y unidades de numero en'
      '  positivo}'
      '  //Numero   := Abs(Numero);'
      '  Numero   := Numero;'
      '  Millones := numero div 1000000;'
      '  Miles     := (numero - (Millones*1000000)) div 1000;'
      '  Unidades  := numero - ((Millones*1000000)+(Miles*1000));'
      ''
      
        '  {Vamos poniendo en el string las cadenas de los n'#250'meros(llaman' +
        'do'
      '  a subfuncion)}'
      '  if Millones=1 then Linea:= Linea + '#39' UN MILLON '#39
      
        '  else if Millones>1 then Linea := Linea + xxIntToLletras(Millon' +
        'es)'
      '                                   + '#39' MILLONES '#39';'
      ''
      '  if Miles =1 then Linea:= Linea + '#39' MIL '#39
      '  else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+'
      '                                '#39' MIL '#39';'
      ''
      '  if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);'
      ''
      '  //xIntToLletras := Linea;'
      '  Result := Linea + '#39' pesos mcte.'#39';'
      'end;'
      ''
      'procedure txtMontoLetrasOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if frxEncabezadoOTM_VR_TOTAL.value = null then'
      '    txtMontoLetras.text := '#39#39
      '  else            '
      
        '    txtMontoLetras.text := xIntToLletras(frxEncabezadoOTM_VR_TOT' +
        'AL.value);'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if page1.pagecount > 1 then'
      
        '    pagefooter1.PrintOnFirstPage := false                       ' +
        '                                       '
      '  else if page1.pagecount = 1 then'
      '    pagefooter1.PrintOnFirstPage := True;   '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'RptOnStartReport'
    OnStopReport = 'RptOnStopReport'
    Left = 256
    Top = 16
    Datasets = <
      item
        DataSet = frxDtsDetalle
        DataSetName = 'frxDetalle'
      end
      item
        DataSet = frxDtsEncabezado
        DataSetName = 'frxEncabezado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 291.023810000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Orden de Trabajo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 366.614410000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SERVITECA EL IMPERIO')
          ParentFont = False
        end
        object frxDBDataset1CLI_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 98.267780000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NOMBRE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1TD_ABREVIADO: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 132.283550000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'TD_ABREVIADO'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."TD_ABREVIADO"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_NUMDOC: TfrxMemoView
          AllowVectorExport = True
          Left = 153.756030000000000000
          Top = 132.283550000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NUMDOC'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_NUMDOC"]')
          ParentFont = False
        end
        object frxDBDataset1VXC_PLACA: TfrxMemoView
          AllowVectorExport = True
          Left = 650.858592360000000000
          Top = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VXC_PLACA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."VXC_PLACA"]')
          ParentFont = False
        end
        object frxDBDataset1LI_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 628.181412360000000000
          Top = 128.504020000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'LI_NOMBRE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."LI_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1OTM_KILOM: TfrxMemoView
          AllowVectorExport = True
          Left = 650.858592360000000000
          Top = 187.196970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_KILOM'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."OTM_KILOM"]')
          ParentFont = False
        end
        object frxDBDataset1OTM_FECHA: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 66.913420000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_FECHA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."OTM_FECHA"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 94.488250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Marca:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 128.504020000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Linea:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Placa:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 187.196970000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Kilometraje:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 66.913420000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fecha:')
          ParentFont = False
        end
        object frxEncabezadoMR_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 94.708720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'MR_NOMBRE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."MR_NOMBRE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Direcci'#243'n:')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 188.976500000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tel'#233'fono')
        end
        object frxEncabezadoCLI_DIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 158.740260000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_DIRECCION'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_DIRECCION"]')
          ParentFont = False
        end
        object frxEncabezadoTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 188.976500000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."TELEFONO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 272.126160000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REF.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CANT.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 272.126160000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRIPCI'#211'N')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'V/R UNITARIO')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 272.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 272.126160000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 272.126160000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 272.126160000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 272.126160000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object frxEncabezadoF_PAGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 215.433210000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'F_PAGO'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."F_PAGO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 215.433210000000000000
          Width = 83.149660000000000000
          Height = 37.795300000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Condiciones de pago')
        end
        object frxEncabezadoOTM_FECHA_VENCE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 215.433210000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_FECHA_VENCE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."OTM_FECHA_VENCE"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 215.433210000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vence:')
          ParentFont = False
        end
        object frxEncabezadoOTM_NUME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_NUME'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEncabezado."OTM_NUME"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.118120000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        DataSet = frxDtsDetalle
        DataSetName = 'frxDetalle'
        RowCount = 0
        object frxDetallePRO_REFERENCIA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_REFERENCIA'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."PRO_REFERENCIA"]')
          ParentFont = False
        end
        object frxDetalleOTD_CANT: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTD_CANT'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_CANT"]')
          ParentFont = False
        end
        object frxDetallePRO_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'PRO_NOMBRE'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."PRO_NOMBRE"]')
        end
        object frxDetalleOTD_PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'OTD_PRECIO'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_PRECIO"]')
          ParentFont = False
        end
        object frxDetalleOTD_VR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTD_VR_TOTAL'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_VR_TOTAL"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.220469999999978000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 0.220469999999978000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 0.220469999999978000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 0.220469999999978000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 0.220469999999978000
          Height = 18.897650000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.826840000000000000
        Top = 449.764070000000000000
        Width = 740.409927000000000000
        PrintOnFirstPage = False
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 7.559059999999990000
          Width = 207.874150000000000000
          Height = 102.047310000000000000
          Frame.Typ = []
        end
        object frxEncabezadoOTM_SUBT: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_SUBT'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_SUBT"]')
          ParentFont = False
        end
        object frxEncabezadoOTM_VR_IVA: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_VR_IVA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_VR_IVA"]')
          ParentFont = False
        end
        object frxEncabezadoOTM_VR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterData = 'frxEncabezadoOTM_VR_TOTALOnAfterData'
          DataField = 'OTM_VR_TOTAL'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_VR_TOTAL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SUB-TOTAL')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'I.V.A')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 79.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 630.961040000000000000
          Top = 7.779530000000020000
          Height = 102.047310000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 529.354670000000000000
          Top = 34.015770000000000000
          Width = 207.874150000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 529.354670000000000000
          Top = 71.811069999999900000
          Width = 207.874150000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SON:')
          ParentFont = False
        end
        object txtMontoLetras: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 18.897650000000000000
          Width = 355.275820000000000000
          Height = 64.252010000000000000
          OnBeforePrint = 'txtMontoLetrasOnBeforePrint'
          Frame.Typ = []
          Memo.UTF8W = (
            'txtAmountInWords')
        end
      end
    end
  end
  object frxDtsEncabezado: TfrxDBDataset
    UserName = 'frxEncabezado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TD_ABREVIADO=TD_ABREVIADO'
      'CLI_NUMDOC=CLI_NUMDOC'
      'CLI_NOMBRE=CLI_NOMBRE'
      'OTM_CODI=OTM_CODI'
      'OTM_CLASE_DOC=OTM_CLASE_DOC'
      'OTM_NUME=OTM_NUME'
      'CLI_CODI=CLI_CODI'
      'OTM_FECHA=OTM_FECHA'
      'VXC_CODI=VXC_CODI'
      'OTM_KILOM=OTM_KILOM'
      'OTM_OBSERV=OTM_OBSERV'
      'OTM_SUBT=OTM_SUBT'
      'OTM_VR_IVA=OTM_VR_IVA'
      'OTM_VR_DESC=OTM_VR_DESC'
      'OTM_VR_TOTAL=OTM_VR_TOTAL'
      'FP_CODI=FP_CODI'
      'OTM_ESTADO=OTM_ESTADO'
      'OTM_FECHA_VENCE=OTM_FECHA_VENCE'
      'VXC_PLACA=VXC_PLACA'
      'MR_NOMBRE=MR_NOMBRE'
      'LI_NOMBRE=LI_NOMBRE'
      'CLI_DIRECCION=CLI_DIRECCION'
      'TELEFONO=TELEFONO'
      'OTM_ANULADO=OTM_ANULADO'
      'F_PAGO=F_PAGO')
    DataSet = QryEncabezado
    BCDToCurrency = False
    Left = 256
    Top = 88
  end
  object QryDetalle: TIBQuery
    Database = DmGlobal.DbGlobal
    Transaction = DmGlobal.TraBase
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT D.*, P.pro_nombre, P.pro_referencia'
      'FROM ordentid D'
      'inner JOIN productos P ON P.pro_codi = D.pr_codi'
      'WHERE D.otm_codi = :otm_codi')
    Left = 24
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'otm_codi'
        ParamType = ptUnknown
      end>
    object QryDetalleOTM_CODI: TIntegerField
      FieldName = 'OTM_CODI'
      Origin = '"ORDENTID"."OTM_CODI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDetalleOTD_CONT: TIntegerField
      FieldName = 'OTD_CONT'
      Origin = '"ORDENTID"."OTD_CONT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDetallePR_CODI: TIntegerField
      FieldName = 'PR_CODI'
      Origin = '"ORDENTID"."PR_CODI"'
      Required = True
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
    object QryDetalleEMP_CODI: TIntegerField
      FieldName = 'EMP_CODI'
      Origin = '"ORDENTID"."EMP_CODI"'
      Required = True
    end
    object QryDetalleBOD_CODI: TIntegerField
      FieldName = 'BOD_CODI'
      Origin = '"ORDENTID"."BOD_CODI"'
      Required = True
    end
    object QryDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = '"PRODUCTOS"."PRO_NOMBRE"'
      Required = True
      Size = 50
    end
    object QryDetallePRO_REFERENCIA: TIBStringField
      FieldName = 'PRO_REFERENCIA'
      Origin = '"PRODUCTOS"."PRO_REFERENCIA"'
      Required = True
    end
  end
  object frxDtsDetalle: TfrxDBDataset
    UserName = 'frxDetalle'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OTM_CODI=OTM_CODI'
      'OTD_CONT=OTD_CONT'
      'PR_CODI=PR_CODI'
      'OTD_CANT=OTD_CANT'
      'OTD_PRECIO=OTD_PRECIO'
      'OTD_SBTOTAL=OTD_SBTOTAL'
      'OTD_POR_IVA=OTD_POR_IVA'
      'OTD_VR_IVA=OTD_VR_IVA'
      'OTD_POR_DSC=OTD_POR_DSC'
      'OTD_VR_DSC=OTD_VR_DSC'
      'OTD_VR_TOTAL=OTD_VR_TOTAL'
      'EMP_CODI=EMP_CODI'
      'BOD_CODI=BOD_CODI'
      'PRO_NOMBRE=PRO_NOMBRE'
      'PRO_REFERENCIA=PRO_REFERENCIA')
    DataSet = QryDetalle
    BCDToCurrency = False
    Left = 256
    Top = 152
  end
  object frxPDFOrden: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 96
    Top = 160
  end
  object RptFactura: TfrxReport
    Version = '6.4.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoEmail]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Alejandro Zambrano'
    ReportOptions.CreateDate = 43612.889570162000000000
    ReportOptions.LastChange = 43687.829697303200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  Temp         : real;'
      '  DigitA,DigitB: integer;'
      '  Ams          : string;'
      '  Ac           : string;'
      '  NumStr       : TStringList;'
      ''
      'function xIntToLletras(Numero:LongInt):String;'
      ' '
      '  function xxIntToLletras(Valor:LongInt):String;  '
      '  var '
      '   Centena, Decena, Unidad, Doble: LongInt;'
      '   Linea: String;'
      ''
      '   aUnidad : array[1..15] of string ='
      '     ['#39'UN'#39','#39'DOS'#39','#39'TRES'#39','#39'CUATRO'#39','#39'CINCO'#39','#39'SEIS'#39','
      '      '#39'SIETE'#39','#39'OCHO'#39','#39'NUEVE'#39','#39'DIEZ'#39','#39'ONCE'#39','#39'DOCE'#39','
      '      '#39'TRECE'#39','#39'CATORCE'#39','#39'QUINCE'#39'];       '
      '   aCentena: array[1..9]  of string ='
      '     ['#39'CIENTO'#39','#39'DOSCIENTOS'#39','#39'TRESCIENTOS'#39','
      '      '#39'CUATROCIENTOS'#39','#39'QUINIENTOS'#39','#39'SEISCIENTOS'#39','
      '      '#39'SETECIENTOS'#39','#39'OCHOCIENTOS'#39','#39'NOVECIENTOS'#39'];  '
      '   aDecena : array[1..9]  of string ='
      '    ['#39'DIECI'#39','#39'VEINTI'#39','#39'TREINTA'#39','#39'CUARENTA'#39','#39'CINCUENTA'#39','
      '     '#39'SESENTA'#39','#39'SETENTA'#39','#39'OCHENTA'#39','#39'NOVENTA'#39'];      '
      '  '
      '  begin '
      '   if valor=100 then Linea:='#39' CIEN '#39
      '   else begin '
      '     Linea:='#39#39';'
      '     Centena := Valor div 100;'
      '     Doble   := Valor - (Centena*100);'
      '     Decena  := (Valor div 10) - (Centena*10);'
      '     Unidad  := Valor - (Decena*10) - (Centena*100);'
      ' '
      
        '     if Centena>0 then Linea := Linea + Acentena[centena - 1]+'#39' ' +
        #39';'
      ' '
      '     if Doble>0 then begin '
      '       if Doble=20 then Linea := Linea +'#39' VEINTE '#39
      '         else begin '
      '          if doble<16 then Linea := Linea + aUnidad[Doble - 1]'
      '            else begin '
      '                 Linea := Linea +'#39' '#39'+ Adecena[Decena - 1];'
      
        '                 if (Decena>2) and (Unidad<>0) then Linea := Lin' +
        'ea+'#39' Y '#39';'
      
        '                 if Unidad>0 then Linea := Linea + aUnidad[Unida' +
        'd - 1];'
      '            end; '
      '         end; '
      '     end; '
      '   end; '
      '   Result := Linea;'
      '  end; '
      ' '
      'var '
      '   Millones,Miles,Unidades: Longint;'
      '   Linea : String;'
      'begin '
      
        '  {Inicializamos el string que contendr'#225' las letras seg'#250'n el val' +
        'or'
      '  num'#233'rico}'
      '  if numero=0 then '
      '    Linea := '#39'CERO'#39
      '  else if numero<0 then '
      '    Linea := '#39'MENOS '#39'  '
      '  else if numero=1 then '
      '  begin '
      '    Linea := '#39'UN'#39';'
      '    //xIntToLletras := Linea;'
      '    Result := Linea;                        '
      '    exit;  '
      '  end '
      '  else if numero>1 then '
      '    Linea := '#39#39';    '
      ' '
      '  {Determinamos el N'#186' de millones, miles y unidades de numero en'
      '  positivo}'
      '  //Numero   := Abs(Numero);'
      '  Numero   := Numero;      '
      '  Millones := numero div 1000000;'
      '  Miles     := (numero - (Millones*1000000)) div 1000;'
      '  Unidades  := numero - ((Millones*1000000)+(Miles*1000));'
      ' '
      
        '  {Vamos poniendo en el string las cadenas de los n'#250'meros(llaman' +
        'do'
      '  a subfuncion)}'
      '  if Millones=1 then Linea:= Linea + '#39' UN MILLON '#39
      
        '  else if Millones>1 then Linea := Linea + xxIntToLletras(Millon' +
        'es)'
      '                                   + '#39' MILLONES '#39';'
      ' '
      '  if Miles =1 then Linea:= Linea + '#39' MIL '#39
      '  else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+'
      '                                '#39' MIL '#39';'
      ' '
      '  if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);'
      ' '
      '  //xIntToLletras := Linea;'
      '  Result := Linea + '#39' pesos mcte.'#39';      '
      'end;'
      ''
      'procedure txtMontoLetrasOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if frxEncabezadoOTM_VR_TOTAL.value = null then'
      '    txtMontoLetras.text := '#39#39
      '  else              '
      
        '    txtMontoLetras.text := xIntToLletras(frxEncabezadoOTM_VR_TOT' +
        'AL.value);  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if page1.pagecount > 1 then'
      
        '    pagefooter1.PrintOnFirstPage := false                       ' +
        '                                       '
      '  else if page1.pagecount = 1 then'
      '    pagefooter1.PrintOnFirstPage := True;           '
      'end;'
      ''
      'begin'
      ''
      'end.            ')
    OnStartReport = 'RptOnStartReport'
    OnStopReport = 'RptOnStopReport'
    Left = 184
    Top = 16
    Datasets = <
      item
        DataSet = frxDtsDetalle
        DataSetName = 'frxDetalle'
      end
      item
        DataSet = frxDtsEncabezado
        DataSetName = 'frxEncabezado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 203.000000000000000000
      PaperHeight = 182.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 230.551330000000000000
        Top = 18.897650000000000000
        Width = 691.653990000000000000
        object frxDBDataset1CLI_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 102.385900000000000000
          Top = 88.267780000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NOMBRE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_NOMBRE"]')
          ParentFont = False
        end
        object frxDBDataset1CLI_NUMDOC: TfrxMemoView
          AllowVectorExport = True
          Left = 494.929500000000000000
          Top = 137.842610000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_NUMDOC'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_NUMDOC"]')
          ParentFont = False
        end
        object frxDBDataset1VXC_PLACA: TfrxMemoView
          AllowVectorExport = True
          Left = 342.527732360000000000
          Top = 170.976500000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VXC_PLACA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."VXC_PLACA"]')
          ParentFont = False
        end
        object frxDBDataset1OTM_FECHA: TfrxMemoView
          AllowVectorExport = True
          Left = 494.929500000000000000
          Top = 157.299320000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_FECHA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_FECHA"]')
          ParentFont = False
        end
        object frxEncabezadoCLI_DIRECCION: TfrxMemoView
          AllowVectorExport = True
          Left = 108.385900000000000000
          Top = 114.944960000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_DIRECCION'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."CLI_DIRECCION"]')
        end
        object frxEncabezadoTELEFONO: TfrxMemoView
          AllowVectorExport = True
          Left = 103.385900000000000000
          Top = 144.181200000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONO'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."TELEFONO"]')
        end
        object frxEncabezadoF_PAGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 126.385900000000000000
          Top = 166.196970000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'F_PAGO'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."F_PAGO"]')
        end
        object frxEncabezadoOTM_FECHA_VENCE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 494.929500000000000000
          Top = 176.976500000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_FECHA_VENCE'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_FECHA_VENCE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 19.118120000000000000
        Top = 309.921460000000000000
        Width = 691.653990000000000000
        DataSet = frxDtsDetalle
        DataSetName = 'frxDetalle'
        RowCount = 15
        object frxDetallePRO_REFERENCIA: TfrxMemoView
          AllowVectorExport = True
          Left = 30.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'PRO_REFERENCIA'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."PRO_REFERENCIA"]')
          ParentFont = False
        end
        object frxDetalleOTD_CANT: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'OTD_CANT'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_CANT"]')
        end
        object frxDetallePRO_NOMBRE: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataField = 'PRO_NOMBRE'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."PRO_NOMBRE"]')
          ParentFont = False
        end
        object frxDetalleOTD_PRECIO: TfrxMemoView
          AllowVectorExport = True
          Left = 456.913730000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'OTD_PRECIO'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_PRECIO"]')
          ParentFont = False
        end
        object frxDetalleOTD_VR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 558.740570000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'OTD_VR_TOTAL'
          DataSet = frxDtsDetalle
          DataSetName = 'frxDetalle'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDetalle."OTD_VR_TOTAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.826840000000000000
        Top = 389.291590000000000000
        Width = 691.653990000000000000
        PrintOnFirstPage = False
        object frxEncabezadoOTM_SUBT: TfrxMemoView
          AllowVectorExport = True
          Left = 558.961040000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_SUBT'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_SUBT"]')
          ParentFont = False
        end
        object frxEncabezadoOTM_VR_IVA: TfrxMemoView
          AllowVectorExport = True
          Left = 558.961040000000000000
          Top = 45.354359999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'OTM_VR_IVA'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_VR_IVA"]')
          ParentFont = False
        end
        object frxEncabezadoOTM_VR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 558.961040000000000000
          Top = 76.370130000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          OnAfterData = 'frxEncabezadoOTM_VR_TOTALOnAfterData'
          DataField = 'OTM_VR_TOTAL'
          DataSet = frxDtsEncabezado
          DataSetName = 'frxEncabezado'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxEncabezado."OTM_VR_TOTAL"]')
          ParentFont = False
        end
        object txtMontoLetras: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 57.370130000000000000
          Width = 291.023810000000000000
          Height = 41.574830000000000000
          OnBeforePrint = 'txtMontoLetrasOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'txtAmountInWords')
          ParentFont = False
        end
      end
    end
  end
end
