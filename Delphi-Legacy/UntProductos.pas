unit UntProductos;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxGroupBox, cxRadioGroup, cxTextEdit,
  cxNavigator, cxDBNavigator, cxDBEdit, Vcl.StdCtrls, cxButtons, cxLabel,
  Vcl.ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, cxCurrencyEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxBarBuiltInMenu, cxPC,
  cxGridCustomPopupMenu, cxGridPopupMenu, IBX.IBDatabase, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, IBX.IBTable, MidasLib;

type
  TFrmProductos = class(TForm)
    pnlSuperior: TPanel;
    cxLabel1: TcxLabel;
    BtnGuardar: TcxButton;
    BtnCancelar: TcxButton;
    BtnNuevo: TcxButton;
    BtnEliminar: TcxButton;
    BtnModificar: TcxButton;
    QryProductos: TIBQuery;
    UpdProductos: TIBUpdateSQL;
    CdsProductos: TClientDataSet;
    DspProductos: TDataSetProvider;
    DtsProductos: TDataSource;
    QryProductosPRO_NOMBRE: TIBStringField;
    QryProductosPRO_DESCRIPCION: TIBStringField;
    QryProductosPRO_REFERENCIA: TIBStringField;
    QryProductosPRO_COD_BARRAS: TIBStringField;
    QryProductosPRO_PRECIO: TIBBCDField;
    QryProductosPRO_MAXIMO: TSmallintField;
    QryProductosPRO_MINIMO: TSmallintField;
    CdsProductosPRO_NOMBRE: TWideStringField;
    CdsProductosPRO_DESCRIPCION: TWideStringField;
    CdsProductosPRO_REFERENCIA: TWideStringField;
    CdsProductosPRO_COD_BARRAS: TWideStringField;
    CdsProductosPRO_PRECIO: TBCDField;
    CdsProductosPRO_MAXIMO: TSmallintField;
    CdsProductosPRO_MINIMO: TSmallintField;
    QryProductosPRO_CODI: TIntegerField;
    QryProductosPRO_IVA: TIBBCDField;
    CdsProductosPRO_CODI: TIntegerField;
    CdsProductosPRO_IVA: TBCDField;
    QryProductosPRO_CLASE: TIntegerField;
    CdsProductosPRO_CLASE: TIntegerField;
    QryProductosPRO_MARCA: TIBStringField;
    QryProductosPRO_PRESENTACION: TIBStringField;
    CdsProductosPRO_MARCA: TWideStringField;
    CdsProductosPRO_PRESENTACION: TWideStringField;
    PageProductos: TcxPageControl;
    TbsDatosPro: TcxTabSheet;
    TbsListaPro: TcxTabSheet;
    pnlDatosCli: TPanel;
    GrbDtBasicos: TcxGroupBox;
    Label11: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    EdtReferencia: TcxDBTextEdit;
    EdtDescripcion: TcxDBTextEdit;
    EdtNombrePro: TcxDBTextEdit;
    EdtCodBarras: TcxDBTextEdit;
    GrbDtContacto: TcxGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    EdtTopeMaximo: TcxDBTextEdit;
    EdtTopeMinimo: TcxDBTextEdit;
    CedtPrecioPro: TcxDBCurrencyEdit;
    EdtIVA: TcxDBTextEdit;
    RgrClasePro: TcxDBRadioGroup;
    EdtMarca: TcxDBTextEdit;
    EdtPresentacion: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    GrbBusqueda: TcxGroupBox;
    RgCriterio: TcxRadioGroup;
    EdtBusqueda: TcxButtonEdit;
    pnlProductos: TPanel;
    GridProductos: TcxGrid;
    TvlProductos: TcxGridDBTableView;
    TvlProductosPRO_NOMBRE: TcxGridDBColumn;
    TvlProductosPRO_REFERENCIA: TcxGridDBColumn;
    TvlProductosPRO_DESCRIPCION: TcxGridDBColumn;
    TvlProductosPRO_COD_BARRAS: TcxGridDBColumn;
    TvlProductosPRO_PRECIO: TcxGridDBColumn;
    TvlProductosPRO_MAXIMO: TcxGridDBColumn;
    TvlProductosPRO_MINIMO: TcxGridDBColumn;
    TvlProductosOpciones: TcxGridDBColumn;
    LvlProductos: TcxGridLevel;
    BtnListado: TcxButton;
    GridListaProd: TcxGrid;
    TvlListaProd: TcxGridDBTableView;
    LvlListaProd: TcxGridLevel;
    TvlListaProdPRO_NOMBRE: TcxGridDBColumn;
    TvlListaProdPRO_DESCRIPCION: TcxGridDBColumn;
    TvlListaProdPRO_REFERENCIA: TcxGridDBColumn;
    TvlListaProdPRO_COD_BARRAS: TcxGridDBColumn;
    TvlListaProdPRO_PRECIO: TcxGridDBColumn;
    TvlListaProdPRO_TIPO: TcxGridDBColumn;
    TvlListaProdPRO_MAXIMO: TcxGridDBColumn;
    TvlListaProdPRO_MINIMO: TcxGridDBColumn;
    TvlListaProdPRO_CODI: TcxGridDBColumn;
    TvlListaProdPRO_IVA: TcxGridDBColumn;
    TvlListaProdPRO_CLASE: TcxGridDBColumn;
    TvlListaProdPRO_MARCA: TcxGridDBColumn;
    TvlListaProdPRO_PRESENTACION: TcxGridDBColumn;
    GrPopListado: TcxGridPopupMenu;
    popListado: TPopupMenu;
    Volver1: TMenuItem;
    TraProductos: TIBTransaction;
    QryProductosGRU_CODI: TIntegerField;
    DblGrupoInv: TcxDBLookupComboBox;
    CdsProductosGRU_CODI: TIntegerField;
    TblGrupos: TIBTable;
    DtsGrupos: TDataSource;
    TblGruposGRU_CODI: TIntegerField;
    TblGruposGRU_NOMBRE: TIBStringField;
    procedure BtnNuevoClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
    procedure CdsProductosAfterCancel(DataSet: TDataSet);
    procedure CdsProductosAfterDelete(DataSet: TDataSet);
    procedure CdsProductosAfterEdit(DataSet: TDataSet);
    procedure CdsProductosBeforePost(DataSet: TDataSet);
    procedure CdsProductosBeforeInsert(DataSet: TDataSet);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure BtnBuscarClick(Sender: TObject);
    procedure EdtBusquedaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdsProductosNewRecord(DataSet: TDataSet);
    procedure RgrClaseProPropertiesChange(Sender: TObject);
    procedure CdsProductosBeforeDelete(DataSet: TDataSet);
    procedure TvlListaProdPRO_TIPOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TvlListaProdPRO_CLASEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnListadoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TvlListaProdDblClick(Sender: TObject);
    procedure Volver1Click(Sender: TObject);
    procedure CdsProductosBeforeOpen(DataSet: TDataSet);
    procedure CdsProductosAfterOpen(DataSet: TDataSet);
    procedure CdsProductosBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
    procedure AccionGrupos(pAccion : Boolean);
    procedure BuscarProd(pTexto : string);
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmProductos: TFrmProductos;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmProductos.AccionGrupos(pAccion: Boolean);
begin
  GrbDtBasicos.Enabled := pAccion;
  GrbDtContacto.Enabled := pAccion;
  GrbBusqueda.Enabled := not(pAccion);
end;

procedure TFrmProductos.BuscarProd(pTexto : string);
begin
  CdsProductos.Close;
  QryProductos.Close;
  QryProductos.SQL.Clear;
  QryProductos.SQL.Add('SELECT * FROM PRODUCTOS ');
  QryProductos.SQL.Add(' WHERE ');
  case RgCriterio.Properties.Items[RgCriterio.ItemIndex].Index of
    0 : QryProductos.SQL.Add(' upper(PRO_NOMBRE) LIKE ''%' + pTexto + '%''');
    1 : QryProductos.SQL.Add(' upper(PRO_REFERENCIA) LIKE ''%' + pTexto + '%''');
    2 : QryProductos.SQL.Add(' upper(PRO_COD_BARRAS) LIKE ''%' + pTexto + '%''');
  end;
  CdsProductos.Open;
  if CdsProductos.RecordCount > 0 then
  begin
    AccionGrupos(False);
    BtnCancelar.Enabled := False;
    BtnModificar.Enabled := True;
    BtnNuevo.Enabled := True;
    BtnEliminar.Enabled := True;
  end;
end;

procedure TFrmProductos.BtnBuscarClick(Sender: TObject);
begin
  BuscarProd(EdtBusqueda.Text);
end;

procedure TFrmProductos.BtnCancelarClick(Sender: TObject);
begin
  CdsProductos.CancelUpdates;
  BtnNuevo.Enabled := True;
  BtnEliminar.Enabled := True;
  BtnModificar.Enabled := True;
  BtnGuardar.Enabled := False;
  BtnCancelar.Enabled := False;
end;

procedure TFrmProductos.BtnEliminarClick(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsProductos.Delete;
      vCancelarxHijos := False;
      CdsProductos.ApplyUpdates(0);
      QryProductos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmProductos.BtnGuardarClick(Sender: TObject);
begin
  if Application.MessageBox('¿Desea guardar los cambios?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      if CdsProductos.state = dsEdit then
        CdsProductos.Post;
      CdsProductos.ApplyUpdates(0);
      QryProductos.Transaction.CommitRetaining;
      AccionGrupos(False);
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
    BtnNuevo.Enabled := True;
    BtnEliminar.Enabled := True;
    BtnModificar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnGuardar.Enabled := False;
  end;
end;

procedure TFrmProductos.BtnListadoClick(Sender: TObject);
begin
  if PageProductos.ActivePageIndex = 0 then
  begin
    PageProductos.ActivePage := TbsListaPro;
    BtnListado.Caption := 'Datos';
  end
  else if PageProductos.ActivePageIndex = 1 then
  begin
    PageProductos.ActivePage := TbsDatosPro;
    BtnListado.Caption := 'Listado';
  end;

end;

procedure TFrmProductos.BtnModificarClick(Sender: TObject);
begin
  AccionGrupos(True);
  BtnModificar.Enabled := False;
  BtnNuevo.Enabled := False;
  BtnCancelar.Enabled := True;
  BtnGuardar.Enabled := True;
  BtnEliminar.Enabled := True;
  CdsProductos.Edit;
end;

procedure TFrmProductos.BtnNuevoClick(Sender: TObject);
begin
  if CdsProductos.State in [dsBrowse, dsInactive] then
  begin
    CdsProductos.Open;
    CdsProductos.Append;
    GrbBusqueda.Enabled := False;
    BtnNuevo.Enabled := False;
    BtnEliminar.Enabled := False;
    BtnModificar.Enabled := False;
    BtnCancelar.Enabled := True;
    BtnGuardar.Enabled := True;
  end;
end;

procedure TFrmProductos.CdsProductosAfterCancel(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmProductos.CdsProductosAfterDelete(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmProductos.CdsProductosAfterEdit(DataSet: TDataSet);
begin
  AccionGrupos(True);
end;

procedure TFrmProductos.CdsProductosAfterOpen(DataSet: TDataSet);
begin
  TvlProductos.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmProductos.CdsProductosBeforeDelete(DataSet: TDataSet);
var
  vTieneReg : Boolean;
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vTieneReg := False;
  //Ordenes
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(ot.pr_codi) QT FROM ordentid OT');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN productos P ON P.pro_codi = OT.pr_codi');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE P.pro_codi = :pro_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('pro_codi').AsInteger := CdsProductosPRO_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Entradas
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(E.pro_codi) QT FROM entradadet E');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN productos P ON P.pro_codi = E.pro_codi');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE P.pro_codi = :pro_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('pro_codi').AsInteger := CdsProductosPRO_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if vTieneReg then
  begin
    ShowMessage('Existen registros asociados con el producto ' + CdsProductosPRO_NOMBRE.AsString +
              ', no es posible eliminarlo.');
    CdsProductos.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmProductos.CdsProductosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
  begin
    BtnCancelar.Click;
    Abort;
  end;
end;

procedure TFrmProductos.CdsProductosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
  AccionGrupos(True);
end;

procedure TFrmProductos.CdsProductosBeforeOpen(DataSet: TDataSet);
begin
  TblGrupos.Open;
end;

procedure TFrmProductos.CdsProductosBeforePost(DataSet: TDataSet);
var
  vCodProducto : Integer;
begin
  if CdsProductos.State = dsInsert then
  begin
    vCodProducto := DmGlobal.GetConsecutivo('PRODUCTOS', 'PRO_CODI');
    if CdsProductosPRO_CODI.AsInteger <> vCodProducto then
      CdsProductosPRO_CODI.AsInteger := vCodProducto;
  end;
  AccionGrupos(False);
end;

procedure TFrmProductos.CdsProductosNewRecord(DataSet: TDataSet);
begin
  if not TraProductos.Active then
    TraProductos.StartTransaction;
  CdsProductosPRO_CODI.AsInteger := DmGlobal.GetConsecutivo('PRODUCTOS', 'PRO_CODI');
  CdsProductosPRO_PRECIO.AsFloat := 0;
  CdsProductosPRO_MAXIMO.AsInteger := 0;
  CdsProductosPRO_MINIMO.AsInteger := 0;
  CdsProductosGRU_CODI.AsInteger := 0;
  CdsProductosPRO_CLASE.AsInteger := 0;
  CdsProductosPRO_IVA.AsFloat := 0;
end;

procedure TFrmProductos.EdtBusquedaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  BuscarProd(EdtBusqueda.Text);
end;

procedure TFrmProductos.EdtPrecioKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

class function TFrmProductos.Execute: Boolean;
var
  Frmproductos: TFrmProductos;
begin
  Frmproductos := TFrmProductos.Create(nil);
  try
    Result := FrmProductos.ShowModal = mrOk;
  finally
    Frmproductos.Free;
  end;
end;

procedure TFrmProductos.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsProductos.ApplyUpdates(0);
      QryProductos.Transaction.CommitRetaining;
      AccionGrupos(False);
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmProductos.FormActivate(Sender: TObject);
begin
  PageProductos.ActivePage := TbsDatosPro;
end;

procedure TFrmProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdsProductos.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmProductos := nil;
end;

procedure TFrmProductos.FormHide(Sender: TObject);
begin
  if CdsProductos.ChangeCount > 0 then
    CanClose;
end;

procedure TFrmProductos.RgrClaseProPropertiesChange(Sender: TObject);
begin
  if RgrClasePro.ItemIndex = 1 then
  begin
    DblGrupoInv.Enabled := False;
    EdtTopeMinimo.Text := '0';
    EdtTopeMinimo.Enabled := False;
    EdtTopeMaximo.Text := '0';
    EdtTopeMaximo.Enabled := False;
    EdtMarca.Enabled := False;
    EdtPresentacion.Enabled := False;
  end
  else
  begin
    EdtTopeMinimo.Enabled := True;
    EdtTopeMaximo.Enabled := True;
    EdtMarca.Enabled := True;
    EdtPresentacion.Enabled := True;
    DblGrupoInv.Enabled := True;
  end;
end;

procedure TFrmProductos.TvlListaProdDblClick(Sender: TObject);
begin
  PageProductos.ActivePage := TbsDatosPro;
end;

procedure TFrmProductos.TvlListaProdPRO_CLASEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlListaProd.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlListaProd.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlListaProd.DataController.DisplayTexts[Integer(AList.Items[0]), TvlListaProdPRO_CLASE.Index];
  end;
  if AText = '0' then
    AText := 'Producto'
  else if AText = '1' then
    AText := 'Servicio';
end;

procedure TFrmProductos.TvlListaProdPRO_TIPOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlListaProd.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlListaProd.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlListaProd.DataController.DisplayTexts[Integer(AList.Items[0]), TvlListaProdPRO_TIPO.Index];
  end;
  if AText = '0' then
    AText := 'Normal'
  else if AText = '1' then
    AText := 'Ensamblado';
end;

procedure TFrmProductos.Volver1Click(Sender: TObject);
begin
  PageProductos.ActivePage := TbsDatosPro;
end;

end.
