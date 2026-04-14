unit UntOrdenTrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, cxGroupBox, Vcl.Menus, cxDBEdit,
  cxRadioGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxMemo, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  UntListaClientes, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  IBX.IBUpdateSQL, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxSpinEdit, System.ImageList, Vcl.ImgList, dxBarExtItems,
  cxBarEditItem, dxBar, dxRibbon, cxButtonEdit, cxCalc, cxCurrencyEdit,
  UntListaProductos, cxDBNavigator, UntConsDocumentos, cxCheckBox,
  dxToggleSwitch, dxDBToggleSwitch, Vcl.Buttons, IBX.IBDatabase, cxDBLabel, MidasLib,
  IBX.IBSQL;

type
  TFrmOrdenTrabajo = class(TForm)
    DtsListaClientes: TDataSource;
    QryListaClientes: TIBQuery;
    QryListaClientesCLI_CODI: TIntegerField;
    QryListaClientesCOD_TIPDO: TIntegerField;
    QryListaClientesCLI_NUMDOC: TIBStringField;
    QryListaClientesCLI_TEL_MOVIL: TIBStringField;
    QryListaClientesCLI_TEL_FIJO: TIBStringField;
    QryListaClientesCLI_CORREOE: TIBStringField;
    QryListaClientesCLI_FECHA_CREA: TDateTimeField;
    DtsVeXCli: TDataSource;
    CdsFama: TClientDataSet;
    DspFama: TDataSetProvider;
    QryFama: TIBQuery;
    UpdFama: TIBUpdateSQL;
    DtsFama: TDataSource;
    QryFamaOTM_CODI: TIntegerField;
    QryFamaOTM_CLASE_DOC: TSmallintField;
    QryFamaOTM_NUME: TIntegerField;
    QryFamaCLI_CODI: TIntegerField;
    QryFamaOTM_FECHA: TDateTimeField;
    QryFamaVXC_CODI: TIntegerField;
    QryFamaOTM_KILOM: TIBStringField;
    QryFamaOTM_OBSERV: TIBStringField;
    QryFamaOTM_SUBT: TIBBCDField;
    QryFamaOTM_VR_IVA: TIBBCDField;
    QryFamaOTM_VR_DESC: TIBBCDField;
    QryFamaOTM_VR_TOTAL: TIBBCDField;
    QryFamaFP_CODI: TIntegerField;
    QryFamaOTM_ESTADO: TIntegerField;
    CdsFamaOTM_CODI: TIntegerField;
    CdsFamaOTM_CLASE_DOC: TSmallintField;
    CdsFamaOTM_NUME: TIntegerField;
    CdsFamaCLI_CODI: TIntegerField;
    CdsFamaOTM_FECHA: TDateTimeField;
    CdsFamaVXC_CODI: TIntegerField;
    CdsFamaOTM_KILOM: TWideStringField;
    CdsFamaOTM_OBSERV: TWideStringField;
    CdsFamaOTM_SUBT: TBCDField;
    CdsFamaOTM_VR_IVA: TBCDField;
    CdsFamaOTM_VR_DESC: TBCDField;
    CdsFamaOTM_VR_TOTAL: TBCDField;
    CdsFamaFP_CODI: TIntegerField;
    CdsFamaOTM_ESTADO: TIntegerField;
    QryListaClientesTD_ABREVIADO: TIBStringField;
    QryVeXCli: TIBQuery;
    QryVeXCliVXC_CODI: TIntegerField;
    QryVeXCliCLI_CODI: TIntegerField;
    QryVeXCliVXC_PLACA: TIBStringField;
    QryVeXCliMR_CODI: TIntegerField;
    QryVeXCliLI_CODI: TIntegerField;
    QryVeXCliVXC_COLOR: TIBStringField;
    QryVeXCliVXC_KILO_INI: TFloatField;
    QryVeXCliVXC_KILO_ACT: TFloatField;
    QryVeXCliVXC_MODELO: TIntegerField;
    QryVeXCliMR_NOMBRE: TIBStringField;
    QryVeXCliLI_NOMBRE: TIBStringField;
    Panel4: TPanel;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    EdtNumDoc: TcxDBTextEdit;
    EdtCliente: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    EdtTelFijo: TcxDBTextEdit;
    EdtTelMovil: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    EdtTipDoc: TcxDBTextEdit;
    GrbObservaciones: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    GrbDatosVehiculo: TcxGroupBox;
    EdtPlaca: TcxDBTextEdit;
    EdtMarca: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    EdtLinea: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    EdtModelo: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    EdtKilometrajeAct: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    EdtColor: TcxDBTextEdit;
    DblVeXCli: TcxDBLookupComboBox;
    EdtKilometrajeAnt: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    pnlSuperior: TPanel;
    BtnNuevo: TcxButton;
    BtnGuardar: TcxButton;
    BtnFinalizar: TcxButton;
    BtnEditar: TcxButton;
    BtnCancelar: TcxButton;
    pnlDetalle: TPanel;
    GridFaDe: TcxGrid;
    TvlFaDe: TcxGridDBTableView;
    TvlFaDeOpciones: TcxGridDBColumn;
    LvlFaDe: TcxGridLevel;
    CdsFade: TClientDataSet;
    DspFade: TDataSetProvider;
    QryFade: TIBQuery;
    UpdFade: TIBUpdateSQL;
    DtsFade: TDataSource;
    Panel2: TPanel;
    GrbBusqueda: TcxGroupBox;
    GrbEncabezado: TcxGroupBox;
    EdtFechaOrden: TcxDBDateEdit;
    EdtNumOrdenTr: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    BtnImprimir: TcxButton;
    PnlInferior: TPanel;
    QryFadeOTM_CODI: TIntegerField;
    QryFadeOTD_CONT: TIntegerField;
    QryFadePR_CODI: TIntegerField;
    QryFadeOTD_CANT: TIBBCDField;
    QryFadeOTD_PRECIO: TIBBCDField;
    QryFadeOTD_SBTOTAL: TIBBCDField;
    QryFadeOTD_POR_IVA: TIBBCDField;
    QryFadeOTD_VR_IVA: TIBBCDField;
    QryFadeOTD_POR_DSC: TIBBCDField;
    QryFadeOTD_VR_DSC: TIBBCDField;
    QryFadeOTD_VR_TOTAL: TIBBCDField;
    QryFadeEMP_CODI: TIntegerField;
    QryFadeBOD_CODI: TIntegerField;
    CdsFadeOTM_CODI: TIntegerField;
    CdsFadeOTD_CONT: TIntegerField;
    CdsFadePR_CODI: TIntegerField;
    CdsFadeOTD_CANT: TBCDField;
    CdsFadeOTD_PRECIO: TBCDField;
    CdsFadeOTD_SBTOTAL: TBCDField;
    CdsFadeOTD_POR_IVA: TBCDField;
    CdsFadeOTD_VR_IVA: TBCDField;
    CdsFadeOTD_POR_DSC: TBCDField;
    CdsFadeOTD_VR_DSC: TBCDField;
    CdsFadeOTD_VR_TOTAL: TBCDField;
    CdsFadeEMP_CODI: TIntegerField;
    CdsFadeBOD_CODI: TIntegerField;
    TvlFaDeOTD_CONT: TcxGridDBColumn;
    TvlFaDePR_CODI: TcxGridDBColumn;
    TvlFaDeOTD_CANT: TcxGridDBColumn;
    TvlFaDeOTD_PRECIO: TcxGridDBColumn;
    TvlFaDeOTD_SBTOTAL: TcxGridDBColumn;
    TvlFaDeOTD_POR_IVA: TcxGridDBColumn;
    TvlFaDeOTD_VR_IVA: TcxGridDBColumn;
    TvlFaDeOTD_POR_DSC: TcxGridDBColumn;
    TvlFaDeOTD_VR_DSC: TcxGridDBColumn;
    TvlFaDeOTD_VR_TOTAL: TcxGridDBColumn;
    TvlFaDeEMP_CODI: TcxGridDBColumn;
    TvlFaDeBOD_CODI: TcxGridDBColumn;
    CdsFadePR_NOMB: TStringField;
    CdsFadePRO_CBARRAS: TStringField;
    TvlFaDePR_NOMB: TcxGridDBColumn;
    TvlFaDePRO_CBARRAS: TcxGridDBColumn;
    EdtBusqueda: TcxButtonEdit;
    DtsEmpleados: TDataSource;
    QryEmpleados: TIBQuery;
    QryEmpleadosNOMBREC: TIBStringField;
    QryEmpleadosEMP_CODI: TIntegerField;
    QryEmpleadosCOD_TIPDO: TIntegerField;
    QryEmpleadosEMP_NUMDOC: TIBStringField;
    QryEmpleadosEMP_TEL_MOVIL: TIBStringField;
    QryEmpleadosEMP_TEL_FIJO: TIBStringField;
    QryEmpleadosEMP_DIRECCION: TIBStringField;
    QryEmpleadosEMP_BARRIO: TIBStringField;
    QryEmpleadosCG_CODI: TIntegerField;
    CdsFadeSUBTOTAL: TAggregateField;
    CdsFadeTOT_DESCUENTO: TAggregateField;
    CdsFadeTOT_IVA: TAggregateField;
    CdsFadeTOTAL_ORDEN: TAggregateField;
    RgCriterio: TcxRadioGroup;
    QryListaProductos: TIBQuery;
    QryListaProductosPRO_CODI: TIntegerField;
    QryListaProductosPRO_NOMBRE: TIBStringField;
    QryListaProductosPRO_DESCRIPCION: TIBStringField;
    QryListaProductosPRO_REFERENCIA: TIBStringField;
    QryListaProductosPRO_COD_BARRAS: TIBStringField;
    QryListaProductosPRO_PRECIO: TIBBCDField;
    QryListaProductosPRO_MAXIMO: TSmallintField;
    QryListaProductosPRO_MINIMO: TSmallintField;
    QryListaProductosPRO_IVA: TIBBCDField;
    QryListaProductosST_CANTIDAD: TIntegerField;
    QryListaProductosBOD_NOMBRE: TIBStringField;
    DtsListaProductos: TDataSource;
    BtnConsFacturas: TcxButton;
    DblFormaPago: TcxDBLookupComboBox;
    DtsFormaPago: TDataSource;
    QryListaProductosPRO_CLASE: TIntegerField;
    QryListaProductosPRO_MARCA: TIBStringField;
    QryListaProductosPRO_PRESENTACION: TIBStringField;
    RdgClaseDoc: TcxDBRadioGroup;
    QryEmpleadosEMP_ESTA: TIBStringField;
    QryListaProductosSALDO_REAL: TIBBCDField;
    TraFama: TIBTransaction;
    LblEstadoDoc: TcxLabel;
    cxLabel19: TcxLabel;
    EdtFechaVence: TcxDBDateEdit;
    LblVence: TcxLabel;
    QryFamaOTM_FECHA_VENCE: TDateTimeField;
    CdsFamaOTM_FECHA_VENCE: TDateTimeField;
    cxLabel20: TcxLabel;
    QryBuscaProducto: TIBQuery;
    QryBuscaProductoPRO_CODI: TIntegerField;
    QryBuscaProductoPRO_NOMBRE: TIBStringField;
    QryBuscaProductoPRO_DESCRIPCION: TIBStringField;
    QryBuscaProductoPRO_REFERENCIA: TIBStringField;
    QryBuscaProductoPRO_COD_BARRAS: TIBStringField;
    QryBuscaProductoPRO_PRECIO: TIBBCDField;
    QryBuscaProductoPRO_MAXIMO: TSmallintField;
    QryBuscaProductoPRO_MINIMO: TSmallintField;
    QryBuscaProductoPRO_IVA: TIBBCDField;
    QryBuscaProductoPRO_CLASE: TIntegerField;
    QryBuscaProductoPRO_MARCA: TIBStringField;
    QryBuscaProductoPRO_PRESENTACION: TIBStringField;
    QryUltimaVenta: TIBQuery;
    QryUltimaVentaOTM_FECHA: TDateTimeField;
    QryUltimaVentaCLASE: TIBStringField;
    QryUltimaVentaESTADO: TIBStringField;
    QryUltimaVentaPR_CODI: TIntegerField;
    DtsUltVenta: TDataSource;
    GrbUltimaVenta: TcxGroupBox;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    DbLblEstado: TcxDBLabel;
    DbLblClase: TcxDBLabel;
    QryUltimaVentaOTD_PRECIO: TIBBCDField;
    QryEmpleadosEMP_NOMBRE: TIBStringField;
    SqlMovInventario: TIBSQL;
    QryListaClientesVXC_PLACA: TIBStringField;
    QryListaClientesMR_NOMBRE: TIBStringField;
    QryListaClientesLI_NOMBRE: TIBStringField;
    QryListaClientesCLI_NOMBRE: TIBStringField;
    QryListaClientesNOMCOMP: TIBStringField;
    QryListaClientesCLI_DIRECCION: TIBStringField;
    PnlInferiorTot: TPanel;
    cxLabel1: TcxLabel;
    EdtSubTotal: TcxDBCurrencyEdit;
    cxLabel16: TcxLabel;
    EdtTotDescuento: TcxDBCurrencyEdit;
    cxLabel17: TcxLabel;
    EdtTotIVA: TcxDBCurrencyEdit;
    cxLabel18: TcxLabel;
    EdtTotalOrden: TcxDBCurrencyEdit;
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdtKilometrajeActKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure TvlFaDePR_CODIPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlFaDePR_CODIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CdsFadeNewRecord(DataSet: TDataSet);
    procedure CdsFadeOTD_CANTValidate(Sender: TField);
    procedure EdtBusqueda1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlFaDeOTD_CANTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlFaDeOTD_PRECIOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlFaDeOTD_VR_DSCPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CdsFadeBeforePost(DataSet: TDataSet);
    procedure CdsFadeOTD_VR_DSCValidate(Sender: TField);
    procedure TvlFaDePR_NOMBPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlFaDePR_NOMBPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlFaDePRO_CBARRASPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlFaDePRO_CBARRASPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure BtnNuevoClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
    procedure BtnConsFacturasClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure RdgClaseDocPropertiesChange(Sender: TObject);
    procedure EdtNumOrdenTrPropertiesEditValueChanged(Sender: TObject);
    procedure CdsFamaAfterScroll(DataSet: TDataSet);
    procedure BtnEditarClick(Sender: TObject);
    procedure DtsFamaDataChange(Sender: TObject; Field: TField);
    procedure BtnImprimirClick(Sender: TObject);
    procedure EdtFechaOrdenPropertiesChange(Sender: TObject);
    procedure DblFormaPagoPropertiesChange(Sender: TObject);
    procedure CdsFadeAfterScroll(DataSet: TDataSet);
    procedure CdsFadePR_CODIValidate(Sender: TField);
    procedure CdsFadeCalcFields(DataSet: TDataSet);
    procedure CdsFadeBeforeEdit(DataSet: TDataSet);
    procedure CdsFadeBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FtxtError : string;
    class function Execute: Boolean; { Private declarations }
    procedure AccionGrupos(pAccion : Boolean);
    function BusquedaCli(pTexto : string): Integer;
    function BuscarCliente (pCriterio : Integer; pTexto : string): Integer;
    procedure BusquedaProd(pCriterio: Integer; pTexto : string); //pCriterio 0=Codigo, 1=Nombre, 2=Barras, 3=Referencia
    function BuscarProducto (pCriterio : Integer; pTexto : string): Integer;
    procedure AsignarValidate(pAsignar : Boolean);
    procedure FocoEnCantidad;
    function asignarSubtotalesalFama : Integer;
    function guardarMovimiento : Integer;
    function actualizaStock : Integer;
    function actualizaKilometraje : Integer;
    procedure CerraryLimpiar;
    function Finalizar : Integer;
    function ValidarKilometraje : Integer;
    procedure ValidarEstado;
    procedure ObtDatosUltVenta(pClaseDoc, pOrden, pCliente, pProducto : integer);
    procedure ObtNombyCodBarras(pCodArticulo : Integer);
    procedure AccionesHabilitar(pAccion : Boolean);
    function ValidarDetalle: Boolean;
  public
    { Public declarations }
    vContDet, vCodClienteBusc, vOtmCodiBusc : Integer; //ojo con vContDet debe iniciarse, por ahora esta cuando encuentra un cliente
    vVieneDeConsulta : Boolean; //SI viene de la forma de las consultas de documentos
    procedure CanClose;
    function CalcularLinea(pConOrden : Boolean) : Integer;  //pConOrden para calclar el precio original
    procedure RecorreryCalcularFade;
  end;

var
  FrmOrdenTrabajo: TFrmOrdenTrabajo;

implementation

{$R *.dfm}

uses UntDmGlobal, UntPrincipal, UntDmImprimirDoc;

{ TFrmOrdenTrabajo }

procedure TFrmOrdenTrabajo.AccionesHabilitar(pAccion: Boolean);
begin
  TvlFaDe.OptionsData.Appending := pAccion;
  TvlFaDe.OptionsData.Deleting := pAccion;
  TvlFaDe.OptionsData.Editing := pAccion;
end;

procedure TFrmOrdenTrabajo.AccionGrupos(pAccion: Boolean);
begin
//  GrbBusqueda.Enabled := pAccion;
//  GrbEncabezado.Enabled := pAccion;
//  grbAddCarBoton.Enabled := pAccion;
//  GridCliCar.Enabled := pAccion;
end;

function TFrmOrdenTrabajo.BusquedaCli(pTexto : string): Integer;
var
  vBusqueda, vCodCliente : Integer;  //6=Encontro más de uno; 1=Encontro uno; 0=No encontro
  //Result 0=Defecto; 10=Crear cliente; 11=no crear cliente y quedarse
  procedure alistarSqlClientes(pConWhere : Boolean);
  begin
    QryListaClientes.Close;
    QryListaClientes.SQL.Clear;
    QryListaClientes.SQL.Add('SELECT CLIENTES.*, CLIENTES.CLI_NOMBRE NomComp, tipdocumentos.td_abreviado, ');
    QryListaClientes.SQL.Add(' V.vxc_placa, MV.mr_nombre, LV.li_nombre ');
    QryListaClientes.SQL.Add(' FROM CLIENTES ');
    QryListaClientes.SQL.Add(' LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = clientes.cod_tipdo ');
    QryListaClientes.SQL.Add(' LEFT JOIN vhxcliente v ON V.cli_codi = CLIENTES.cli_codi');
    QryListaClientes.SQL.Add(' LEFT JOIN marcavh MV ON MV.mr_codi = V.mr_codi');
    QryListaClientes.SQL.Add(' LEFT JOIN lineavh LV ON LV.li_codi = V.li_codi AND LV.mr_codi = MV.mr_codi');
    if pConWhere then
      QryListaClientes.SQL.Add(' WHERE CLIENTES.CLI_CODI = :P_CLI_CODI');
  end;

begin
  Result := 0;
  try
    if Length(pTexto) > 0 then
    begin
      vBusqueda := BuscarCliente(RgCriterio.Properties.Items[RgCriterio.ItemIndex].Index, pTexto);
      if vBusqueda = 6 then
      begin
        if FrmListaClientes.ShowModal = mrCancel then
        begin
          EdtBusqueda.SetFocus;
        end
        else
        begin
          //Encontro un solo cliente, realiza la busqueda para traer solo uno
          vCodCliente := QryListaClientesCLI_CODI.AsInteger;
          alistarSqlClientes(True);
          QryListaClientes.ParamByName('P_CLI_CODI').AsInteger := vCodCliente;
          QryListaClientes.Open;
        end;
      end
      else if vBusqueda = 0 then
      begin
        //mostrar mensaje de cliente no encontrado
        if Application.MessageBox('Cliente no encontrado, ¿desea crear un cliente nuevo?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
        begin
          FrmPrincipal.actClientes.Execute;
          Result := 10; //10 si quiere crear el cliente
        end
        else
          Result := 11; //11 no crear el cliente
      end;
    end
    else
    begin
      //Mostrar el mensaje de que el txt de busqueda esta vacio
      alistarSqlClientes(False);
      QryListaClientes.Open;
      if FrmListaClientes.ShowModal = mrCancel then
      begin
        EdtBusqueda.SetFocus;
      end
      else
      begin
        vCodCliente := QryListaClientesCLI_CODI.AsInteger;
        alistarSqlClientes(True);
        QryListaClientes.ParamByName('P_CLI_CODI').AsInteger := vCodCliente;
        QryListaClientes.Open;
      end;
    end;
    if not QryListaClientes.IsEmpty then
    begin
      QryVeXCli.Close;
      QryVeXCli.ParamByName('P_CLI_CODI').AsInteger := QryListaClientesCLI_CODI.AsInteger;
      QryVeXCli.Open;
      CdsFama.Close;  //09-05-2019
      QryFama.Close;
      QryFama.ParamByName('P_CLI_CODI').AsInteger := QryListaClientesCLI_CODI.AsInteger;
      QryFama.ParamByName('P_OTM_CODI').AsInteger := DmGlobal.GetConsecutivo('ORDENTIM','OTM_CODI');
      CdsFama.Open;
      CdsFama.Append;
      CdsFamaCLI_CODI.AsInteger := QryListaClientesCLI_CODI.AsInteger;
      CdsFamaFP_CODI.AsInteger := 0;
      CdsFamaOTM_CLASE_DOC.AsInteger := 0;  //Se inicia como orden
      CdsFamaOTM_CODI.AsInteger := DmGlobal.GetConsecutivo('ORDENTIM','OTM_CODI');
      CdsFamaOTM_ESTADO.AsInteger := 0;  //Estado 0=Sin aplicar
      EdtFechaOrden.Date := Now;
      CdsFamaVXC_CODI.AsInteger := QryVeXCliVXC_CODI.AsInteger;  //Primer valor de la lista de carros por cliente.
      CdsFamaOTM_KILOM.AsString := FloatToStr(QryVeXCliVXC_KILO_ACT.AsFloat + 1);
      CdsFama.Post;
      CdsFade.Close;
      QryFade.Close;
      QryFade.ParamByName('P_OTM_CODI').AsInteger := CdsFamaOTM_CODI.AsInteger;
      CdsFade.Open;
      QryEmpleados.Close;
      QryEmpleados.Open;
      vContDet := 0;  //Borrar
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BusquedaCli. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BusquedaProd(pCriterio: Integer; pTexto: string);  //pCriterio 0=Codigo, 1=Nombre, 2=Barras, 3=Referencia
var
  vBusqueda, vCodProducto : Integer; //6=Encontro más de uno; 1=Encontro uno; 0=No encontro

  procedure alistarQryProductos(pConWhere : Boolean);
  begin
    QryListaProductos.Close;
    QryListaProductos.SQL.Clear;
    QryListaProductos.SQL.Add('SELECT PRODUCTOS.*,  COALESCE(STOCK.st_cantidad, 0) st_cantidad, BODEGAS.bod_nombre');
    QryListaProductos.SQL.Add(', coalesce((select sum(M.mvi_cantidad) AS CANTIDAD ');
    QryListaProductos.SQL.Add('from movinventario m ');
    QryListaProductos.SQL.Add('where m.pro_codi = productos.pro_codi and cast(m.mvi_fecha_docu as date) <= :mvi_fecha_docu ');
    QryListaProductos.SQL.Add('), 0) saldo_real ');
    QryListaProductos.SQL.Add('FROM PRODUCTOS');
    QryListaProductos.SQL.Add('LEFT JOIN stock ON stock.pro_codi = productos.pro_codi');
    QryListaProductos.SQL.Add('LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi');
    if pConWhere then
      QryListaProductos.SQL.Add(' WHERE PRODUCTOS.PRO_CODI = :P_PRO_CODI');
  end;

begin
  try
    if Length(pTexto) > 0 then
    begin
      vBusqueda := BuscarProducto(pCriterio, pTexto);
      if vBusqueda = 6 then
      begin
        if FrmListaProductos.ShowModal = mrCancel then
        begin
          EdtBusqueda.SetFocus;
        end
        else
        begin
          //Encontro un solo producto, realiza la busqueda para traer solo uno
          vCodProducto := QryListaProductosPRO_CODI.AsInteger;
          alistarQryProductos(True);
          QryListaProductos.ParamByName('P_PRO_CODI').AsInteger := vCodProducto;
          QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
          QryListaProductos.Open;
        end;
      end
      else if vBusqueda = 0 then
      begin
        //mostrar mensaje de producto no encontrado
        Application.MessageBox('Producto no encontrado.', 'Advertencia', MB_ICONWARNING);
        BusquedaProd(pCriterio,'');
      end;
    end
    else
    begin
      //Mostrar el mensaje de que el txt de busqueda esta vacio
      alistarQryProductos(False);
      QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
      QryListaProductos.Open;
      if FrmListaProductos.ShowModal = mrCancel then
      begin
        QryListaProductos.Close;
      end
      else
      begin
        vCodProducto := QryListaProductosPRO_CODI.AsInteger;
        alistarQryProductos(True);
        QryListaProductos.ParamByName('P_PRO_CODI').AsInteger := vCodProducto;
        QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
        QryListaProductos.Open;
      end;
    end;
    if not QryListaProductos.IsEmpty then
    begin
      if CdsFade.State = dsBrowse then
        CdsFade.Edit;
      CdsFadePR_CODI.AsInteger := QryListaProductosPRO_CODI.AsInteger;
      CdsFadePR_NOMB.AsString := QryListaProductosPRO_NOMBRE.AsString;
      CdsFadePRO_CBARRAS.AsString := QryListaProductosPRO_COD_BARRAS.AsString;
      CdsFadeOTD_PRECIO.AsFloat  := QryListaProductosPRO_PRECIO.AsFloat;
      CdsFadeOTD_POR_IVA.AsFloat := QryListaProductosPRO_IVA.AsFloat;
      ObtDatosUltVenta(CdsFamaOTM_CLASE_DOC.AsInteger, CdsFamaOTM_CODI.AsInteger, CdsFamaCLI_CODI.AsInteger, CdsFadePR_CODI.AsInteger);
    end
    else
    begin
      //Vuelve a buscar un producto
//      BusquedaProd(pCriterio,'');
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BusquedaProd. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BtnCancelarClick(Sender: TObject);
begin
  try
    //CdsFama.CancelUpdates;
    if CdsFade.State <> dsInactive then
      CdsFade.CancelUpdates;
    RecorreryCalcularFade;
  //  QryListaClientes.Close;
  //  QryVeXCli.Close;
    //Grupos
    GrbBusqueda.Enabled := True;
    GrbEncabezado.Enabled := False;
    GrbObservaciones.Enabled := False;
    GrbDatosVehiculo.Enabled := False;
//    GridFaDe.Enabled := False;
    AccionesHabilitar(False);
    //Botones
    BtnNuevo.Enabled := True;
    BtnGuardar.Enabled := True;
    BtnEditar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnFinalizar.Enabled := False;
  //  EdtBusqueda.SetFocus;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BtnCancelarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BtnConsFacturasClick(Sender: TObject);
begin
  try
    vVieneDeConsulta := False;
    if (FrmConsDocumentos.ShowModal = mrOk) and (vCodClienteBusc <> 0) then
    begin
      vVieneDeConsulta := True;
      QryListaClientes.Close;
      QryListaClientes.SQL.Clear;
      QryListaClientes.SQL.Add('SELECT CLIENTES.*, CLIENTES.CLI_NOMBRE NomComp, tipdocumentos.td_abreviado, ');
      QryListaClientes.SQL.Add(' V.vxc_placa, MV.mr_nombre, LV.li_nombre ');
      QryListaClientes.SQL.Add(' FROM CLIENTES ');
      QryListaClientes.SQL.Add(' LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = clientes.cod_tipdo ');
      QryListaClientes.SQL.Add(' LEFT JOIN vhxcliente v ON V.cli_codi = CLIENTES.cli_codi');
      QryListaClientes.SQL.Add(' LEFT JOIN marcavh MV ON MV.mr_codi = V.mr_codi');
      QryListaClientes.SQL.Add(' LEFT JOIN lineavh LV ON LV.li_codi = V.li_codi AND LV.mr_codi = MV.mr_codi');
      QryListaClientes.SQL.Add(' WHERE CLIENTES.CLI_CODI = :P_CLI_CODI');
      QryListaClientes.ParamByName('P_CLI_CODI').AsInteger := vCodClienteBusc;
      QryListaClientes.Open;
      QryVeXCli.Close;
      QryVeXCli.ParamByName('P_CLI_CODI').AsInteger := QryListaClientesCLI_CODI.AsInteger;
      QryVeXCli.Open;
      CdsFama.Close;  //09-05-2019
      QryFama.Close;
      QryFama.ParamByName('P_CLI_CODI').AsInteger := QryListaClientesCLI_CODI.AsInteger;
      QryFama.ParamByName('P_OTM_CODI').AsInteger := vOtmCodiBusc;
      CdsFama.Open;
      CdsFade.Close;  //09-05-2019
      QryFade.Close;  //09-05-2019
      QryFade.ParamByName('P_OTM_CODI').AsInteger := CdsFamaOTM_CODI.AsInteger;
      CdsFade.Open;
      QryEmpleados.Close;
      QryEmpleados.Open;
      //la grilla de articulos se deshabilita
//      GridFaDe.Enabled := False;
      AccionesHabilitar(False);
      vVieneDeConsulta := False;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BtnConsFacturasClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BtnEditarClick(Sender: TObject);
begin
  //Grupos
  GrbObservaciones.Enabled := True;
  GrbEncabezado.Enabled := True;
  GrbDatosVehiculo.Enabled := True;
//  GridFaDe.Enabled := True;
  AccionesHabilitar(True);
  //Botones
  BtnNuevo.Enabled := False;
  BtnGuardar.Enabled := True;
  BtnEditar.Enabled := False;
  BtnCancelar.Enabled := True;
  BtnFinalizar.Enabled := True;
  BtnImprimir.Enabled := False;
end;

procedure TFrmOrdenTrabajo.BtnFinalizarClick(Sender: TObject);
begin
  try
    if (CdsFamaOTM_CLASE_DOC.AsInteger = 1) and (CdsFamaOTM_ESTADO.AsInteger = 1) then
    begin
      Application.MessageBox('La factura ya se encuentra finalizada.', 'Información', MB_ICONERROR + MB_OK);
      Exit;
    end;

    if ValidarKilometraje <> 0 then
      Exit;
    if Finalizar <> 0 then
    begin
      if Length(FtxtError) = 0 then
        FtxtError := 'Error al Finalizar el documento [FrmOrdenTrabajo.BtnFinalizarClick]';
      raise Exception.Create(FtxtError);
    end
    else
      ValidarEstado;  //valida el estado del doc para actualizar el label de estado y deshablitar el radiogroup
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BtnFinalizarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BtnGuardarClick(Sender: TObject);
begin
  try
    if CdsFama.State <> dsBrowse  then
      CdsFama.Post;
    if CdsFade.State <> dsBrowse then
      if ValidarDetalle then
        CdsFade.Post
      else
        Exit;
    if Application.MessageBox('¿Desea guardar los cambios?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      CdsFama.ApplyUpdates(0);
      CdsFade.ApplyUpdates(0);
      QryFama.Transaction.CommitRetaining;
      QryFade.Transaction.CommitRetaining;
    end;
    //Habilita Grupos
    GrbBusqueda.Enabled := False;
    GrbObservaciones.Enabled := True;
    GrbEncabezado.Enabled := True;
    GrbDatosVehiculo.Enabled := True;
//    GridFaDe.Enabled := True;
    AccionesHabilitar(False);
    //Botones
    BtnNuevo.Enabled := True;
    BtnGuardar.Enabled := False;
    BtnEditar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnFinalizar.Enabled := True;
    BtnImprimir.Enabled := False;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BtnGuardarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.BtnImprimirClick(Sender: TObject);
begin
  DmImprimirDoc.ImprimirDoc(CdsFamaOTM_CODI.AsInteger, CdsFamaOTM_ESTADO.AsInteger,
    CdsFamaOTM_CLASE_DOC.AsInteger);
end;

procedure TFrmOrdenTrabajo.BtnNuevoClick(Sender: TObject);
begin
  try
    CerraryLimpiar;
    if CdsFama.State in [dsBrowse, dsInactive] then
    begin
      GrbBusqueda.Enabled := True;
      GrbEncabezado.Enabled := True;
      GrbObservaciones.Enabled := False;
      GrbDatosVehiculo.Enabled := False;
//      GridFaDe.Enabled := False;
      AccionesHabilitar(False);
      //Botones
      BtnNuevo.Enabled := False;
      BtnGuardar.Enabled := False;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := True;
  //    BtnEliminar.Enabled := False;
      BtnFinalizar.Enabled := False;
      BtnImprimir.Enabled := False;
      EdtBusqueda.SetFocus;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BtnNuevoClick. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.BuscarCliente(pCriterio: Integer;  pTexto: string): Integer;
begin
  try
    Result := 0;
    QryListaClientes.Close;
    QryListaClientes.SQL.Clear;
    QryListaClientes.SQL.Add('SELECT CLIENTES.*, CLIENTES.CLI_NOMBRE NomComp, tipdocumentos.td_abreviado, ');
    QryListaClientes.SQL.Add(' V.vxc_placa, MV.mr_nombre, LV.li_nombre ');
    QryListaClientes.SQL.Add(' FROM CLIENTES ');
    QryListaClientes.SQL.Add(' LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = clientes.cod_tipdo ');
    QryListaClientes.SQL.Add(' LEFT JOIN vhxcliente v ON V.cli_codi = CLIENTES.cli_codi');
    QryListaClientes.SQL.Add(' LEFT JOIN marcavh MV ON MV.mr_codi = V.mr_codi');
    QryListaClientes.SQL.Add(' LEFT JOIN lineavh LV ON LV.li_codi = V.li_codi AND LV.mr_codi = MV.mr_codi');
    QryListaClientes.SQL.Add(' WHERE ');
    case pCriterio of
      0 : QryListaClientes.SQL.Add(' upper(v.vxc_placa) LIKE ''%' + pTexto + '%''');
      1 : QryListaClientes.SQL.Add(' upper(CLIENTES.CLI_NOMBRE) LIKE ''%' + pTexto + '%''');
      2 : QryListaClientes.SQL.Add(' upper(CLIENTES.CLI_NUMDOC) LIKE ''%' + pTexto + '%''');
    end;
    QryListaClientes.Open;
    QryListaClientes.Last;
    QryListaClientes.First;
    if QryListaClientes.RecordCount > 0 then
    begin
      if QryListaClientes.RecordCount = 1 then
      begin
        //Si encontro solo uno
        Result := 1;
      end
      else
        Result := 6;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BuscarCliente. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.BuscarProducto(pCriterio: Integer;  pTexto: string): Integer;
begin
  Result := 0;
  try
    QryListaProductos.Close;
    QryListaProductos.SQL.Clear;
    QryListaProductos.SQL.Add('SELECT PRODUCTOS.*,  COALESCE(STOCK.st_cantidad, 0) st_cantidad, BODEGAS.bod_nombre');
    QryListaProductos.SQL.Add(', coalesce((select sum(M.mvi_cantidad) AS CANTIDAD ');
    QryListaProductos.SQL.Add('from movinventario m ');
    QryListaProductos.SQL.Add('where m.pro_codi = productos.pro_codi and cast(m.mvi_fecha_docu as date) <= :mvi_fecha_docu ');
    QryListaProductos.SQL.Add('), 0) saldo_real ');
    QryListaProductos.SQL.Add('FROM PRODUCTOS');
    QryListaProductos.SQL.Add('LEFT JOIN stock ON stock.pro_codi = productos.pro_codi');
    QryListaProductos.SQL.Add('LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi');
    QryListaProductos.SQL.Add(' WHERE ');
    case pCriterio of
      0 : QryListaProductos.SQL.Add(' upper(PRODUCTOS.PRO_CODI) LIKE upper(''%' + pTexto + '%'')');
      1 : QryListaProductos.SQL.Add(' upper(PRODUCTOS.PRO_NOMBRE) LIKE upper(''%' + pTexto + '%'')');
      2 : QryListaProductos.SQL.Add(' upper(PRODUCTOS.pro_cod_barras) LIKE upper(''%' + pTexto + '%'')');
      3 : QryListaProductos.SQL.Add(' upper(PRODUCTOS.pro_referencia) LIKE upper(''%' + pTexto + '%'')');
    end;
    QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
    QryListaProductos.Open;
    QryListaProductos.Last;
    QryListaProductos.First;
    if QryListaProductos.RecordCount > 0 then
    begin
      if QryListaProductos.RecordCount = 1 then
      begin
        //Si encontro solo uno
        Result := 1;
      end
      else
        Result := 6;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.BuscarProducto. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.CanClose;
begin
  if (CdsFama.ChangeCount > 0) or (CdsFade.ChangeCount > 0) then
  begin
    if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
         MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      try
        if CdsFama.State <> dsBrowse  then
          CdsFama.Post;
        if CdsFade.State <> dsBrowse then
          CdsFade.Post;
          CdsFama.ApplyUpdates(0);
          CdsFade.ApplyUpdates(0);
          QryFama.Transaction.CommitRetaining;
          QryFade.Transaction.CommitRetaining;
          AccionGrupos(False);
      except
        on E: Exception do
        begin
          raise Exception.Create('Error. ' + e.Message);
        end;
      end;
    end;
  end;
end;

procedure TFrmOrdenTrabajo.EdtBusqueda1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  vCrearCli : Integer;
begin
  try
    vCrearCli := BusquedaCli(EdtBusqueda.Text);    //Respuestas 0=Defecto; 10=Crear cliente; 11=NO crear cliente
    if ((CdsFama.Active) and (CdsFama.RecordCount > 0)) then
    begin
      //Habilita Grupos
      GrbBusqueda.Enabled := False;
      GrbObservaciones.Enabled := True;
      GrbEncabezado.Enabled := True;
      GrbDatosVehiculo.Enabled := True;
//      GridFaDe.Enabled := True;
      AccionesHabilitar(True);
      //Habilita Botones
      BtnNuevo.Enabled := False;
      BtnGuardar.Enabled := True;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := True;
    //  BtnEliminar.Enabled := False;
      BtnFinalizar.Enabled := False;
      BtnImprimir.Enabled := True;
      DblVeXCli.SetFocus;
    end
    else
      if vCrearCli = 11 then
        EdtBusqueda.SetFocus;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.EdtBusqueda1PropertiesButtonClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.EdtFechaOrdenPropertiesChange(Sender: TObject);
begin
  EdtFechaVence.Date := EdtFechaOrden.Date + 30;
end;

procedure TFrmOrdenTrabajo.EdtKilometrajeActKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    Key:=#0;
end;

procedure TFrmOrdenTrabajo.EdtNumOrdenTrPropertiesEditValueChanged(
  Sender: TObject);
begin
  if CdsFama.State = dsEdit then
    CdsFama.Post;
end;

class function TFrmOrdenTrabajo.Execute: Boolean;
var
  FrmOrdenTrabajo: TFrmOrdenTrabajo;
begin
  FrmOrdenTrabajo := TFrmOrdenTrabajo.Create(nil);
  try
    Result := FrmOrdenTrabajo.ShowModal = mrOk;
  finally
    FrmOrdenTrabajo.Free;
  end;
end;

procedure TFrmOrdenTrabajo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
    CanClose;
  Action := caFree;
  FrmOrdenTrabajo := nil;
end;

procedure TFrmOrdenTrabajo.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TFrmListaClientes, FrmListaClientes);
  Application.CreateForm(TFrmListaProductos, FrmListaProductos);
  Application.CreateForm(TFrmConsDocumentos, FrmConsDocumentos);
  if not DmGlobal.TraBase.Active then
    DmGlobal.TraBase.StartTransaction;
  DmGlobal.TblFormaPago.Open;
  Application.CreateForm(TDmImprimirDoc, DmImprimirDoc);
//  CdsFama.Open;
end;

procedure TFrmOrdenTrabajo.FormHide(Sender: TObject);
begin
//  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
  CanClose;
end;

procedure TFrmOrdenTrabajo.FormShow(Sender: TObject);
begin
  EdtFechaOrden.EditText := DateTimeToStr(Now);
  EdtFechaVence.Date := Now;
  BtnNuevo.Enabled := True;
  BtnGuardar.Enabled := False;
  BtnEditar.Enabled := False;
  BtnCancelar.Enabled := False;
  BtnFinalizar.Enabled := False;
  vVieneDeConsulta := False;
end;

function TFrmOrdenTrabajo.guardarMovimiento: Integer;
begin
  Result := 0;
  try
    CdsFade.First;
    while not CdsFade.Eof do
    begin
      SqlMovInventario.Close;   //Se averigua si es producto o servicio
      SqlMovInventario.SQL.Clear;
      SqlMovInventario.SQL.Add('SELECT * FROM PRODUCTOS WHERE PRO_CODI = :PRO_CODI');
      SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
      SqlMovInventario.ExecQuery;
      if SqlMovInventario.FieldByName('PRO_CLASE').AsInteger = 0 then
      begin
        SqlMovInventario.Close;   //SI es producto se inserta en el movimiento
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('INSERT INTO movinventario (MVI_CLASE_DOCU, MVI_FECHA_DOCU, MVI_NUM_DOCU, ');
        SqlMovInventario.SQL.Add(' MVI_DOCU_CODI, PRO_CODI, MVI_CANTIDAD, BOD_CODI, MVI_FECHA_SIST, EMP_CODI) ');
        SqlMovInventario.SQL.Add('VALUES (:MVI_CLASE_DOCU, :MVI_FECHA_DOCU, :MVI_NUM_DOCU, ');
        SqlMovInventario.SQL.Add(' :MVI_DOCU_CODI, :PRO_CODI, :MVI_CANTIDAD, :BOD_CODI, :MVI_FECHA_SIST, :EMP_CODI)');
        SqlMovInventario.ParamByName('MVI_CLASE_DOCU').AsInteger := 1;  //1=Salidas: 0=Entrdas
        SqlMovInventario.ParamByName('MVI_FECHA_DOCU').AsDateTime := CdsFamaOTM_FECHA.AsDateTime;
        SqlMovInventario.ParamByName('MVI_NUM_DOCU').AsString := CdsFamaOTM_NUME.AsString;
        SqlMovInventario.ParamByName('MVI_DOCU_CODI').AsInteger := CdsFamaOTM_CODI.AsInteger;
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
        SqlMovInventario.ParamByName('MVI_CANTIDAD').AsFloat := (CdsFadeOTD_CANT.AsFloat * -1);  //Se guarda negativo
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsFadeBOD_CODI.AsInteger;
        SqlMovInventario.ParamByName('MVI_FECHA_SIST').AsDateTime := Now;
        SqlMovInventario.ParamByName('EMP_CODI').AsInteger := CdsFadeEMP_CODI.AsInteger;
        SqlMovInventario.ExecQuery;
      end;
      CdsFade.Next;
    end;
  except on E: Exception do
    begin
      Result := 1;
      raise Exception.Create('Error en FrmOrdenTrabajo.guardarMovimiento. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.RdgClaseDocPropertiesChange(Sender: TObject);
begin
  if not vVieneDeConsulta then
  begin
    EdtNumOrdenTr.Text := IntToStr(DmGlobal.GetNumDocumento(RdgClaseDoc.ItemIndex));
    RecorreryCalcularFade;
  end;
  if ((CdsFamaOTM_CLASE_DOC.OldValue = 0) and (CdsFamaOTM_CLASE_DOC.NewValue = 1)) then
  begin
    CdsFama.Edit;
    CdsFamaOTM_ESTADO.AsInteger := 0;
    CdsFama.Post;
    ValidarEstado;
  end;
end;

procedure TFrmOrdenTrabajo.RecorreryCalcularFade;
begin
  try
    if CdsFade.state <> dsInactive then
    begin
      CdsFade.DisableControls;
      CdsFade.First;
      while not CdsFade.Eof do
      begin
        CalcularLinea(True);
        CdsFade.Next;
      end;
      CdsFade.EnableControls;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.RecorreryCalcularFade. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.actualizaStock: Integer;
var
  vCantidad : Double;
begin
  Result := 0;
  try
    CdsFade.First;
    while not CdsFade.Eof do
    begin
      SqlMovInventario.Close;   //Se averigua si es producto o servicio
      SqlMovInventario.SQL.Clear;
      SqlMovInventario.SQL.Add('SELECT * FROM PRODUCTOS WHERE PRO_CODI = :PRO_CODI');
      SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
      SqlMovInventario.ExecQuery;
      if SqlMovInventario.FieldByName('PRO_CLASE').AsInteger = 0 then
      begin
        vCantidad := 0;
        SqlMovInventario.Close;
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('SELECT * FROM STOCK ');
        SqlMovInventario.SQL.Add('WHERE PRO_CODI = :PRO_CODI AND BOD_CODI = :BOD_CODI ');
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsFadeBOD_CODI.AsInteger;
        SqlMovInventario.ExecQuery;
        vCantidad := SqlMovInventario.FieldByName('ST_CANTIDAD').AsFloat;
        SqlMovInventario.Close;
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('update or insert into stock (PRO_CODI, ST_CANTIDAD, BOD_CODI)  ');
        SqlMovInventario.SQL.Add('values (:PRO_CODI, :ST_CANTIDAD, :BOD_CODI)  ');
        SqlMovInventario.SQL.Add('matching (PRO_CODI, BOD_CODI) ');
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
        SqlMovInventario.ParamByName('ST_CANTIDAD').AsFloat := vCantidad - CdsFadeOTD_CANT.AsFloat;
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsFadeBOD_CODI.AsInteger;
        SqlMovInventario.ExecQuery;
      end;
      CdsFade.Next;
    end;
  except on E: Exception do
    begin
      Result := 1;
      raise Exception.Create('Error en FrmOrdenTrabajo.actualizaStock. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.actualizaKilometraje: Integer;
begin
  Result := 0;
  try
    SqlMovInventario.Close;
    SqlMovInventario.SQL.Clear;
    SqlMovInventario.SQL.Add('UPDATE vhxcliente SET VXC_KILO_ACT = :VXC_KILO_ACT  ');
    SqlMovInventario.SQL.Add('WHERE VXC_CODI = :VXC_CODI AND CLI_CODI = :CLI_CODI AND VXC_PLACA = :VXC_PLACA ');
    SqlMovInventario.ParamByName('VXC_CODI').AsInteger := QryVeXCliVXC_CODI.AsInteger;
    SqlMovInventario.ParamByName('CLI_CODI').AsInteger := CdsFamaCLI_CODI.AsInteger;
    SqlMovInventario.ParamByName('VXC_PLACA').AsString := QryVeXCliVXC_PLACA.AsString;
    SqlMovInventario.ParamByName('VXC_KILO_ACT').AsDouble := StrToFloat(CdsFamaOTM_KILOM.AsString);
    SqlMovInventario.ExecQuery;
  except on E: Exception do
    begin
      Result := 1;
      raise Exception.Create('Error en FrmOrdenTrabajo.actualizaKilometraje. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.CdsFadeBeforeDelete(DataSet: TDataSet);
begin
//  if (CdsFama.State in [dsEdit, dsInsert]) or (CdsFamaOTM_ESTADO.AsInteger = 1) then
//    Abort;
end;

procedure TFrmOrdenTrabajo.CdsFadeBeforeEdit(DataSet: TDataSet);
begin
//  if CdsFama.State = dsBrowse then
//    Abort;
end;

procedure TFrmOrdenTrabajo.CdsFadeBeforePost(DataSet: TDataSet);
var
  vFalta : Integer;
begin
  vFalta := 0;
  try
    //Validaciones
    ValidarDetalle;
    {*
    if CdsFadePR_CODI.IsNull then
    begin
      vFalta := 1;
      Application.MessageBox('Debe seleccionar un producto.', 'Advertencia', MB_ICONWARNING);
      Exit;
//      Abort;
    end;
    if CdsFadeEMP_CODI.IsNull then
    begin
      vFalta := 1;
      Application.MessageBox('Debe seleccionar un empleado.', 'Advertencia', MB_ICONWARNING);
      Abort;
    end;
    if CdsFadeOTD_CANT.IsNull then
      CdsFadeOTD_CANT.AsFloat := 1;
    if CdsFadeOTD_CANT.AsFloat <= 0 then
    begin
      Application.MessageBox('La cantidad no puede ser cero o vacia.', 'Advertencia', MB_ICONWARNING);
      CdsFadeOTD_CANT.AsFloat := 1;
    end;*}
//    if (CdsFadeOTD_CANT.IsNull) or (CdsFadeOTD_CANT.AsFloat <= 0) then
//    begin
//      Application.MessageBox('La cantidad no puede ser cero o vacia.', 'Advertencia', MB_ICONWARNING);
//      Abort;
//    end;
  except
    on E: Exception do
    begin
      if vFalta = 0 then
        raise Exception.Create('Error en FrmOrdenTrabajo.CdsFadeBeforePost. ' + e.Message)
      else if vFalta = 1 then
        CdsFade.Cancel;
    end;
  end;
end;

procedure TFrmOrdenTrabajo.CdsFadeCalcFields(DataSet: TDataSet);
begin
  ObtNombyCodBarras(CdsFadePR_CODI.AsInteger);  //Llenar los datos de Nombre y Codigo de Barras
end;

procedure TFrmOrdenTrabajo.CdsFadeNewRecord(DataSet: TDataSet);
begin
  try
    if CdsFamaOTM_ESTADO.AsInteger = 0 then
    begin
      CdsFadeOTM_CODI.AsInteger := CdsFamaOTM_CODI.AsInteger;
      Inc(vContDet);
      CdsFadeOTD_CONT.AsInteger := vContDet;
      CdsFadeOTD_CANT.AsFloat := 1;
      CdsFadeOTD_PRECIO.AsFloat := 0;
      CdsFadeOTD_SBTOTAL.AsFloat := 0;
      CdsFadeOTD_POR_IVA.AsFloat := 0;
      CdsFadeOTD_VR_IVA.AsFloat := 0;
      CdsFadeOTD_POR_DSC.AsFloat := 0;
      CdsFadeOTD_VR_DSC.AsFloat := 0;
      CdsFadeOTD_VR_TOTAL.AsFloat := 0;
      CdsFadeEMP_CODI.AsInteger := DmGlobal.GetCodUnEmpleado;  //codigo del empleado, traer el primero por defecto
      CdsFadeBOD_CODI.AsInteger := 1;  //codigo de la bodega
    end
    else
      CdsFade.Cancel;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.CdsFadeNewRecord. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.CdsFadeOTD_CANTValidate(Sender: TField);
begin
  CalcularLinea(False);
end;

procedure TFrmOrdenTrabajo.CdsFadeOTD_VR_DSCValidate(Sender: TField);
begin
  CalcularLinea(False);
end;

procedure TFrmOrdenTrabajo.CdsFadePR_CODIValidate(Sender: TField);
begin
  ObtNombyCodBarras(CdsFadePR_CODI.AsInteger);
end;

procedure TFrmOrdenTrabajo.CdsFamaAfterScroll(DataSet: TDataSet);
begin
  ValidarEstado;
end;

procedure TFrmOrdenTrabajo.DblFormaPagoPropertiesChange(Sender: TObject);
begin
  if DblFormaPago.ItemIndex = 2 then
  begin
    //Si es credito muestra el datepicker de vencimiento con 30 dias de mas
    EdtFechaVence.Visible := True;
    LblVence.Visible := True;
    EdtFechaVence.Date := EdtFechaOrden.Date + 30;
  end
  else
  begin
    EdtFechaVence.Visible := False;
    LblVence.Visible := False;
  end;
end;

procedure TFrmOrdenTrabajo.DtsFamaDataChange(Sender: TObject; Field: TField);
begin
  if CdsFama.ChangeCount > 0 then
    BtnGuardar.Enabled := True;
end;

procedure TFrmOrdenTrabajo.TvlFaDeOTD_CANTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var AValue : double;
begin
  try
    AValue := Strtofloat(DisplayValue);
    if AValue < 0 then
    begin
      ErrorText := 'Valores negativos no son permitidos para la cantidad.';
      Error := True;
    end
    else
    begin
      if ((QryListaProductosPRO_CLASE.AsInteger = 0) and (AValue > QryListaProductosSALDO_REAL.AsFloat)) then
      begin
        Application.MessageBox('La cantidad solicitada no existe en bodega.', 'Advertencia',MB_OK);
        TvlFaDe.FindItemByName('TvlFaDeOTD_CANT').Focused := True;
      end;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en TvlFaDeOTD_CANTPropertiesValidate. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDeOTD_PRECIOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var AValue : double;
begin
  try
    AValue := Strtofloat(DisplayValue);
    if AValue < 0 then
    begin
      ErrorText := 'Valores negativos no son permitidos para los precios.';
      Error := True;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en TvlFaDeOTD_PRECIOPropertiesValidate. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDeOTD_VR_DSCPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var AValue : double;
begin
  try
    AValue := Strtofloat(DisplayValue);
    if AValue<0 then
    begin
      ErrorText := 'Valores negativos no son permitidos para el descuento.';
      Error := True;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDeOTD_VR_DSCPropertiesValidate. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.ValidarDetalle: Boolean;
var
  vFalta : SmallInt;
begin
  Result := True;
  vFalta := 0;
  try
    try
      //Validaciones
      if CdsFadePR_CODI.IsNull then
      begin
        vFalta := 1;
        Result := False;
        Application.MessageBox('Debe seleccionar un producto.', 'Advertencia', MB_ICONWARNING);
//        Exit;
  //      Abort;
      end;
      if CdsFadeEMP_CODI.IsNull then
      begin
        vFalta := 1;
        Result := False;
        Application.MessageBox('Debe seleccionar un empleado.', 'Advertencia', MB_ICONWARNING);
//        Exit;
  //      Abort;
      end;
      if CdsFadeOTD_CANT.IsNull then
        CdsFadeOTD_CANT.AsFloat := 1;
      if CdsFadeOTD_CANT.AsFloat <= 0 then
      begin
        Application.MessageBox('La cantidad no puede ser cero o vacia.', 'Advertencia', MB_ICONWARNING);
        CdsFadeOTD_CANT.AsFloat := 1;
        Result := False;
        vFalta := 1;
//        Exit;
      end;
    finally
      if vFalta = 1 then
        CdsFade.Cancel;
    end;
  except
    on E: Exception do
    begin
      if vFalta = 0 then
        raise Exception.Create('Error en FrmOrdenTrabajo.ValidarDetalle. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.ValidarEstado;
begin
  try
    if CdsFamaOTM_ESTADO.AsInteger = 0 then
      LblEstadoDoc.Caption := 'En Proceso'
    else
      LblEstadoDoc.Caption := 'Aplicado';
    //Si estado es en proceso y clase Orden o fctura
    //Estado=0=Proceso; Clase=0=Orden
    if ((CdsFamaOTM_ESTADO.AsInteger = 0) and ((CdsFamaOTM_CLASE_DOC.AsInteger = 0) or (CdsFamaOTM_CLASE_DOC.AsInteger = 1))) or
       ((CdsFamaOTM_ESTADO.AsInteger = 1) and (CdsFamaOTM_CLASE_DOC.AsInteger = 0))then
    begin
      RdgClaseDoc.Enabled := True;
      BtnGuardar.Enabled := True;
      BtnEditar.Enabled := True;
      BtnFinalizar.Enabled := False;
      BtnImprimir.Enabled := ((CdsFamaOTM_ESTADO.AsInteger = 1) and (CdsFamaOTM_CLASE_DOC.AsInteger = 0));
    end
    else if (CdsFamaOTM_ESTADO.AsInteger = 1) and (CdsFamaOTM_CLASE_DOC.AsInteger = 1) then
    begin
      RdgClaseDoc.Enabled := False;
      BtnGuardar.Enabled := False;
      BtnEditar.Enabled := False;
      BtnFinalizar.Enabled := False;
      BtnImprimir.Enabled := True;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.ValidarEstado. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.ValidarKilometraje : Integer;
begin
  try
    Result := 0;
    if Length(CdsFamaOTM_KILOM.AsString) = 0 then
    begin
      Application.MessageBox('Debe digitar un valor para el kilometraje actual.', 'Advertencia', MB_ICONWARNING);
      Result := -1;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.ValidarKilometraje. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.Finalizar: Integer;
begin
  Result := 0;
  if Application.MessageBox('¿Desea finalizar el documento?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      if EdtNumOrdenTr.Text <> IntToStr(DmGlobal.GetNumDocumento(RdgClaseDoc.ItemIndex)) then
      begin
        if MessageDlg('El consecutivo es diferente al ultimo sugerido.' + #13 +
          '¿Desea cambiar el consecutivo al ultimo sugerido?', mtConfirmation, mbYesNo, 0) = mrYes then
        begin
        //El numero de orden es diferente al numero obtenido
          CdsFama.Edit;
          CdsFamaOTM_NUME.AsInteger := DmGlobal.GetNumDocumento(RdgClaseDoc.ItemIndex);
        end;
      end;
      asignarSubtotalesalFama;
      if guardarMovimiento > 0 then
        Abort;
      if actualizaStock > 0 then
        Abort;
      actualizaKilometraje;
      CdsFama.ApplyUpdates(0);
      CdsFade.ApplyUpdates(0);
      QryFama.Transaction.CommitRetaining;
      QryFade.Transaction.CommitRetaining;
      //AccionGrupos(False);
      GrbBusqueda.Enabled := False;
      GrbEncabezado.Enabled := False;
      GrbObservaciones.Enabled := False;
      GrbDatosVehiculo.Enabled := False;
//      GridFaDe.Enabled := False;
      AccionesHabilitar(False);
      //Botones
      BtnNuevo.Enabled := True;
      BtnGuardar.Enabled := False;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := False;
  //    BtnEliminar.Enabled := False;
      BtnFinalizar.Enabled := False;
      BtnImprimir.Enabled := True;
      //Mensaje para imprimir la factura.
    except
      on E: Exception do
      begin
        Result := -1;
        SqlMovInventario.Transaction.RollbackRetaining;
        //raise Exception.Create('Error al guardar el documento. ' + e.Message);
        FtxtError := 'Error al Finalizar el documento [FrmOrdenTrabajo.Finalizar]. ' + e.Message;
      end;
    end;
  end;
end;

procedure TFrmOrdenTrabajo.FocoEnCantidad;
begin
  TvlFaDe.FindItemByName('TvlFaDeOTD_CANT').Focused := True;
end;

procedure TFrmOrdenTrabajo.TvlFaDePRO_CBARRASPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  try
    if (CdsFade.State in [dsInsert, dsEdit]) and (CdsFamaOTM_ESTADO.AsInteger = 0) then
    begin
      BusquedaProd(2,TcxButtonEdit(Sender).EditText);
      if not QryListaProductos.IsEmpty then
        FocoEnCantidad
      else
//        TvlFaDe.FindItemByName('TvlFaDePRO_CBARRAS').Focused := True;
        CdsFade.Cancel;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePRO_CBARRASPropertiesButtonClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDePRO_CBARRASPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    BusquedaProd(2,DisplayValue);
    if not QryListaProductos.IsEmpty then
//      FocoEnCantidad
    else
    begin
      DisplayValue := '';
      TcxButtonEdit(Sender).EditText := '';
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePRO_CBARRASPropertiesValidate. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDePR_CODIPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if (CdsFade.State in [dsInsert, dsEdit]) and (CdsFamaOTM_ESTADO.AsInteger = 0) then
    begin
      BusquedaProd(0,TcxButtonEdit(Sender).EditText);
      //Posicionar en la celda de cantidad
    //  TvlFaDe.Columns[3].Focused := True;
      if not QryListaProductos.IsEmpty then
        FocoEnCantidad
      else
        TvlFaDe.FindItemByName('TvlFaDePR_CODI').Focused := True;
      CdsFade.Cancel;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePR_CODIPropertiesButtonClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDePR_CODIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    BusquedaProd(0,DisplayValue);
    //Posicionar en la celda de cantidad
    if not QryListaProductos.IsEmpty then
//      FocoEnCantidad   //Se comentarea porque al dar el foco dispara la busqueda de articulos
    else
    begin
      DisplayValue := '';
      TcxButtonEdit(Sender).EditText := '';
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePR_CODIPropertiesValidate. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDePR_NOMBPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if (CdsFade.State in [dsInsert, dsEdit]) and (CdsFamaOTM_ESTADO.AsInteger = 0) then
    begin
      BusquedaProd(1,TcxButtonEdit(Sender).EditText);
      if not QryListaProductos.IsEmpty then
        FocoEnCantidad
      else
//        TvlFaDe.FindItemByName('TvlFaDePR_NOMB').Focused := True;
        CdsFade.Cancel;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePR_NOMBPropertiesButtonClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.TvlFaDePR_NOMBPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    BusquedaProd(1,DisplayValue);
    if not QryListaProductos.IsEmpty then
//      FocoEnCantidad
    else
    begin
      DisplayValue := '';
      TcxButtonEdit(Sender).EditText := '';
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.TvlFaDePR_NOMBPropertiesValidate. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.CalcularLinea(pConOrden : Boolean): Integer;
var
  vSubTotal, vSubTotal2, vPorDsc, vVrDesc : Double;
  vPorIVA, vVrIVA, vTotal, vPrecioOrig : Double;

  function obtPrecio(pPro_Codi : Integer) : Double;
  begin
    Result := 0;
    QryBuscaProducto.Close;
    QryBuscaProducto.ParamByName('PRO_CODI').AsInteger := pPro_Codi;
    QryBuscaProducto.Open;
    if not QryBuscaProducto.IsEmpty then
    begin
      Result := QryBuscaProductoPRO_PRECIO.AsFloat;
    end;
  end;

begin
  Result := 0;
  vSubTotal := 0;
  vSubTotal2 := 0;
  vPorDsc := 0;
  vVrDesc := 0;
  vPorIVA := 0;
  vVrIVA := 0;
  vTotal := 0;
  vPrecioOrig := 0;
  try
    AsignarValidate(False);
    CdsFade.Edit;
    //Para que tome el precio original y no siga disminuyendo
    if pConOrden and (CdsFamaOTM_CLASE_DOC.asinteger = 0) then
    begin
      vPrecioOrig := obtPrecio(CdsFadePR_CODI.AsInteger);
      if vPrecioOrig <> CdsFadeOTD_PRECIO.AsFloat then
      begin
        CdsFadeOTD_PRECIO.AsFloat := vPrecioOrig;
      end;
    end;
    vSubTotal := CdsFadeOTD_CANT.AsFloat * CdsFadeOTD_PRECIO.AsFloat;
    CdsFadeOTD_SBTOTAL.AsFloat := vSubTotal;
    if CdsFadeOTD_POR_DSC.AsFloat > 0 then
    begin
      vPorDsc := CdsFadeOTD_POR_DSC.AsFloat;
      vVrDesc := (vSubTotal * vPorDsc) / 100;
    end;
    if CdsFadeOTD_VR_DSC.AsFloat > 0 then
    begin
      vVrDesc := CdsFadeOTD_VR_DSC.AsFloat;
    end;
    vSubTotal2 := vSubTotal - vVrDesc;
    if (CdsFadeOTD_POR_IVA.AsFloat > 0) and (CdsFamaOTM_CLASE_DOC.AsInteger = 1) then
    begin
      vPorIVA := (CdsFadeOTD_POR_IVA.AsFloat / 100) + 1;
      vSubTotal2 := Round(vSubTotal2 / vPorIVA);
      vVrIVA := ((vSubTotal - vVrDesc) - vSubTotal2);
      CdsFadeOTD_PRECIO.AsFloat := (vSubTotal2 / CdsFadeOTD_CANT.AsFloat);
      vTotal := vSubTotal2 + vVrIVA;
    end
    else
    begin
      vTotal := vSubTotal2;
    end;
    //Asignar valores a los campos del client
    CdsFadeOTD_SBTOTAL.AsFloat := vSubTotal2;
    CdsFadeOTD_POR_DSC.AsFloat := vPorDsc;
//    CdsFadeOTD_VR_DSC.AsFloat := vVrDesc;
    CdsFadeOTD_VR_IVA.AsFloat := vVrIVA;
    CdsFadeOTD_VR_TOTAL.AsFloat := vTotal;
//    CdsFade.Post;
    AsignarValidate(True);
  except on E: Exception do
    begin
      Result := 1;
      AsignarValidate(True);
      raise Exception.Create('Error en FrmOrdenTrabajo.CalcularLinea. ' + e.Message);
    end;
  end;
end;

function TFrmOrdenTrabajo.asignarSubtotalesalFama: Integer;
begin
  try
    if CdsFama.State = dsBrowse then
      CdsFama.Edit;
    CdsFamaOTM_SUBT.AsFloat := CdsFadeSUBTOTAL.AsVariant;
    CdsFamaOTM_VR_IVA.AsFloat := CdsFadeTOT_IVA.AsVariant;
    CdsFamaOTM_VR_DESC.AsFloat := CdsFadeTOT_DESCUENTO.AsVariant;
    CdsFamaOTM_VR_TOTAL.AsFloat := CdsFadeTOTAL_ORDEN.AsVariant;
    CdsFamaOTM_ESTADO.AsInteger := 1;  //1=Aplicada; 0=En proceso
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.asignarSubtotalesalFama. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.AsignarValidate(pAsignar : Boolean);
begin
  if pAsignar then
  begin
    CdsFadeOTD_CANT.OnValidate := CdsFadeOTD_CANTValidate;
    CdsFadeOTD_PRECIO.OnValidate := CdsFadeOTD_CANTValidate;
    CdsFadeOTD_POR_DSC.OnValidate := CdsFadeOTD_CANTValidate;
  end
  else
  begin
    CdsFadeOTD_CANT.OnValidate := nil;
    CdsFadeOTD_PRECIO.OnValidate := nil;
    CdsFadeOTD_POR_DSC.OnValidate := nil;
  end;
end;

procedure TFrmOrdenTrabajo.CerraryLimpiar;
begin
  try
    QryVeXCli.Close;  //se debe cerrar primero este sql
    if (CdsFade.state <> dsInactive) and (CdsFade.RecordCount > 0) then
      CdsFade.EmptyDataSet;
    CdsFade.Close;
    if (CdsFama.State <> dsInactive) and (CdsFama.RecordCount > 0) then
      CdsFama.EmptyDataSet;
    CdsFama.Close;
//    if (CdsFade.state <> dsInactive) and (CdsFade.RecordCount > 0) then
//      CdsFade.EmptyDataSet;
//    CdsFade.Close;
    QryListaClientes.Close;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.CerraryLimpiar. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.CdsFadeAfterScroll(DataSet: TDataSet);
begin
  ObtDatosUltVenta(CdsFamaOTM_CLASE_DOC.AsInteger, CdsFamaOTM_CODI.AsInteger, CdsFamaCLI_CODI.AsInteger, CdsFadePR_CODI.AsInteger);
end;

procedure TFrmOrdenTrabajo.ObtDatosUltVenta(pClaseDoc, pOrden, pCliente, pProducto : integer);
begin
  try
    QryUltimaVenta.Close;
    QryUltimaVenta.ParamByName('otm_clase_doc').AsInteger := pClaseDoc;
    QryUltimaVenta.ParamByName('cli_codi').AsInteger := pCliente;
    QryUltimaVenta.ParamByName('pr_codi').AsInteger := pProducto;
    QryUltimaVenta.ParamByName('otm_codi').AsInteger := pOrden;
    QryUltimaVenta.Open;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.ObtDatosUltVenta. ' + e.Message);
    end;
  end;
end;

procedure TFrmOrdenTrabajo.ObtNombyCodBarras(pCodArticulo: Integer);
begin
  try
    if not (CdsFadePR_CODI.AsVariant <> Null) or (CdsFadePR_CODI.AsString <> '') then
    begin
      QryListaProductos.Close;
      QryListaProductos.SQL.Clear;
      QryListaProductos.SQL.Add('SELECT PRODUCTOS.*,  COALESCE(STOCK.st_cantidad, 0) st_cantidad, BODEGAS.bod_nombre');
      QryListaProductos.SQL.Add(', coalesce((select sum(M.mvi_cantidad) AS CANTIDAD ');
      QryListaProductos.SQL.Add('from movinventario m ');
      QryListaProductos.SQL.Add('where m.pro_codi = productos.pro_codi and cast(m.mvi_fecha_docu as date) <= :mvi_fecha_docu ');
      QryListaProductos.SQL.Add('), 0) saldo_real ');
      QryListaProductos.SQL.Add('FROM PRODUCTOS');
      QryListaProductos.SQL.Add('LEFT JOIN stock ON stock.pro_codi = productos.pro_codi');
      QryListaProductos.SQL.Add('LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi');
      QryListaProductos.SQL.Add(' WHERE PRODUCTOS.PRO_CODI = :P_PRO_CODI');
      QryListaProductos.ParamByName('P_PRO_CODI').AsInteger := CdsFadePR_CODI.AsInteger;
      QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
      QryListaProductos.Open;
    end;
    if not QryListaProductos.IsEmpty then
    begin
      CdsFadePR_NOMB.AsString := QryListaProductosPRO_NOMBRE.AsString;
      CdsFadePRO_CBARRAS.AsString := QryListaProductosPRO_COD_BARRAS.AsString;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmOrdenTrabajo.ObtNombyCodBarras. ' + e.Message);
    end;
  end;
end;

end.
