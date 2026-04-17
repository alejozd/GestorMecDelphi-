unit UntConsDocsEntradas;

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
  IBX.IBDatabase, cxBlobEdit, IBX.IBUpdateSQL, MidasLib;

type
  TFrmConsDocsEntradas = class(TForm)
    pnlSuperior: TPanel;
    pnlDetalle: TPanel;
    DateIni: TcxDateEdit;
    DateFin: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    BtnImprimir: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    LvlDocumentos: TcxGridLevel;
    GrdDocumentos: TcxGrid;
    CavDocumentos: TcxGridDBCardView;
    QryDocumentos: TIBQuery;
    CdsDocumentos: TClientDataSet;
    DtsDocumentos: TDataSource;
    DspDocumentos: TDataSetProvider;
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
    QryDetalle: TIBQuery;
    DspDetalle: TDataSetProvider;
    DtsDetalle: TDataSource;
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
    CdsDetalle: TClientDataSet;
    BtnBuscar: TcxButton;
    BtnVerDoc: TcxButton;
    TraDocs: TIBTransaction;
    QryDocumentosENT_CODI: TIntegerField;
    QryDocumentosENT_NUME: TIntegerField;
    QryDocumentosPRV_CODI: TIntegerField;
    QryDocumentosENT_FECHA: TDateTimeField;
    QryDocumentosENT_OBSERVACIONES: TIBStringField;
    QryDocumentosENT_VR_TOTAL: TIBBCDField;
    QryDocumentosENT_ESTADO: TIntegerField;
    QryDocumentosPRV_NUMDOC: TIBStringField;
    QryDocumentosTD_ABREVIADO: TIBStringField;
    QryDocumentosPRV_TEL_MOVIL: TIBStringField;
    QryDocumentosPRV_TEL_FIJO: TIBStringField;
    QryDocumentosPRV_CORREOE: TIBStringField;
    CdsDocumentosENT_CODI: TIntegerField;
    CdsDocumentosENT_NUME: TIntegerField;
    CdsDocumentosPRV_CODI: TIntegerField;
    CdsDocumentosENT_FECHA: TDateTimeField;
    CdsDocumentosENT_OBSERVACIONES: TWideStringField;
    CdsDocumentosENT_VR_TOTAL: TBCDField;
    CdsDocumentosENT_ESTADO: TIntegerField;
    CdsDocumentosPRV_NUMDOC: TWideStringField;
    CdsDocumentosTD_ABREVIADO: TWideStringField;
    CdsDocumentosPRV_TEL_MOVIL: TWideStringField;
    CdsDocumentosPRV_TEL_FIJO: TWideStringField;
    CdsDocumentosPRV_DIRECCION: TWideStringField;
    CdsDocumentosPRV_CORREOE: TWideStringField;
    TvBMasterDocsENT_CODI: TcxGridDBBandedColumn;
    TvBMasterDocsENT_NUME: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_CODI: TcxGridDBBandedColumn;
    TvBMasterDocsENT_FECHA: TcxGridDBBandedColumn;
    TvBMasterDocsENT_OBSERVACIONES: TcxGridDBBandedColumn;
    TvBMasterDocsENT_VR_TOTAL: TcxGridDBBandedColumn;
    TvBMasterDocsENT_ESTADO: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_NOMBRE: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_NUMDOC: TcxGridDBBandedColumn;
    TvBMasterDocsTD_ABREVIADO: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_TEL_MOVIL: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_TEL_FIJO: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_DIRECCION: TcxGridDBBandedColumn;
    TvBMasterDocsPRV_CORREOE: TcxGridDBBandedColumn;
    QryDetalleENT_CODI: TIntegerField;
    QryDetallePRO_NOMBRE: TIBStringField;
    QryDetalleBOD_NOMBRE: TIBStringField;
    QryDetalleEND_CANT: TIBBCDField;
    QryDetalleEND_PRECIO: TIBBCDField;
    CdsDetalleENT_CODI: TIntegerField;
    CdsDetallePRO_NOMBRE: TWideStringField;
    CdsDetalleBOD_NOMBRE: TWideStringField;
    CdsDetalleEND_CANT: TBCDField;
    CdsDetalleEND_PRECIO: TBCDField;
    TvBDetalleENT_CODI: TcxGridDBBandedColumn;
    TvBDetallePRO_NOMBRE: TcxGridDBBandedColumn;
    TvBDetalleBOD_NOMBRE: TcxGridDBBandedColumn;
    TvBDetalleEND_CANT: TcxGridDBBandedColumn;
    TvBDetalleEND_PRECIO: TcxGridDBBandedColumn;
    UpdDocumentos: TIBUpdateSQL;
    UpdDetalle: TIBUpdateSQL;
    BtnEliminar: TcxButton;
    CdsDocumentosPRV_NOMBRE: TWideStringField;
    BtnCancelar: TcxButton;
    QryDocumentosPRV_NOMBRE: TIBStringField;
    QryDocumentosPRV_DIRECCION: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CdsDocumentosAfterScroll(DataSet: TDataSet);
    procedure BtnBuscarClick(Sender: TObject);
    procedure DtsDocumentosDataChange(Sender: TObject; Field: TField);
    procedure BtnVerDocClick(Sender: TObject);
    procedure TvBMasterDocsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TvBMasterDocsENT_ESTADOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnEliminarClick(Sender: TObject);
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
  FrmConsDocsEntradas: TFrmConsDocsEntradas;

implementation

{$R *.dfm}

uses UntDmGlobal, UntEntradas;

procedure TFrmConsDocsEntradas.BtnBuscarClick(Sender: TObject);
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

function TFrmConsDocsEntradas.getMaxvContDet(pOtm_Codi: Integer): Integer;
begin
  Result := 0;
  DmGlobal.SqlCont.Close;
  DmGlobal.SqlCont.SQL.Clear;
  DmGlobal.SqlCont.SQL.Add('SELECT  MAX(D.end_cont) END_CONT  FROM entradadet D');
  DmGlobal.SqlCont.SQL.Add('WHERE D.ent_codi = :ENT_CODI');
  DmGlobal.SqlCont.ParamByName('ENT_CODI').AsInteger := CdsDetalleENT_CODI.AsInteger;
  DmGlobal.SqlCont.ExecQuery;
  if not DmGlobal.SqlCont.IsEmpty then
    Result := DmGlobal.SqlCont.FieldByName('END_CONT').AsInteger;
end;

procedure TFrmConsDocsEntradas.CargaryCerrar;
var
  FContDet : Integer;  //Variable del Cont del detalle
begin
  FrmEntradas.vCodProveedorBusc := CdsDocumentosPRV_CODI.AsInteger;
  FrmEntradas.vEntCodiBusc := CdsDocumentosENT_CODI.AsInteger;
  FContDet := getMaxvContDet(CdsDocumentosENT_CODI.AsInteger);
  FrmEntradas.vContDet := FContDet;
  ModalResult := mrOk;
end;

procedure TFrmConsDocsEntradas.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmConsDocsEntradas.BtnEliminarClick(Sender: TObject);
begin
  if CdsDocumentosENT_ESTADO.AsInteger = 0 then
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
    Application.MessageBox('No es posible borrar Entradas aplicadas.', 'Advertencia', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TFrmConsDocsEntradas.BtnVerDocClick(Sender: TObject);
begin
  CargaryCerrar;
end;

procedure TFrmConsDocsEntradas.BuscarDocs;
begin
  CdsDetalle.Close;
  CdsDocumentos.Close;
  QryDocumentos.Close;
  QryDocumentos.SQL.Clear;
  QryDocumentos.SQL.Add('SELECT M.ent_codi, m.ent_nume, m.prv_codi, m.ent_fecha, ');
  QryDocumentos.SQL.Add(' m.ent_observaciones, m.ent_vr_total, m.ent_estado, PV.prv_nombre, ');
  QryDocumentos.SQL.Add(' PV.prv_numdoc, T.td_abreviado, PV.prv_tel_movil, PV.prv_tel_fijo, ');
  QryDocumentos.SQL.Add(' PV.prv_direccion, PV.prv_correoe ');
  QryDocumentos.SQL.Add(' FROM entradasm M ');
  QryDocumentos.SQL.Add(' INNER JOIN PROVEEDORES PV ON PV.prv_codi = M.prv_codi ');
  QryDocumentos.SQL.Add(' LEFT JOIN tipdocumentos T ON T.td_codi = PV.cod_tipdo ');
  QryDocumentos.SQL.Add('WHERE CAST(M.ENT_fecha AS DATE) BETWEEN :FECHAINI AND :FECHAFIN ');
  QryDocumentos.SQL.Add('ORDER BY M.ENT_NUME ASC');
  QryDocumentos.ParamByName('FECHAINI').AsDate := DateIni.Date;
  QryDocumentos.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  CdsDocumentos.Open;
  if CdsDocumentos.RecordCount > 0 then
  begin
    QryDetalle.ParamByName('ENT_CODI').AsInteger := CdsDocumentosENT_CODI.AsInteger;
    CdsDetalle.open;
    TraDocs.Commit;
    BtnEliminar.Enabled := True;
  end;
end;

procedure TFrmConsDocsEntradas.CdsDocumentosAfterScroll(DataSet: TDataSet);
begin
  if CdsDocumentos.RecordCount > 0 then
  begin
    CdsDetalle.Close;
    QryDetalle.ParamByName('ENT_CODI').AsInteger := CdsDocumentosENT_CODI.AsInteger;
    CdsDetalle.open;
  end;
end;

procedure TFrmConsDocsEntradas.DtsDocumentosDataChange(Sender: TObject;
  Field: TField);
begin
  if CdsDocumentos.RecordCount > 0 then
    BtnVerDoc.Enabled := True
  else
    BtnVerDoc.Enabled := False;
end;

procedure TFrmConsDocsEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then   //'#$1B'
  begin
    ModalResult := mrCancel;
  end;
end;

procedure TFrmConsDocsEntradas.FormShow(Sender: TObject);
begin
//  CdsDocumentos.Open;
//  QryDetalle.ParamByName('OTM_CODI').AsInteger := CdsDocumentosOTM_CODI.AsInteger;
//  CdsDetalle.open;
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmConsDocsEntradas.TvBMasterDocsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CargaryCerrar;
end;

procedure TFrmConsDocsEntradas.TvBMasterDocsENT_ESTADOGetDisplayText(
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
    AText := TvBMasterDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvBMasterDocsENT_ESTADO.Index];
  end;
  if AText = '0' then
    AText := 'En Proceso'
  else if AText = '1' then
    AText := 'Aplicado';
end;

procedure TFrmConsDocsEntradas.TvBMasterDocsKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    CargaryCerrar;
end;

end.
