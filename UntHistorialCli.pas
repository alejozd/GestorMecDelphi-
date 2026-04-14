unit UntHistorialCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MidasLib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxGroupBox, cxRadioGroup, Vcl.StdCtrls,
  cxButtons, cxTextEdit, Vcl.ExtCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  cxDBEdit, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMemo, cxCurrencyEdit, cxCalendar, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridChartView,
  cxGridDBChartView, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter;

type
  TFrmHistorialCli = class(TForm)
    pnlSuperior: TPanel;
    GrbBusqueda: TcxGroupBox;
    EdtBusqueda: TcxTextEdit;
    BtnBuscar: TcxButton;
    RgCriterio: TcxRadioGroup;
    pnlIzquierda: TPanel;
    pnlDerecha: TPanel;
    pnlDatosCli: TPanel;
    QryCliente: TIBQuery;
    DtsCliente: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    QryClienteNUMDOC: TIBStringField;
    QryClienteMARCA: TIBStringField;
    QryClienteLINEA: TIBStringField;
    QryClientePLACA: TIBStringField;
    QryClienteCOLOR: TIBStringField;
    QryClienteMODELO: TIntegerField;
    cxLabel2: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    QryClienteTDOC: TIBStringField;
    QryListaServ: TIBQuery;
    DtsListaServ: TDataSource;
    QryListaServFECHA: TDateTimeField;
    QryListaServCLASE: TSmallintField;
    QryListaServNUMERO: TIntegerField;
    QryListaServOBSERVACION: TIBStringField;
    QryListaServTOTAL: TIBBCDField;
    pnlLista: TPanel;
    GridPlacas: TcxGrid;
    TvlPlacas: TcxGridDBTableView;
    TvlPlacasTDOC: TcxGridDBColumn;
    TvlPlacasNUMDOC: TcxGridDBColumn;
    TvlPlacasNOMBRE: TcxGridDBColumn;
    TvlPlacasPLACA: TcxGridDBColumn;
    TvlPlacasMARCA: TcxGridDBColumn;
    TvlPlacasLINEA: TcxGridDBColumn;
    TvlPlacasCOLOR: TcxGridDBColumn;
    TvlPlacasMODELO: TcxGridDBColumn;
    LvlPlacas: TcxGridLevel;
    GridListaServ: TcxGrid;
    TvlListaServ: TcxGridDBTableView;
    TvlListaServFECHA: TcxGridDBColumn;
    TvlListaServCLASE: TcxGridDBColumn;
    TvlListaServNUMERO: TcxGridDBColumn;
    TvlListaServOBSERVACION: TcxGridDBColumn;
    TvlListaServTOTAL: TcxGridDBColumn;
    LvlListaServ: TcxGridLevel;
    cxLabel1: TcxLabel;
    QryDetalle: TIBQuery;
    QryListaServOTM_CODI: TIntegerField;
    QryDetallePRODUCTO: TIBStringField;
    QryDetalleCANT: TIBBCDField;
    QryDetallePRECIO: TIBBCDField;
    QryDetalleVRTOTAL: TIBBCDField;
    QryDetalleEMPLEADO: TIBStringField;
    GridDetalle: TcxGrid;
    TvlDetalle: TcxGridDBTableView;
    LvlDetalle: TcxGridLevel;
    DtsDetalle: TDataSource;
    TvlDetallePRODUCTO: TcxGridDBColumn;
    TvlDetalleCANT: TcxGridDBColumn;
    TvlDetallePRECIO: TcxGridDBColumn;
    TvlDetalleVRTOTAL: TcxGridDBColumn;
    TvlDetalleEMPLEADO: TcxGridDBColumn;
    QryDetalleREFERENCIA: TIBStringField;
    TvlDetalleREFERENCIA: TcxGridDBColumn;
    pnlGrafico: TPanel;
    QryGrafico: TIBQuery;
    DtsGrafico: TDataSource;
    QryGraficoPRODUCTO: TIBStringField;
    QryGraficoCANTIDAD: TIntegerField;
    GridGrafico: TcxGrid;
    ChGrafico: TcxGridDBChartView;
    ChGraficoSeries1: TcxGridDBChartSeries;
    LvlGrafico: TcxGridLevel;
    popGrdListSrv: TcxGridPopupMenu;
    popGrdDetalle: TcxGridPopupMenu;
    popGridPie: TcxGridPopupMenu;
    cxSplitter1: TcxSplitter;
    QryClienteNOMBRE: TIBStringField;
    procedure BtnBuscarClick(Sender: TObject);
    procedure TvlListaServCLASEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure QryClienteAfterScroll(DataSet: TDataSet);
    procedure QryListaServAfterScroll(DataSet: TDataSet);
    procedure EdtBusquedaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure BuscarCliente(pCriterio : Integer; pTexto : string);
    procedure ListaServicios(pNumDoc, pPlaca : string);
    procedure DetalleSrv(pOtmCodi : Integer);
    procedure CreaGrafico(pNumdoc, pPlaca : string);
    class function Execute: Boolean;
  public
    { Public declarations }
  end;

var
  FrmHistorialCli: TFrmHistorialCli;

implementation

{$R *.dfm}

uses UntDmGlobal;

{ TFrmHistorialCli }

procedure TFrmHistorialCli.BtnBuscarClick(Sender: TObject);
begin
  try
    if Length(Trim(EdtBusqueda.Text)) > 0 then
      BuscarCliente(RgCriterio.ItemIndex, EdtBusqueda.Text)
    else
    begin
      EdtBusqueda.SetFocus;
      Application.MessageBox('Debe digitar el texto a buscar', 'Información', MB_ICONWARNING + MB_OK);
    end;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmHistorialCli.BtnBuscarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmHistorialCli.BuscarCliente(pCriterio : Integer; pTexto : string);
begin
  try
    QryCliente.Close;
    QryCliente.SQL.Clear;
    if pCriterio = 0 then
    begin
      QryCliente.SQL.Add('SELECT TD.td_abreviado TDOC, CL.CLI_NUMDOC NUMDOC, CL.cli_nombre NOMBRE, MV.mr_nombre MARCA, ');
      QryCliente.SQL.Add('LV.li_nombre LINEA, V.vxc_placa PLACA, V.vxc_color COLOR, V.vxc_modelo MODELO');
      QryCliente.SQL.Add('FROM vhxcliente V ');
      QryCliente.SQL.Add('INNER JOIN marcavh MV ON MV.mr_codi = V.mr_codi ');
      QryCliente.SQL.Add('INNER JOIN lineavh LV ON LV.li_codi = V.li_codi ');
      QryCliente.SQL.Add('INNER JOIN clientes CL ON CL.cli_codi = V.cli_codi ');
      QryCliente.SQL.Add('INNER JOIN tipdocumentos TD ON TD.td_codi = CL.cod_tipdo ');
      QryCliente.SQL.Add('WHERE V.vxc_placa = :TEXTO ');
      QryCliente.ParamByName('TEXTO').AsString := pTexto;
    end
    else
    begin
      QryCliente.SQL.Add('SELECT TD.td_abreviado TDOC, C.cli_numdoc NUMDOC, C.cli_nombre NOMBRE, MV.mr_nombre MARCA, ');
      QryCliente.SQL.Add('LV.li_nombre LINEA, V.vxc_placa PLACA, V.vxc_color COLOR, V.vxc_modelo MODELO');
      QryCliente.SQL.Add('FROM CLIENTES C ');
      QryCliente.SQL.Add('LEFT JOIN vhxcliente V ON V.cli_codi = C.cli_codi ');
      QryCliente.SQL.Add('LEFT JOIN marcavh MV ON MV.mr_codi = V.mr_codi ');
      QryCliente.SQL.Add('LEFT JOIN lineavh LV ON LV.li_codi = V.li_codi ');
      QryCliente.SQL.Add('INNER JOIN tipdocumentos TD ON TD.td_codi = C.cod_tipdo ');
      QryCliente.SQL.Add('WHERE C.cli_numdoc = :TEXTO ');
      QryCliente.ParamByName('TEXTO').AsString := pTexto;
    end;
    QryCliente.Open;
    if QryCliente.IsEmpty then
    begin
      MessageBox(0,PChar('El registro ' + pTexto + ' no fue encontrado, verifique por favor.'), 'Advertencia',mb_ok + mb_iconinformation);
    end;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmHistorialCli.BuscarCliente. ' + e.Message);
    end;
  end;
end;

procedure TFrmHistorialCli.CreaGrafico(pNumdoc, pPlaca : string);
begin
  try
    QryGrafico.Close;
    QryGrafico.SQL.Clear;
    QryGrafico.SQL.Add('SELECT P.pro_nombre PRODUCTO, COUNT(P.pro_nombre) CANTIDAD ');
    QryGrafico.SQL.Add('FROM ordentid D ');
    QryGrafico.SQL.Add('INNER JOIN ordentim M ON M.otm_codi = D.otm_codi ');
    QryGrafico.SQL.Add('INNER JOIN clientes C ON C.cli_codi = M.cli_codi ');
    QryGrafico.SQL.Add('INNER JOIN productos P ON P.pro_codi = D.pr_codi ');
    if Length(pPlaca) > 0 then
    begin
      QryGrafico.SQL.Add('LEFT JOIN vhxcliente V ON V.vxc_codi = M.vxc_codi ');
      QryGrafico.SQL.Add('   AND V.cli_codi = C.cli_codi ');
    end;
    QryGrafico.SQL.Add('WHERE C.cli_numdoc = :NUMDOC ');
    if Length(pPlaca) > 0 then
      QryGrafico.SQL.Add('AND V.vxc_placa = :PLACA ');
    QryGrafico.SQL.Add('GROUP BY P.pro_nombre');
    QryGrafico.SQL.Add('ORDER BY CANTIDAD DESC');
    QryGrafico.ParamByName('NUMDOC').AsString := pNumdoc;
    if Length(pPlaca) > 0 then
      QryGrafico.ParamByName('PLACA').AsString := pPlaca;
    QryGrafico.Open;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmHistorialCli.CreaGrafico. ' + e.Message);
    end;
  end;
end;

procedure TFrmHistorialCli.DetalleSrv(pOtmCodi: Integer);
begin
  try
    QryDetalle.Close;
    QryDetalle.ParamByName('OTM_CODI').AsInteger := pOtmCodi;
    QryDetalle.Open;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmHistorialCli.DetalleSrv. ' + e.Message);
    end;
  end;
end;

procedure TFrmHistorialCli.EdtBusquedaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnBuscar.Click;
end;

class function TFrmHistorialCli.Execute: Boolean;
var
  FrmHistorialCli: TFrmHistorialCli;
begin
  FrmHistorialCli := FrmHistorialCli.Create(nil);
  try
    Result := FrmHistorialCli.ShowModal = mrOk;
  finally
    FrmHistorialCli.Free;
  end;
end;

procedure TFrmHistorialCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmHistorialCli := nil;
end;

procedure TFrmHistorialCli.ListaServicios(pNumDoc, pPlaca : string);
begin
  try
    QryListaServ.Close;
    QryListaServ.SQL.Clear;
    QryListaServ.SQL.Add('SELECT M.otm_fecha FECHA, M.otm_clase_doc CLASE, M.otm_nume NUMERO,');
    QryListaServ.SQL.Add('M.otm_codi otm_codi,');
    QryListaServ.SQL.Add('M.otm_observ OBSERVACION, M.otm_vr_total TOTAL');
    QryListaServ.SQL.Add('FROM ordentim M');
    QryListaServ.SQL.Add('INNER JOIN clientes C ON C.cli_codi = M.cli_codi');
    if Length(pPlaca) > 0 then
    begin
      QryListaServ.SQL.Add('LEFT JOIN vhxcliente V ON V.vxc_codi = M.vxc_codi');
      QryListaServ.SQL.Add('   AND V.cli_codi = C.cli_codi');
    end;
    QryListaServ.SQL.Add('WHERE C.cli_numdoc = :NUMDOC ');
    if Length(pPlaca) > 0 then
      QryListaServ.SQL.Add('AND V.vxc_placa = :PLACA ');
    QryListaServ.SQL.Add('ORDER BY M.otm_fecha DESC');
    QryListaServ.ParamByName('NUMDOC').AsString := pNumDoc;
    if Length(pPlaca) > 0 then
      QryListaServ.ParamByName('PLACA').AsString := pPlaca;
    QryListaServ.Open;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmHistorialCli.ListaServicios. ' + e.Message);
    end;
  end;
end;

procedure TFrmHistorialCli.QryClienteAfterScroll(DataSet: TDataSet);
begin
  ListaServicios(QryClienteNUMDOC.AsString, QryClientePLACA.AsString);
  CreaGrafico(QryClienteNUMDOC.AsString, QryClientePLACA.AsString);
end;

procedure TFrmHistorialCli.QryListaServAfterScroll(DataSet: TDataSet);
begin
  DetalleSrv(QryListaServOTM_CODI.AsInteger);
end;

procedure TFrmHistorialCli.TvlListaServCLASEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlListaServ.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlListaServ.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlListaServ.DataController.DisplayTexts[Integer(AList.Items[0]), TvlListaServCLASE.Index];
  end;
  if AText = '0' then
    AText := 'Orden de Trabajo'
  else if AText = '1' then
    AText := 'Factura';
end;

end.
