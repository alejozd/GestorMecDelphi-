unit UntEntradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxButtonEdit,
  cxCurrencyEdit, cxDBLookupComboBox, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxCalendar, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit,
  Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  IBX.IBQuery, IBX.IBDatabase, cxDBLabel, dxBarBuiltInMenu, cxPC, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxDBNavigator, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, MidasLib, IBX.IBSQL, math;

type
  TFrmEntradas = class(TForm)
    QryEntMa: TIBQuery;
    UpdEntMa: TIBUpdateSQL;
    CdsEntMa: TClientDataSet;
    DspEntMa: TDataSetProvider;
    DtsEntMa: TDataSource;
    QryEntMaENT_CODI: TIntegerField;
    QryEntMaENT_NUME: TIntegerField;
    QryEntMaPRV_CODI: TIntegerField;
    QryEntMaENT_FECHA: TDateTimeField;
    QryEntMaENT_OBSERVACIONES: TIBStringField;
    DtsListaProveedores: TDataSource;
    QryListaProveedores: TIBQuery;
    QryListaProveedoresPRV_CODI: TIntegerField;
    QryListaProveedoresCOD_TIPDO: TIntegerField;
    QryListaProveedoresPRV_NUMDOC: TIBStringField;
    QryListaProveedoresPRV_TEL_MOVIL: TIBStringField;
    QryListaProveedoresPRV_TEL_FIJO: TIBStringField;
    QryListaProveedoresPRV_CORREOE: TIBStringField;
    QryListaProveedoresPRV_FECHA_CREA: TDateTimeField;
    QryListaProveedoresPRV_CONTACTO: TIBStringField;
    QryListaProveedoresPRV_OBSERVACIONES: TIBStringField;
    QryListaProveedoresTD_ABREVIADO: TIBStringField;
    CdsEntMaENT_CODI: TIntegerField;
    CdsEntMaENT_NUME: TIntegerField;
    CdsEntMaPRV_CODI: TIntegerField;
    CdsEntMaENT_FECHA: TDateTimeField;
    CdsEntMaENT_OBSERVACIONES: TWideStringField;
    CdsEntDe: TClientDataSet;
    QryEntDe: TIBQuery;
    UpdEntDe: TIBUpdateSQL;
    DspEntDe: TDataSetProvider;
    DtsEntDe: TDataSource;
    QryEntDeENT_CODI: TIntegerField;
    QryEntDeEND_CONT: TIntegerField;
    QryEntDePRO_CODI: TIntegerField;
    QryEntDeEND_CANT: TIBBCDField;
    QryEntDeEND_PRECIO: TIBBCDField;
    QryEntDeBOD_CODI: TIntegerField;
    CdsEntDeENT_CODI: TIntegerField;
    CdsEntDeEND_CONT: TIntegerField;
    CdsEntDePRO_CODI: TIntegerField;
    CdsEntDeEND_CANT: TBCDField;
    CdsEntDeEND_PRECIO: TBCDField;
    CdsEntDeBOD_CODI: TIntegerField;
    DtsListaProductos: TDataSource;
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
    QryListaProductosPRO_CLASE: TIntegerField;
    QryListaProductosPRO_MARCA: TIBStringField;
    QryListaProductosPRO_PRESENTACION: TIBStringField;
    CdsEntDePRO_NOMB: TStringField;
    CdsEntDePRO_CBARRAS: TStringField;
    CdsEntDeVR_TOTAL: TAggregateField;
    CdsEntDeVR_SUBTOTAL: TCurrencyField;
    QryEntMaENT_ESTADO: TIntegerField;
    CdsEntMaENT_ESTADO: TIntegerField;
    QryEntMaENT_VR_TOTAL: TIBBCDField;
    CdsEntMaENT_VR_TOTAL: TBCDField;
    QryListaProductosSALDO_REAL: TIBBCDField;
    TraEntrada: TIBTransaction;
    QryUltimaCompra: TIBQuery;
    DtsUltCompra: TDataSource;
    QryUltimaCompraENT_FECHA: TDateTimeField;
    QryUltimaCompraESTADO: TIBStringField;
    QryUltimaCompraPRO_CODI: TIntegerField;
    QryUltimaCompraEND_PRECIO: TIBBCDField;
    pgcEntradas: TcxPageControl;
    TbsEntrada: TcxTabSheet;
    pnlSuperior: TPanel;
    cxLabel1: TcxLabel;
    BtnNuevo: TcxButton;
    BtnGuardar: TcxButton;
    BtnFinalizar: TcxButton;
    BtnEditar: TcxButton;
    BtnCancelar: TcxButton;
    BtnImprimir: TcxButton;
    BtnConsFacturas: TcxButton;
    Panel2: TPanel;
    GrbBusqueda: TcxGroupBox;
    EdtBusqueda: TcxButtonEdit;
    RgCriterio: TcxRadioGroup;
    GrbEncabezado: TcxGroupBox;
    EdtFechaOrden: TcxDBDateEdit;
    EdtNumEntrada: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    LblEstadoDoc: TcxLabel;
    cxLabel19: TcxLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    EdtNumDoc: TcxDBTextEdit;
    EdtProveedor: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    EdtTelFijo: TcxDBTextEdit;
    EdtTelMovil: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    EdtTipDoc: TcxDBTextEdit;
    EdtContacto: TcxDBTextEdit;
    GrbObservaciones: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    pnlDetalle: TPanel;
    GridEntDe: TcxGrid;
    TvlEntDe: TcxGridDBTableView;
    TvlEntDePRO_CODI: TcxGridDBColumn;
    TvlEntDePRO_NOMB: TcxGridDBColumn;
    TvlEntDePRO_CBARRAS: TcxGridDBColumn;
    TvlEntDeEND_CANT: TcxGridDBColumn;
    TvlEntDeEND_PRECIO: TcxGridDBColumn;
    TvlEntDeBOD_CODI: TcxGridDBColumn;
    TvlEntDeVR_SUBTOTAL: TcxGridDBColumn;
    LvlEntDe: TcxGridLevel;
    PnlInferior: TPanel;
    EdtTotalOrden: TcxDBCurrencyEdit;
    cxLabel20: TcxLabel;
    GrbUltimaVenta: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    DbLblEstado: TcxDBLabel;
    SqlMovInventario: TIBSQL;
    QryEntDeEND_VBAS: TIBBCDField;
    QryEntDeEND_VIVA: TIBBCDField;
    CdsEntDeEND_VBAS: TBCDField;
    CdsEntDeEND_VIVA: TBCDField;
    TvlEntDeEND_VBAS: TcxGridDBColumn;
    TvlEntDeEND_VIVA: TcxGridDBColumn;
    EdtDocOrigen: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    QryEntMaENT_DOCORIGEN: TIBStringField;
    CdsEntMaENT_DOCORIGEN: TWideStringField;
    QryListaProveedoresPRV_NOMBRE: TIBStringField;
    QryListaProveedoresPRV_DIRECCION: TIBStringField;
    procedure BtnNuevoClick(Sender: TObject);
    procedure EdtBusquedaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEntDeNewRecord(DataSet: TDataSet);
    procedure CdsEntDeCalcFields(DataSet: TDataSet);
    procedure TvlEntDePRO_CODIPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlEntDePRO_CODIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FocoEnCantidad;
    procedure TvlEntDePRO_NOMBPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlEntDePRO_NOMBPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlEntDePRO_CBARRASPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TvlEntDePRO_CBARRASPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlEntDeEND_CANTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TvlEntDeEND_PRECIOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure BtnGuardarClick(Sender: TObject);
    procedure CdsEntDeBeforePost(DataSet: TDataSet);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnFinalizarClick(Sender: TObject);
    procedure CdsEntMaAfterScroll(DataSet: TDataSet);
    procedure EdtNumEntradaPropertiesEditValueChanged(Sender: TObject);
    procedure CdsEntDeAfterScroll(DataSet: TDataSet);
    procedure BtnConsFacturasClick(Sender: TObject);
    procedure CdsEntDeEND_PRECIOChange(Sender: TField);
  private
    { Private declarations }
    FtxtError : string;
    class function Execute: Boolean; { Private declarations }
    function BusquedaPvr(pTexto : string) : Integer;
    function BuscarProveedor(pCriterio : Integer; pTexto : string): Integer;
    procedure CerraryLimpiar;
    procedure BusquedaProd(pCriterio: Integer; pTexto : string); //pCriterio 0=Codigo, 1=Nombre, 2=Barras, 3=Referencia
    function BuscarProducto (pCriterio : Integer; pTexto : string): Integer;
    function Finalizar : Integer;
    function asignarSubtotalesalEntMa : Integer;
    function guardarMovimiento : Integer;
    function actualizaStock : Integer;
    procedure ValidarEstado;
    procedure ObtDatosUltVenta(pEntrada, pCliente, pProducto : integer);
    procedure AccionesHabilitar(pAccion : Boolean);
  public
    { Public declarations }
    vContDet, vCodProveedorBusc, vEntCodiBusc : Integer;
    vVieneDeConsulta : Boolean; //SI viene de la forma de las consultas de documentos
    procedure CanClose;
  end;

var
  FrmEntradas: TFrmEntradas;

implementation

{$R *.dfm}

uses UntDmGlobal, UntListaProveedores, UntListaProdEnt, UntPrincipal,
  UntConsDocsEntradas;

procedure TFrmEntradas.AccionesHabilitar(pAccion: Boolean);
begin
  TvlEntDe.OptionsData.Appending := pAccion;
  TvlEntDe.OptionsData.Deleting := pAccion;
  TvlEntDe.OptionsData.Editing := pAccion;
end;

function TFrmEntradas.actualizaStock: Integer;
var
  vCantidad : Double;
begin
  Result := 0;
  try
    CdsEntDe.First;
    while not CdsEntDe.Eof do
    begin
      SqlMovInventario.Close;   //Se averigua si es producto o servicio
      SqlMovInventario.SQL.Clear;
      SqlMovInventario.SQL.Add('SELECT * FROM PRODUCTOS WHERE PRO_CODI = :PRO_CODI');
      SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
      SqlMovInventario.ExecQuery;
      if SqlMovInventario.FieldByName('PRO_CLASE').AsInteger = 0 then
      begin
        vCantidad := 0;
        SqlMovInventario.Close;
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('SELECT * FROM STOCK ');
        SqlMovInventario.SQL.Add('WHERE PRO_CODI = :PRO_CODI AND BOD_CODI = :BOD_CODI ');
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsEntDeBOD_CODI.AsInteger;
        SqlMovInventario.ExecQuery;
        vCantidad := SqlMovInventario.FieldByName('ST_CANTIDAD').AsFloat;
        SqlMovInventario.Close;
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('update or insert into stock (PRO_CODI, ST_CANTIDAD, BOD_CODI)  ');
        SqlMovInventario.SQL.Add('values (:PRO_CODI, :ST_CANTIDAD, :BOD_CODI)  ');
        SqlMovInventario.SQL.Add('matching (PRO_CODI, BOD_CODI) ');
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
        SqlMovInventario.ParamByName('ST_CANTIDAD').AsFloat := vCantidad + CdsEntDeEND_CANT.AsFloat;
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsEntDeBOD_CODI.AsInteger;
        SqlMovInventario.ExecQuery;
      end;
      CdsEntDe.Next;
    end;
  except on E: Exception do
    begin
      Result := 1;
      raise Exception.Create('Error en FrmEntradas.actualizaStock. ' + e.Message);
    end;
  end;
end;

function TFrmEntradas.asignarSubtotalesalEntMa: Integer;
begin
  try
    if CdsEntMa.State = dsBrowse then
      CdsEntMa.Edit;
    if CdsEntMa.State = dsBrowse then
      CdsEntMa.Edit;
    CdsEntMaENT_VR_TOTAL.AsFloat := CdsEntDeVR_TOTAL.AsVariant;
    CdsEntMaENT_ESTADO.AsInteger := 1;  //1=Aplicada; 0=En proceso
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.asignarSubtotalesalEntMa. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnCancelarClick(Sender: TObject);
begin
  try
    //CdsFama.CancelUpdates;
    if CdsEntDe.State <> dsInactive then
      CdsEntDe.CancelUpdates;
    GrbBusqueda.Enabled := True;
    GrbEncabezado.Enabled := False;
    GrbObservaciones.Enabled := False;
//    GridEntDe.Enabled := False;
    AccionesHabilitar(False);
    //Botones
    BtnNuevo.Enabled := True;
    BtnGuardar.Enabled := (CdsEntMa.ChangeCount > 0); //False;
    BtnEditar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnFinalizar.Enabled := (CdsEntMa.ChangeCount > 0); //True;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnCancelarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnConsFacturasClick(Sender: TObject);
begin
  try
    vVieneDeConsulta := False;
    if (FrmConsDocsEntradas.ShowModal = mrOk) and (vCodProveedorBusc <> 0) then
    begin
      vVieneDeConsulta := True;
      QryListaProveedores.Close;
      QryListaProveedores.SQL.Clear;
      QryListaProveedores.SQL.Add('SELECT PROVEEDORES.*, tipdocumentos.td_abreviado  ');
      QryListaProveedores.SQL.Add('from PROVEEDORES  ');
      QryListaProveedores.SQL.Add('LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = PROVEEDORES.cod_tipdo ');
      QryListaProveedores.SQL.Add('WHERE prv_codi = :prv_codi ');
      QryListaProveedores.ParamByName('prv_codi').AsInteger := vCodProveedorBusc;
      QryListaProveedores.Open;
      CdsEntMa.Close;
      QryEntMa.Close;
      QryEntMa.ParamByName('P_PRV_CODI').AsInteger := QryListaProveedoresPRV_CODI.AsInteger;
      QryEntMa.ParamByName('P_ENT_CODI').AsInteger := vEntCodiBusc;
      CdsEntMa.Open;
      CdsEntDe.Close;
      QryEntDe.Close;
      QryEntDe.ParamByName('P_ENT_CODI').AsInteger := CdsEntMaENT_CODI.AsInteger;
      CdsEntDe.Open;
      //la grilla de articulos se deshabilita
//      GridEntDe.Enabled := False;
      AccionesHabilitar(False);
      vVieneDeConsulta := False;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnConsFacturasClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnEditarClick(Sender: TObject);
begin
  try
    GrbObservaciones.Enabled := True;
    GrbEncabezado.Enabled := True;
//    GridEntDe.Enabled := True;
    AccionesHabilitar(True);
    BtnNuevo.Enabled := False;
    BtnGuardar.Enabled := True;
    BtnEditar.Enabled := False;
    BtnCancelar.Enabled := True;
    BtnFinalizar.Enabled := True;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnEditarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnFinalizarClick(Sender: TObject);
begin
  try
    if (CdsEntMaENT_ESTADO.AsInteger = 1) then
    begin
      Application.MessageBox('La entrada ya se encuentra finalizada.', 'Información', MB_ICONERROR + MB_OK);
      Exit;
    end;
    if Finalizar <> 0 then
    begin
      if Length(FtxtError) = 0 then
        FtxtError := 'Error al Finalizar el documento [FrmEntradas.BtnFinalizarClick]';
      raise Exception.Create(FtxtError);
    end
    else
      ValidarEstado;  //valida el estado del doc para actualizar el label de estado y deshablitar el radiogroup
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnFinalizarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnGuardarClick(Sender: TObject);
begin
  try
    if CdsEntMa.State <> dsBrowse  then
      CdsEntMa.Post;
    if CdsEntDe.State <> dsBrowse then
      CdsEntDe.Post;
    if Application.MessageBox('¿Desea guardar los cambios?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      CdsEntMa.ApplyUpdates(0);
      CdsEntDe.ApplyUpdates(0);
      QryEntMa.Transaction.CommitRetaining;
      QryEntDe.Transaction.CommitRetaining;
    end;
    BtnNuevo.Enabled := True;
    BtnGuardar.Enabled := False;
    BtnEditar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnFinalizar.Enabled := True;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnGuardarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BtnNuevoClick(Sender: TObject);
var
  vNumero : Integer;
begin
  try
    vNumero := 0;
    CerraryLimpiar;
    if CdsEntMa.State in [dsBrowse, dsInactive] then
    begin
      GrbBusqueda.Enabled := True;
      GrbEncabezado.Enabled := True;
      GrbObservaciones.Enabled := False;
//      GridEntDe.Enabled := False;
      AccionesHabilitar(False);
      //Botones
      BtnNuevo.Enabled := False;
      BtnGuardar.Enabled := False;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := True;
  //    BtnEliminar.Enabled := False;
      BtnFinalizar.Enabled := False;
      EdtBusqueda.SetFocus;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BtnNuevoClick. ' + e.Message);
    end;
  end;
end;

function TFrmEntradas.BuscarProveedor(pCriterio: Integer;
  pTexto: string): Integer;
begin
  try
    Result := 0;
    QryListaProveedores.Close;
    QryListaProveedores.SQL.Clear;
    QryListaProveedores.SQL.Add('SELECT PROVEEDORES.*, tipdocumentos.td_abreviado ');
    QryListaProveedores.SQL.Add(' from PROVEEDORES');
    QryListaProveedores.SQL.Add(' LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = PROVEEDORES.cod_tipdo ');
    QryListaProveedores.SQL.Add(' WHERE ');
    case pCriterio of
      0 : QryListaProveedores.SQL.Add(' upper(PRV_NUMDOC) LIKE ''%' + pTexto + '%''');
      1 : QryListaProveedores.SQL.Add(' upper(PRV_NOMBRE) LIKE ''%' + pTexto + '%''');
    end;
    QryListaProveedores.Open;
    QryListaProveedores.Last;
    QryListaProveedores.First;
    if QryListaProveedores.RecordCount > 0 then
    begin
      if QryListaProveedores.RecordCount = 1 then
      begin
        //Si encontro solo uno
        Result := 1;
      end
      else
        Result := 6;
    end;
    //No se encontro proveedor, deberia mostrar la de creación
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BuscarProveedor. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.BusquedaProd(pCriterio: Integer; pTexto: string);
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
    QryListaProductos.SQL.Add('), 0)saldo_real ');
    QryListaProductos.SQL.Add('FROM PRODUCTOS');
    QryListaProductos.SQL.Add('LEFT JOIN stock ON stock.pro_codi = productos.pro_codi');
    QryListaProductos.SQL.Add('LEFT JOIN BODEGAS ON BODEGAS.bod_codi = stock.bod_codi');
    QryListaProductos.SQL.Add(' WHERE PRO_CLASE = 0');
    if pConWhere then
      QryListaProductos.SQL.Add(' AND PRODUCTOS.PRO_CODI = :P_PRO_CODI');
  end;

begin
  try
    if Length(pTexto) > 0 then
    begin
      vBusqueda := BuscarProducto(pCriterio, pTexto);
      if vBusqueda = 6 then
      begin
        if FrmListaProdEnt.ShowModal = mrCancel then
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
      //Mostrar le mensaje de que el txt de busqueda esta vacio
      alistarQryProductos(False);
      QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
      QryListaProductos.Open;
      if FrmListaProdEnt.ShowModal = mrCancel then
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
      if CdsEntDe.State = dsBrowse then
        CdsEntDe.Edit;
      CdsEntDePRO_CODI.AsInteger := QryListaProductosPRO_CODI.AsInteger;
      CdsEntDePRO_NOMB.AsString := QryListaProductosPRO_NOMBRE.AsString;
      CdsEntDePRO_CBARRAS.AsString := QryListaProductosPRO_COD_BARRAS.AsString;
      CdsEntDeEND_PRECIO.AsFloat  := QryListaProductosPRO_PRECIO.AsFloat;
    end
    else
    begin
      //Vuelve a buscar un producto
//      BusquedaProd(pCriterio,'');
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BusquedaProd. ' + e.Message);
    end;
  end;
end;

function TFrmEntradas.BuscarProducto(pCriterio: Integer;
  pTexto: string): Integer;
begin
    try
    Result := 0;
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
    QryListaProductos.SQL.Add(' WHERE PRO_CLASE = 0 AND ');
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
    //No se encontro producto, deberia mostrar la de creación
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BuscarProducto. ' + e.Message);
    end;
  end;
end;

function TFrmEntradas.BusquedaPvr(pTexto: string) : Integer;
var
  vBusqueda, vCodProveedor : Integer; //6=Encontro más de uno; 1=Encontro uno; 0=No encontro

  procedure alistarSqlProveedor(pConWhere : Boolean);
  begin
    QryListaProveedores.Close;
    QryListaProveedores.SQL.Clear;
    QryListaProveedores.SQL.Add('SELECT PROVEEDORES.*, tipdocumentos.td_abreviado  ');
    QryListaProveedores.SQL.Add('from PROVEEDORES  ');
    QryListaProveedores.SQL.Add('LEFT JOIN tipdocumentos ON tipdocumentos.td_codi = PROVEEDORES.cod_tipdo ');
    if pConWhere then
      QryListaProveedores.SQL.Add(' WHERE PRV_CODI = :P_PRV_CODI');
  end;

begin
  try
    if Length(pTexto) > 0 then
    begin
      vBusqueda := BuscarProveedor(RgCriterio.Properties.Items[RgCriterio.ItemIndex].Index, pTexto);
      if vBusqueda = 6 then
      begin
        if FrmListaProveedores.ShowModal = mrCancel then
        begin
          EdtBusqueda.SetFocus;
        end
        else
        begin
          //Encontro un solo proveedor, realiza la busqueda para traer solo uno
          vCodProveedor := QryListaProveedoresPRV_CODI.AsInteger;
          alistarSqlProveedor(True);
          QryListaProveedores.ParamByName('P_PRV_CODI').AsInteger := vCodProveedor;
          QryListaProveedores.Open;
        end;
      end
      else if vBusqueda = 0 then
      begin
        //mostrar mensaje de proveedor no encontrado
        if Application.MessageBox('Proveedor no encontrado, ¿desea crear un proveedor nuevo?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
        begin
          FrmPrincipal.actProveedores.Execute;
          Result := 10; //10 si quiere crear el cliente
        end
        else
          Result := 11; //11 no crear el cliente
      end;
    end
    else
    begin
      //Mostrar le mensaje de que el txt de busqueda esta vacio
      alistarSqlProveedor(False);
      QryListaProveedores.Open;
      if FrmListaProveedores.ShowModal = mrCancel then
      begin
        EdtBusqueda.SetFocus;
      end
      else
      begin
        vCodProveedor := QryListaProveedoresPRV_CODI.AsInteger;
        alistarSqlProveedor(True);
        QryListaProveedores.ParamByName('P_PRV_CODI').AsInteger := vCodProveedor;
        QryListaProveedores.Open;
      end;
    end;
    if not QryListaProveedores.IsEmpty then
    begin
      CdsEntMa.Close;  //09-05-2019
      QryEntMa.Close;
      QryEntMa.ParamByName('P_PRV_CODI').AsInteger := QryListaProveedoresPRV_CODI.AsInteger;
      QryEntMa.ParamByName('P_PRV_CODI').AsInteger := DmGlobal.GetConsecutivo('ENTRADASM','ENT_CODI');
      CdsEntMa.Open;
  //    if CdsEntMa.RecordCount > 0 then
  //      CdsEntMa.EmptyDataSet;
      CdsEntMa.Append;
      CdsEntMaPRV_CODI.AsInteger := QryListaProveedoresPRV_CODI.AsInteger;
      CdsEntMaENT_CODI.AsInteger := DmGlobal.GetConsecutivo('ENTRADASM','ENT_CODI');
      CdsEntMaENT_ESTADO.AsInteger := 0;  //Estado 0=Sin aplicar
      CdsEntMaENT_NUME.AsInteger := DmGlobal.GetNumEntrada;
      EdtFechaOrden.Date := Now;
      CdsEntMa.Post;
      CdsEntDe.Close;
      QryEntDe.Close;
      QryEntDe.ParamByName('P_ENT_CODI').AsInteger := CdsEntMaENT_CODI.AsInteger;
      CdsEntDe.Open;
      vContDet := 0;  //Borrar
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.BusquedaPvr. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CanClose;
begin
  try
    if (CdsEntMa.ChangeCount > 0) or (CdsEntDe.ChangeCount > 0) then
    begin
      if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
           MB_ICONQUESTION + MB_YESNO) = mrYes then
      begin
        try
        if CdsEntMa.State <> dsBrowse  then
          CdsEntMa.Post;
        if CdsEntDe.State <> dsBrowse then
          CdsEntDe.Post;
          CdsEntMa.ApplyUpdates(0);
          CdsEntDe.ApplyUpdates(0);
          QryEntMa.Transaction.CommitRetaining;
          QryEntDe.Transaction.CommitRetaining;
  //        AccionGrupos(False);
        except
          on E: Exception do
          begin
            raise Exception.Create('Error al guardar el registro. ' + e.Message);
          end;
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.CanClose. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CdsEntDeBeforePost(DataSet: TDataSet);
var
  vFalta : Integer;
begin
  vFalta := 0;
  try
    //Validaciones
    if CdsEntDePRO_CODI.IsNull then
    begin
      vFalta := 1;
      Application.MessageBox('Debe seleccionar un producto.', 'Advertencia', MB_ICONWARNING);
      Abort;
    end;
    if CdsEntDeEND_CANT.IsNull then
      CdsEntDeEND_CANT.AsFloat := 1;
    if CdsEntDeEND_CANT.AsFloat <= 0 then
    begin
      Application.MessageBox('La cantidad no puede ser cero o vacia.', 'Advertencia', MB_ICONWARNING);
      CdsEntDeEND_CANT.AsFloat := 1;
    end;
//    if (CdsEntDeEND_CANT.IsNull) or (CdsEntDeEND_CANT.AsFloat <= 0) then
//    begin
//      Application.MessageBox('La cantidad no puede ser cero o vacia.', 'Advertencia', MB_ICONWARNING);
//      Abort;
//    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.CdsEntDeBeforePost. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CdsEntDeCalcFields(DataSet: TDataSet);
begin
  try
    if not (CdsEntDePRO_CODI.AsVariant <> Null) or (CdsEntDePRO_CODI.AsString <> '') then
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
      QryListaProductos.ParamByName('P_PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
      QryListaProductos.ParamByName('mvi_fecha_docu').AsDate := EdtFechaOrden.Date;
      QryListaProductos.Open;
    end;
    if not QryListaProductos.IsEmpty then
    begin
      CdsEntDePRO_NOMB.AsString := QryListaProductosPRO_NOMBRE.AsString;
      CdsEntDePRO_CBARRAS.AsString := QryListaProductosPRO_COD_BARRAS.AsString;
    end;
    CdsEntDeVR_SUBTOTAL.AsFloat := (CdsEntDeEND_CANT.AsFloat * CdsEntDeEND_PRECIO.AsFloat);
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.CdsEntDeCalcFields. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CdsEntDeEND_PRECIOChange(Sender: TField);
var
  pPor_IVA, Vr_Base : Double;
begin
  pPor_IVA := 0;
  if QryListaProductosPRO_IVA.AsFloat > 0 then
  begin
    pPor_IVA := QryListaProductosPRO_IVA.AsFloat;
    pPor_IVA := 1 + (pPor_IVA/100);
    Vr_Base := (CdsEntDeEND_PRECIO.AsFloat/pPor_IVA);
    CdsEntDeEND_VBAS.AsFloat := RoundTo(Vr_Base,0);
    CdsEntDeEND_VIVA.AsFloat := (CdsEntDeEND_PRECIO.AsFloat - CdsEntDeEND_VBAS.AsFloat);
  end
  else
  begin
    CdsEntDeEND_VIVA.AsFloat := 0;
    CdsEntDeEND_VBAS.AsFloat := 0;
  end;
end;

procedure TFrmEntradas.CdsEntDeNewRecord(DataSet: TDataSet);
begin
  try
    if CdsEntMaENT_ESTADO.AsInteger = 0 then
    begin
      CdsEntDeENT_CODI.AsInteger := CdsEntMaENT_CODI.AsInteger;
      Inc(vContDet);
      CdsEntDeEND_CONT.AsInteger := vContDet;
      CdsEntDeEND_CANT.AsFloat := 1;
      CdsEntDeEND_PRECIO.AsFloat := 0;
      CdsEntDeBOD_CODI.AsInteger := 1;  //codigo de la bodega
      CdsEntDeEND_VBAS.AsFloat := 0;
      CdsEntDeEND_VIVA.AsFloat := 0;
    end
    else
      CdsEntDe.Cancel;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.CdsEntDeNewRecord. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CdsEntMaAfterScroll(DataSet: TDataSet);
begin
  ValidarEstado;
end;

procedure TFrmEntradas.CerraryLimpiar;
begin
  try
    if (CdsEntMa.State <> dsInactive) and (CdsEntMa.RecordCount > 0) then
      CdsEntMa.EmptyDataSet;
    CdsEntMa.Close;
    if (CdsEntDe.state <> dsInactive) and (CdsEntDe.RecordCount > 0) then
      CdsEntDe.EmptyDataSet;
    CdsEntDe.Close;
    QryListaProveedores.Close;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.CerraryLimpiar. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.EdtBusquedaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  vCrearPro : Integer;
begin
  try
    vCrearPro := BusquedaPvr(EdtBusqueda.Text);    //Respuestas 0=Defecto; 10=Crear proveedor; 11=NO crear proveedor
    if ((CdsEntMa.Active) and (CdsEntMa.RecordCount > 0)) then
    begin
      //Habilita Grupos
      GrbBusqueda.Enabled := False;
      GrbObservaciones.Enabled := True;
      GrbEncabezado.Enabled := True;
//      GridEntDe.Enabled := True;
      AccionesHabilitar(True);
      //Habilita Botones
      BtnNuevo.Enabled := False;
      BtnGuardar.Enabled := True;
      BtnEditar.Enabled := False;
      BtnCancelar.Enabled := True;
    //  BtnEliminar.Enabled := False;
      BtnFinalizar.Enabled := False;
  //    BtnImprimir.Enabled := True;
    end
    else
      if vCrearPro = 11 then
        EdtBusqueda.SetFocus;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.EdtBusquedaPropertiesButtonClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.EdtNumEntradaPropertiesEditValueChanged(Sender: TObject);
begin
  try
    if CdsEntMa.State = dsEdit then
      CdsEntMa.Post;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.EdtNumEntradaPropertiesEditValueChanged. ' + e.Message);
    end;
  end;
end;

class function TFrmEntradas.Execute: Boolean;
var
  FrmEntradas: TFrmEntradas;
begin
  FrmEntradas := TFrmEntradas.Create(nil);
  try
    Result := FrmEntradas.ShowModal = mrOk;
  finally
    FrmEntradas.Free;
  end;
end;

function TFrmEntradas.Finalizar: Integer;
begin
  Result := 0;
  if Application.MessageBox('¿Desea finalizar el documento?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      //Se obtiene el numero para la entrada
      EdtNumEntrada.Text := IntToStr(DmGlobal.GetNumEntrada);

      asignarSubtotalesalEntMa;
      if guardarMovimiento > 0 then
        Abort;
      if actualizaStock > 0 then
        Abort;
      CdsEntMa.ApplyUpdates(0);
      CdsEntDe.ApplyUpdates(0);
      QryEntMa.Transaction.CommitRetaining;
      QryEntDe.Transaction.CommitRetaining;
//      AccionGrupos(False);
      GrbBusqueda.Enabled := False;
      GrbEncabezado.Enabled := False;
      GrbObservaciones.Enabled := False;
//      GridEntDe.Enabled := False;
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
        SqlMovInventario.Transaction.Rollback;
        //raise Exception.Create('Error al guardar el documento. ' + e.Message);
        FtxtError := 'Error al Finalizar el documento [FrmEntradas.Finalizar]. ' + e.Message;
      end;
    end;
  end;
end;

procedure TFrmEntradas.FocoEnCantidad;
begin
  TvlEntDe.FindItemByName('TvlEntDeEND_CANT').Focused := True;
end;

procedure TFrmEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
    CanClose;
  Action := caFree;
  FrmEntradas := nil;
end;

procedure TFrmEntradas.FormCreate(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaProveedores, FrmListaProveedores);
    Application.CreateForm(TFrmListaProdEnt, FrmListaProdEnt);
    Application.CreateForm(TFrmConsDocsEntradas, FrmConsDocsEntradas);
    if not DmGlobal.TraBase.Active then
      DmGlobal.TraBase.StartTransaction;
    DmGlobal.TblFormaPago.Open;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.FormCreate. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.FormHide(Sender: TObject);
begin
//  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
  CanClose;
end;

procedure TFrmEntradas.FormShow(Sender: TObject);
begin
  try
    EdtFechaOrden.EditText := DateTimeToStr(Now);
    BtnNuevo.Enabled := True;
    BtnGuardar.Enabled := False;
    BtnEditar.Enabled := False;
    BtnCancelar.Enabled := False;
    BtnFinalizar.Enabled := False;
    BtnFinalizar.Enabled := False;
    pgcEntradas.ActivePage := TbsEntrada;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.FormShow. ' + e.Message);
    end;
  end;
end;

function TFrmEntradas.guardarMovimiento: Integer;
begin
  Result := 0;
  try
    CdsEntDe.First;
    while not CdsEntDe.Eof do
    begin
      SqlMovInventario.Close;   //Se averigua si es producto o servicio
      SqlMovInventario.SQL.Clear;
      SqlMovInventario.SQL.Add('SELECT * FROM PRODUCTOS WHERE PRO_CODI = :PRO_CODI');
      SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
      SqlMovInventario.ExecQuery;
      if SqlMovInventario.FieldByName('PRO_CLASE').AsInteger = 0 then
      begin
        SqlMovInventario.Close;   //SI es producto se inserta en el movimiento
        SqlMovInventario.SQL.Clear;
        SqlMovInventario.SQL.Add('INSERT INTO movinventario (MVI_CLASE_DOCU, MVI_FECHA_DOCU, MVI_NUM_DOCU, ');
        SqlMovInventario.SQL.Add(' MVI_DOCU_CODI, PRO_CODI, MVI_CANTIDAD, BOD_CODI, MVI_FECHA_SIST, EMP_CODI) ');
        SqlMovInventario.SQL.Add('VALUES (:MVI_CLASE_DOCU, :MVI_FECHA_DOCU, :MVI_NUM_DOCU, ');
        SqlMovInventario.SQL.Add(' :MVI_DOCU_CODI, :PRO_CODI, :MVI_CANTIDAD, :BOD_CODI, :MVI_FECHA_SIST, :EMP_CODI)');
        SqlMovInventario.ParamByName('MVI_CLASE_DOCU').AsInteger := 0; //0=Entradas; 1=Salidas
        SqlMovInventario.ParamByName('MVI_FECHA_DOCU').AsDateTime := CdsEntMaENT_FECHA.AsDateTime;
        SqlMovInventario.ParamByName('MVI_NUM_DOCU').AsString := CdsEntMaENT_NUME.AsString;
        SqlMovInventario.ParamByName('MVI_DOCU_CODI').AsInteger := CdsEntMaENT_CODI.AsInteger;
        SqlMovInventario.ParamByName('PRO_CODI').AsInteger := CdsEntDePRO_CODI.AsInteger;
        SqlMovInventario.ParamByName('MVI_CANTIDAD').AsFloat := CdsEntDeEND_CANT.AsFloat;  //Se guarda positivo
        SqlMovInventario.ParamByName('BOD_CODI').AsInteger := CdsEntDeBOD_CODI.AsInteger;
        SqlMovInventario.ParamByName('MVI_FECHA_SIST').AsDateTime := Now;
        SqlMovInventario.ParamByName('EMP_CODI').AsInteger := -1;  //-1 es el de entradas
        SqlMovInventario.ExecQuery;
      end;
      CdsEntDe.Next;
    end;
  except on E: Exception do
    begin
      Result := 1;
      raise Exception.Create('Error en FrmEntradas.guardarMovimiento. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.TvlEntDeEND_CANTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  AValue : double;
begin
  AValue := Strtofloat(DisplayValue);
  if AValue < 0 then
  begin
    ErrorText := 'Valores negativos no son permitidos para la cantidad.';
    Error := True;
  end;
end;

procedure TFrmEntradas.TvlEntDeEND_PRECIOPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var AValue : double;
begin
  AValue := Strtofloat(DisplayValue);
  if AValue < 0 then
  begin
    ErrorText := 'Valores negativos no son permitidos para los precios.';
    Error := True;
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_CBARRASPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (CdsEntDe.State in [dsInsert, dsEdit]) and (CdsEntMaENT_ESTADO.AsInteger = 0) then
  begin
    BusquedaProd(2,TcxButtonEdit(Sender).EditText);
    if not QryListaProductos.IsEmpty then
      FocoEnCantidad
    else
//      TvlEntDe.FindItemByName('TvlEntDePRO_CBARRAS').Focused := True;
      CdsEntDe.Cancel;
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_CBARRASPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  BusquedaProd(2,DisplayValue);
  if not QryListaProductos.IsEmpty then
//    FocoEnCantidad
  else
  begin
    DisplayValue := '';
    TcxButtonEdit(Sender).EditText := '';
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_CODIPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (CdsEntDe.State in [dsInsert, dsEdit]) and (CdsEntMaENT_ESTADO.AsInteger = 0) then
  begin
    BusquedaProd(0,TcxButtonEdit(Sender).EditText);
    //Posicionar en la celda de cantidad
  //  TvlFaDe.Columns[3].Focused := True;
    if not QryListaProductos.IsEmpty then
      FocoEnCantidad
    else
      //TvlEntDe.FindItemByName('TvlEntDePR_CODI').Focused := True;
      CdsEntDe.Cancel;
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_CODIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  BusquedaProd(0,DisplayValue);
  //Posicionar en la celda de cantidad
  if not QryListaProductos.IsEmpty then
//    FocoEnCantidad
  else
  begin
    DisplayValue := '';
    TcxButtonEdit(Sender).EditText := '';
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_NOMBPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (CdsEntDe.State in [dsInsert, dsEdit]) and (CdsEntMaENT_ESTADO.AsInteger = 0) then
  begin
    BusquedaProd(1,TcxButtonEdit(Sender).EditText);
    if not QryListaProductos.IsEmpty then
      FocoEnCantidad
    else
      //TvlEntDe.FindItemByName('TvlEntDePR_NOMB').Focused := True;
      CdsEntDe.Cancel;
  end;
end;

procedure TFrmEntradas.TvlEntDePRO_NOMBPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  BusquedaProd(1,DisplayValue);
  if not QryListaProductos.IsEmpty then
//    FocoEnCantidad
  else
  begin
    DisplayValue := '';
    TcxButtonEdit(Sender).EditText := '';
  end;
end;

procedure TFrmEntradas.ValidarEstado;
begin
  try
    if CdsEntMaENT_ESTADO.AsInteger = 0 then
      LblEstadoDoc.Caption := 'En Proceso'
    else
      LblEstadoDoc.Caption := 'Aplicado';
    //Si estado es en proceso y esta en edicion
    if (CdsEntMaENT_ESTADO.AsInteger = 0) and (CdsEntMa.State = dsEdit) then
    begin
      BtnGuardar.Enabled := True;
      BtnEditar.Enabled := False;
    end
    else
      BtnGuardar.Enabled := False;
    if (CdsEntMaENT_ESTADO.AsInteger = 0) and (CdsEntMa.State <> dsEdit) then
      BtnEditar.Enabled := True;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.ValidarEstado. ' + e.Message);
    end;
  end;
end;

procedure TFrmEntradas.CdsEntDeAfterScroll(DataSet: TDataSet);
begin
  ObtDatosUltVenta(CdsEntMaENT_CODI.AsInteger, CdsEntMaPRV_CODI.AsInteger, CdsEntDePRO_CODI.AsInteger);
end;

procedure TFrmEntradas.ObtDatosUltVenta(pEntrada, pCliente, pProducto: integer);
begin
  try
    QryUltimaCompra.Close;
    QryUltimaCompra.ParamByName('prv_codi').AsInteger := pCliente;
    QryUltimaCompra.ParamByName('pro_codi').AsInteger := pProducto;
    QryUltimaCompra.ParamByName('ent_codi').AsInteger := pEntrada;
    QryUltimaCompra.Open;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en FrmEntradas.ObtDatosUltVenta. ' + e.Message);
    end;
  end;
end;

end.
