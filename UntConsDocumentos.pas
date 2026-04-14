unit UntConsDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGroupBox, cxRadioGroup, cxDBEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxNavigator, cxDBNavigator, cxStyles, cxInplaceContainer, cxVGrid,
  cxDBVGrid, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, cxClasses,
  cxGridLevel, cxGrid, Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBQuery,
  Datasnap.Provider, cxCurrencyEdit, dxLayoutContainer,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxMemo,
  IBX.IBDatabase, IBX.IBUpdateSQL, MidasLib, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TFrmConsDocumentos = class(TForm)
    pnlSuperior: TPanel;
    pnlDetalle: TPanel;
    DateIni: TcxDateEdit;
    DateFin: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    RgCriterio: TcxRadioGroup;
    BtnImprimir: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    LvlDocumentos: TcxGridLevel;
    GrdDocumentos: TcxGrid;
    CavDocumentos: TcxGridDBCardView;
    QryDocumentos: TIBQuery;
    CdsDocumentos: TClientDataSet;
    DtsDocumentos: TDataSource;
    DspDocumentos: TDataSetProvider;
    QryDocumentosCLI_CODI: TIntegerField;
    QryDocumentosFP_CODI: TIntegerField;
    QryDocumentosOTM_CLASE_DOC: TSmallintField;
    QryDocumentosOTM_CODI: TIntegerField;
    QryDocumentosOTM_ESTADO: TIntegerField;
    QryDocumentosOTM_FECHA: TDateTimeField;
    QryDocumentosOTM_KILOM: TIBStringField;
    QryDocumentosOTM_NUME: TIntegerField;
    QryDocumentosOTM_OBSERV: TIBStringField;
    QryDocumentosOTM_SUBT: TIBBCDField;
    QryDocumentosOTM_VR_DESC: TIBBCDField;
    QryDocumentosOTM_VR_IVA: TIBBCDField;
    QryDocumentosOTM_VR_TOTAL: TIBBCDField;
    QryDocumentosVXC_CODI: TIntegerField;
    QryDocumentosCLI_CORREOE: TIBStringField;
    QryDocumentosCLI_NUMDOC: TIBStringField;
    QryDocumentosCLI_TEL_FIJO: TIBStringField;
    QryDocumentosCLI_TEL_MOVIL: TIBStringField;
    QryDocumentosCOD_TIPDO: TIntegerField;
    QryDocumentosTD_ABREVIADO: TIBStringField;
    QryDocumentosVXC_PLACA: TIBStringField;
    QryDocumentosMR_NOMBRE: TIBStringField;
    QryDocumentosLI_NOMBRE: TIBStringField;
    CdsDocumentosCLI_CODI: TIntegerField;
    CdsDocumentosFP_CODI: TIntegerField;
    CdsDocumentosOTM_CLASE_DOC: TSmallintField;
    CdsDocumentosOTM_CODI: TIntegerField;
    CdsDocumentosOTM_ESTADO: TIntegerField;
    CdsDocumentosOTM_FECHA: TDateTimeField;
    CdsDocumentosOTM_KILOM: TWideStringField;
    CdsDocumentosOTM_NUME: TIntegerField;
    CdsDocumentosOTM_OBSERV: TWideStringField;
    CdsDocumentosOTM_SUBT: TBCDField;
    CdsDocumentosOTM_VR_DESC: TBCDField;
    CdsDocumentosOTM_VR_IVA: TBCDField;
    CdsDocumentosOTM_VR_TOTAL: TBCDField;
    CdsDocumentosVXC_CODI: TIntegerField;
    CdsDocumentosCLI_CORREOE: TWideStringField;
    CdsDocumentosCLI_DIRECCION: TWideStringField;
    CdsDocumentosCLI_NUMDOC: TWideStringField;
    CdsDocumentosCLI_TEL_FIJO: TWideStringField;
    CdsDocumentosCLI_TEL_MOVIL: TWideStringField;
    CdsDocumentosCOD_TIPDO: TIntegerField;
    CdsDocumentosTD_ABREVIADO: TWideStringField;
    CdsDocumentosVXC_PLACA: TWideStringField;
    CdsDocumentosMR_NOMBRE: TWideStringField;
    CdsDocumentosLI_NOMBRE: TWideStringField;
    CavDocumentosOTM_CLASE_DOC: TcxGridDBCardViewRow;
    CavDocumentosOTM_ESTADO: TcxGridDBCardViewRow;
    CavDocumentosOTM_FECHA: TcxGridDBCardViewRow;
    CavDocumentosOTM_KILOM: TcxGridDBCardViewRow;
    CavDocumentosOTM_NUME: TcxGridDBCardViewRow;
    CavDocumentosOTM_OBSERV: TcxGridDBCardViewRow;
    CavDocumentosOTM_SUBT: TcxGridDBCardViewRow;
    CavDocumentosOTM_VR_DESC: TcxGridDBCardViewRow;
    CavDocumentosOTM_VR_IVA: TcxGridDBCardViewRow;
    CavDocumentosOTM_VR_TOTAL: TcxGridDBCardViewRow;
    CavDocumentosNOMCOMP: TcxGridDBCardViewRow;
    CavDocumentosCLI_CORREOE: TcxGridDBCardViewRow;
    CavDocumentosCLI_NUMDOC: TcxGridDBCardViewRow;
    CavDocumentosCLI_TEL_FIJO: TcxGridDBCardViewRow;
    CavDocumentosCLI_TEL_MOVIL: TcxGridDBCardViewRow;
    CavDocumentosTD_ABREVIADO: TcxGridDBCardViewRow;
    CavDocumentosVXC_PLACA: TcxGridDBCardViewRow;
    CavDocumentosMR_NOMBRE: TcxGridDBCardViewRow;
    CavDocumentosLI_NOMBRE: TcxGridDBCardViewRow;
    TvBMasterDocs: TcxGridDBBandedTableView;
    TvBMasterDocsOTM_CLASE_DOC: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_ESTADO: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_FECHA: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_KILOM: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_NUME: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_OBSERV: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_SUBT: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_VR_DESC: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_VR_IVA: TcxGridDBBandedColumn;
    TvBMasterDocsOTM_VR_TOTAL: TcxGridDBBandedColumn;
    TvBMasterDocsNOMCOMP: TcxGridDBBandedColumn;
    TvBMasterDocsCLI_CORREOE: TcxGridDBBandedColumn;
    TvBMasterDocsCLI_DIRECCION: TcxGridDBBandedColumn;
    TvBMasterDocsCLI_NUMDOC: TcxGridDBBandedColumn;
    TvBMasterDocsCLI_TEL_FIJO: TcxGridDBBandedColumn;
    TvBMasterDocsCLI_TEL_MOVIL: TcxGridDBBandedColumn;
    TvBMasterDocsTD_ABREVIADO: TcxGridDBBandedColumn;
    TvBMasterDocsVXC_PLACA: TcxGridDBBandedColumn;
    TvBMasterDocsMR_NOMBRE: TcxGridDBBandedColumn;
    TvBMasterDocsLI_NOMBRE: TcxGridDBBandedColumn;
    QryDocumentosFP_NOMBRE: TIBStringField;
    CdsDocumentosFP_NOMBRE: TWideStringField;
    TvBMasterDocsFP_NOMBRE: TcxGridDBBandedColumn;
    QryDetalle: TIBQuery;
    DspDetalle: TDataSetProvider;
    DtsDetalle: TDataSource;
    QryDetallePRO_NOMBRE: TIBStringField;
    QryDetalleBOD_NOMBRE: TIBStringField;
    QryDetalleOTD_CANT: TIBBCDField;
    QryDetalleOTD_PRECIO: TIBBCDField;
    QryDetalleOTD_SBTOTAL: TIBBCDField;
    QryDetalleOTD_POR_IVA: TIBBCDField;
    QryDetalleOTD_VR_IVA: TIBBCDField;
    QryDetalleOTD_POR_DSC: TIBBCDField;
    QryDetalleOTD_VR_DSC: TIBBCDField;
    QryDetalleOTD_VR_TOTAL: TIBBCDField;
    QryDetalleOTM_CODI: TIntegerField;
    GrdDetalle: TcxGrid;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridDBCardViewRow11: TcxGridDBCardViewRow;
    cxGridDBCardViewRow12: TcxGridDBCardViewRow;
    cxGridDBCardViewRow13: TcxGridDBCardViewRow;
    cxGridDBCardViewRow14: TcxGridDBCardViewRow;
    cxGridDBCardViewRow15: TcxGridDBCardViewRow;
    cxGridDBCardViewRow16: TcxGridDBCardViewRow;
    cxGridDBCardViewRow17: TcxGridDBCardViewRow;
    cxGridDBCardViewRow18: TcxGridDBCardViewRow;
    cxGridDBCardViewRow19: TcxGridDBCardViewRow;
    TvBDetalle: TcxGridDBBandedTableView;
    LvlDetalle: TcxGridLevel;
    TvBDetallePRO_NOMBRE: TcxGridDBBandedColumn;
    TvBDetalleBOD_NOMBRE: TcxGridDBBandedColumn;
    TvBDetalleOTD_CANT: TcxGridDBBandedColumn;
    TvBDetalleOTD_PRECIO: TcxGridDBBandedColumn;
    TvBDetalleOTD_SBTOTAL: TcxGridDBBandedColumn;
    TvBDetalleOTD_POR_IVA: TcxGridDBBandedColumn;
    TvBDetalleOTD_VR_IVA: TcxGridDBBandedColumn;
    TvBDetalleOTD_POR_DSC: TcxGridDBBandedColumn;
    TvBDetalleOTD_VR_DSC: TcxGridDBBandedColumn;
    TvBDetalleOTD_VR_TOTAL: TcxGridDBBandedColumn;
    CdsDetalle: TClientDataSet;
    CdsDetalleOTM_CODI: TIntegerField;
    CdsDetallePRO_NOMBRE: TWideStringField;
    CdsDetalleBOD_NOMBRE: TWideStringField;
    CdsDetalleOTD_CANT: TBCDField;
    CdsDetalleOTD_PRECIO: TBCDField;
    CdsDetalleOTD_SBTOTAL: TBCDField;
    CdsDetalleOTD_POR_IVA: TBCDField;
    CdsDetalleOTD_VR_IVA: TBCDField;
    CdsDetalleOTD_POR_DSC: TBCDField;
    CdsDetalleOTD_VR_DSC: TBCDField;
    CdsDetalleOTD_VR_TOTAL: TBCDField;
    BtnBuscar: TcxButton;
    BtnVerDoc: TcxButton;
    TraDocs: TIBTransaction;
    BtnEliminar: TcxButton;
    UpdDocumentos: TIBUpdateSQL;
    UpdDetalle: TIBUpdateSQL;
    popGrdDocs: TcxGridPopupMenu;
    popGridDetalle: TcxGridPopupMenu;
    CdsDocumentosNOMCOMP: TWideStringField;
    BtnCancelar: TcxButton;
    QryDocumentosCLI_DIRECCION: TIBStringField;
    QryDocumentosNOMCOMP: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CavDocumentosOTM_CLASE_DOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvBMasterDocsOTM_CLASE_DOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvBMasterDocsOTM_ESTADOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure CdsDocumentosAfterScroll(DataSet: TDataSet);
    procedure BtnBuscarClick(Sender: TObject);
    procedure DtsDocumentosDataChange(Sender: TObject; Field: TField);
    procedure BtnVerDocClick(Sender: TObject);
    procedure TvBMasterDocsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnEliminarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure TvBMasterDocsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure BuscarDocs;
    procedure CargaryCerrar;
    function getMaxvContDet(pOtm_Codi : Integer) : Integer;
  public
    { Public declarations }
  end;

var
  FrmConsDocumentos: TFrmConsDocumentos;

implementation

{$R *.dfm}

uses UntOrdenTrabajo, UntDmGlobal, UntDmImprimirDoc;

procedure TFrmConsDocumentos.BtnBuscarClick(Sender: TObject);
begin
  //Validar fechas
  if DateIni.Date > DateFin.Date then
  begin
    Application.MessageBox('La fecha inicial no puede ser mayor que la final.', 'Advertencia', MB_ICONWARNING);
    DateFin.Date := DateIni.Date;
  end;
  if not TraDocs.Active then
    TraDocs.StartTransaction;
  BuscarDocs;
end;

function TFrmConsDocumentos.getMaxvContDet(pOtm_Codi: Integer): Integer;
begin
  Result := 0;
  DmGlobal.SqlCont.Close;
  DmGlobal.SqlCont.SQL.Clear;
  DmGlobal.SqlCont.SQL.Add('SELECT MAX(OTD_CONT) OTD_CONT FROM ordentid ');
  DmGlobal.SqlCont.SQL.Add('WHERE OTM_CODI = :OTM_CODI');
  DmGlobal.SqlCont.ParamByName('OTM_CODI').AsInteger := CdsDetalleOTM_CODI.AsInteger;
  DmGlobal.SqlCont.ExecQuery;
  if not DmGlobal.SqlCont.IsEmpty then
    Result := DmGlobal.SqlCont.FieldByName('OTD_CONT').AsInteger;
end;

procedure TFrmConsDocumentos.CargaryCerrar;
var
  FContDet : Integer;  //Variable del Cont del detalle
begin
  FrmOrdenTrabajo.vCodClienteBusc := CdsDocumentosCLI_CODI.AsInteger;
  FrmOrdenTrabajo.vOtmCodiBusc := CdsDocumentosOTM_CODI.AsInteger;
  FContDet := getMaxvContDet(CdsDocumentosOTM_CODI.AsInteger);
  FrmOrdenTrabajo.vContDet := FContDet;
  ModalResult := mrOk;
end;

procedure TFrmConsDocumentos.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmConsDocumentos.BtnEliminarClick(Sender: TObject);
begin
  if CdsDocumentosOTM_ESTADO.AsInteger = 0 then
  begin
    if Application.MessageBox('¿Desea borrar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      try
        CdsDetalle.First;
        while not CdsDetalle.Eof do
        begin
          CdsDetalle.Delete;
          CdsDetalle.Next;
        end;
        CdsDocumentos.Delete;
        CdsDetalle.ApplyUpdates(0);
        CdsDocumentos.ApplyUpdates(0);
        QryDocumentos.Transaction.CommitRetaining;
      except
        on E: Exception do
        begin
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
        end;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('No es posible borrar documentos aplicados.', 'Advertencia', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TFrmConsDocumentos.BtnImprimirClick(Sender: TObject);
begin
  DmImprimirDoc.ImprimirDoc(CdsDocumentosOTM_CODI.AsInteger, CdsDocumentosOTM_ESTADO.AsInteger,
    CdsDocumentosOTM_CLASE_DOC.AsInteger);
end;

procedure TFrmConsDocumentos.BtnVerDocClick(Sender: TObject);
begin
  CargaryCerrar;
end;

procedure TFrmConsDocumentos.BuscarDocs;
begin
  CdsDetalle.Close;
  CdsDocumentos.Close;
  QryDocumentos.Close;
  QryDocumentos.SQL.Clear;
  QryDocumentos.SQL.Add('select ORDENTIM.CLI_CODI, ORDENTIM.FP_CODI, ORDENTIM.OTM_CLASE_DOC, ORDENTIM.OTM_CODI, ');
  QryDocumentos.SQL.Add('ORDENTIM.OTM_ESTADO, ORDENTIM.OTM_FECHA, ORDENTIM.OTM_KILOM, ORDENTIM.OTM_NUME, ');
  QryDocumentos.SQL.Add('ORDENTIM.OTM_OBSERV, ORDENTIM.OTM_SUBT, ORDENTIM.OTM_VR_DESC, ORDENTIM.OTM_VR_IVA, ');
  QryDocumentos.SQL.Add('ORDENTIM.OTM_VR_TOTAL, ORDENTIM.VXC_CODI, CLI_NOMBRE NomComp, ');
  QryDocumentos.SQL.Add(' clientes.CLI_CORREOE, clientes.CLI_DIRECCION, clientes.CLI_NUMDOC, clientes.CLI_TEL_FIJO, ');
  QryDocumentos.SQL.Add('clientes.CLI_TEL_MOVIL, clientes.COD_TIPDO, tipdocumentos.td_abreviado ');
  QryDocumentos.SQL.Add(', vhxcliente.vxc_placa, marcavh.mr_nombre, lineavh.li_nombre, forma_pago.fp_nombre, otm_anulado ');
  QryDocumentos.SQL.Add('from ORDENTIM ');
  QryDocumentos.SQL.Add('INNER JOIN clientes ON clientes.cli_codi = ORDENTIM.cli_codi ');
  QryDocumentos.SQL.Add('LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = clientes.cod_tipdo ');
  QryDocumentos.SQL.Add('LEFT JOIN vhxcliente ON vhxcliente.vxc_codi = ordentim.vxc_codi ');
  QryDocumentos.SQL.Add('LEFT JOIN marcavh ON marcavh.mr_codi = vhxcliente.mr_codi ');
  QryDocumentos.SQL.Add('LEFT join lineavh ON lineavh.li_codi = vhxcliente.li_codi ');
  QryDocumentos.SQL.Add('INNER JOIN forma_pago ON forma_pago.fp_codi = ORDENTIM.FP_CODI ');
  QryDocumentos.SQL.Add('WHERE CAST(ordentim.otm_fecha AS DATE) BETWEEN :FECHAINI AND :FECHAFIN ');
  QryDocumentos.SQL.Add(' AND otm_anulado = 0');     //Solo los que no estan anulados
  if RgCriterio.ItemIndex in [0,1] then
    QryDocumentos.SQL.Add('AND ordentim.otm_clase_doc = :otm_clase_doc');
  QryDocumentos.SQL.Add('ORDER BY ORDENTIM.OTM_NUME ASC');
  QryDocumentos.ParamByName('FECHAINI').AsDate := DateIni.Date;
  QryDocumentos.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  if RgCriterio.ItemIndex in [0,1] then
    QryDocumentos.ParamByName('otm_clase_doc').AsInteger := RgCriterio.ItemIndex;
  CdsDocumentos.Open;
  if CdsDocumentos.RecordCount > 0 then
  begin
    QryDetalle.ParamByName('OTM_CODI').AsInteger := CdsDocumentosOTM_CODI.AsInteger;
    CdsDetalle.open;
    TraDocs.Commit;
    BtnEliminar.Enabled := True;
  end;
end;

procedure TFrmConsDocumentos.CavDocumentosOTM_CLASE_DOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if AText = '0' then
    AText := 'Orden'
  else if AText = '1' then
    AText := 'Factura';
end;

procedure TFrmConsDocumentos.CdsDocumentosAfterScroll(DataSet: TDataSet);
begin
  if CdsDocumentos.RecordCount > 0 then
  begin
    CdsDetalle.Close;
    QryDetalle.ParamByName('OTM_CODI').AsInteger := CdsDocumentosOTM_CODI.AsInteger;
    CdsDetalle.open;
    if CdsDocumentosOTM_ESTADO.AsInteger = 1 then
      BtnImprimir.Enabled := True
    else
      BtnImprimir.Enabled := False;
  end;
end;

procedure TFrmConsDocumentos.DtsDocumentosDataChange(Sender: TObject;
  Field: TField);
begin
  if CdsDocumentos.RecordCount > 0 then
    BtnVerDoc.Enabled := True
  else
    BtnVerDoc.Enabled := False;
end;

procedure TFrmConsDocumentos.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TDmImprimirDoc, DmImprimirDoc);
end;

procedure TFrmConsDocumentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then   //'#$1B'
  begin
    ModalResult := mrCancel;
  end;
end;

procedure TFrmConsDocumentos.FormShow(Sender: TObject);
begin
//  CdsDocumentos.Open;
//  QryDetalle.ParamByName('OTM_CODI').AsInteger := CdsDocumentosOTM_CODI.AsInteger;
//  CdsDetalle.open;
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmConsDocumentos.TvBMasterDocsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CargaryCerrar;
end;

procedure TFrmConsDocumentos.TvBMasterDocsKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    CargaryCerrar;
end;

procedure TFrmConsDocumentos.TvBMasterDocsOTM_CLASE_DOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvBMasterDocs.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvBMasterDocs.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvBMasterDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvBMasterDocsOTM_CLASE_DOC.Index];
  end;
  if AText = '0' then
    AText := 'Orden de Trabajo'
  else if AText = '1' then
    AText := 'Factura';
end;

procedure TFrmConsDocumentos.TvBMasterDocsOTM_ESTADOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvBMasterDocs.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvBMasterDocs.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvBMasterDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvBMasterDocsOTM_ESTADO.Index];
  end;
  if AText = '0' then
    AText := 'En Proceso'
  else if AText = '1' then
    AText := 'Aplicado';
end;

end.
