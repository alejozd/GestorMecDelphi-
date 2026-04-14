unit UntDmImprimirDoc;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  frxClass, frxDBSet, frxExportPDF, MidasLib, frxDesgn, frxExportBaseDialog,
  fs_iinterpreter, fs_ipascal;

type
  TDmImprimirDoc = class(TDataModule)
    QryEncabezado: TIBQuery;
    QryEncabezadoTD_ABREVIADO: TIBStringField;
    QryEncabezadoCLI_NUMDOC: TIBStringField;
    QryEncabezadoOTM_CODI: TIntegerField;
    QryEncabezadoOTM_CLASE_DOC: TSmallintField;
    QryEncabezadoOTM_NUME: TIntegerField;
    QryEncabezadoCLI_CODI: TIntegerField;
    QryEncabezadoOTM_FECHA: TDateTimeField;
    QryEncabezadoVXC_CODI: TIntegerField;
    QryEncabezadoOTM_KILOM: TIBStringField;
    QryEncabezadoOTM_OBSERV: TIBStringField;
    QryEncabezadoOTM_SUBT: TIBBCDField;
    QryEncabezadoOTM_VR_IVA: TIBBCDField;
    QryEncabezadoOTM_VR_DESC: TIBBCDField;
    QryEncabezadoOTM_VR_TOTAL: TIBBCDField;
    QryEncabezadoFP_CODI: TIntegerField;
    QryEncabezadoOTM_ESTADO: TIntegerField;
    QryEncabezadoOTM_FECHA_VENCE: TDateTimeField;
    QryEncabezadoVXC_PLACA: TIBStringField;
    QryEncabezadoMR_NOMBRE: TIBStringField;
    QryEncabezadoLI_NOMBRE: TIBStringField;
    RptOrdenT: TfrxReport;
    frxDtsEncabezado: TfrxDBDataset;
    QryDetalle: TIBQuery;
    QryDetalleOTM_CODI: TIntegerField;
    QryDetalleOTD_CONT: TIntegerField;
    QryDetallePR_CODI: TIntegerField;
    QryDetalleOTD_CANT: TIBBCDField;
    QryDetalleOTD_PRECIO: TIBBCDField;
    QryDetalleOTD_SBTOTAL: TIBBCDField;
    QryDetalleOTD_POR_IVA: TIBBCDField;
    QryDetalleOTD_VR_IVA: TIBBCDField;
    QryDetalleOTD_POR_DSC: TIBBCDField;
    QryDetalleOTD_VR_DSC: TIBBCDField;
    QryDetalleOTD_VR_TOTAL: TIBBCDField;
    QryDetalleEMP_CODI: TIntegerField;
    QryDetalleBOD_CODI: TIntegerField;
    QryDetallePRO_NOMBRE: TIBStringField;
    QryDetallePRO_REFERENCIA: TIBStringField;
    frxDtsDetalle: TfrxDBDataset;
    frxPDFOrden: TfrxPDFExport;
    QryEncabezadoTELEFONO: TIBStringField;
    QryEncabezadoOTM_ANULADO: TIntegerField;
    QryEncabezadoF_PAGO: TIBStringField;
    RptFactura: TfrxReport;
    QryEncabezadoCLI_NOMBRE: TIBStringField;
    QryEncabezadoCLI_DIRECCION: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ImprimirDoc(p_otm_codi, p_otm_estado, p_Clase_Doc : Integer);
    procedure ObtEncabezado(p_otm_codi, p_otm_estado : Integer);
    procedure ObtDetalle(p_otm_codi : Integer);
  end;

var
  DmImprimirDoc: TDmImprimirDoc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntDmGlobal;

{$R *.dfm}

{ TDmImprimirDoc }

procedure TDmImprimirDoc.ImprimirDoc(p_otm_codi, p_otm_estado, p_Clase_Doc : Integer);
begin
  //Se enia el tipo de reporte segun el documento
  ObtEncabezado(p_otm_codi, p_otm_estado);
  ObtDetalle(p_otm_codi);
  if p_Clase_Doc = 0 then
    RptOrdenT.Report.ShowReport(True)
  else if p_Clase_Doc = 1 then
    RptFactura.Report.ShowReport(True);
end;

procedure TDmImprimirDoc.ObtDetalle(p_otm_codi: Integer);
begin
  QryDetalle.Close;
  QryDetalle.ParamByName('otm_codi').AsInteger := p_otm_codi;
  QryDetalle.Open;
end;

procedure TDmImprimirDoc.ObtEncabezado(p_otm_codi, p_otm_estado : Integer);
begin
  QryEncabezado.Close;
  QryEncabezado.ParamByName('otm_codi').AsInteger := p_otm_codi;
  QryEncabezado.ParamByName('otm_estado').AsInteger := p_otm_estado;
  QryEncabezado.Open;
end;

end.
