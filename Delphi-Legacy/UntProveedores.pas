unit UntProveedores;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxButtonEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxDBNavigator, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBEdit, cxPC, Datasnap.Provider,
  Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxBlobEdit, cxMemo, IBX.IBDatabase,
  MidasLib;

type
  TFrmProveedores = class(TForm)
    pnlSuperior: TPanel;
    cxLabel1: TcxLabel;
    BtnGuardar: TcxButton;
    BtnCancelar: TcxButton;
    BtnNuevo: TcxButton;
    BtnEliminar: TcxButton;
    BtnModificar: TcxButton;
    BtnListado: TcxButton;
    pageProveedores: TcxPageControl;
    tbsDatosPro: TcxTabSheet;
    pnlDatosCli: TPanel;
    GrbDtBasicos: TcxGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    EdtNumDoc: TcxDBTextEdit;
    EdtNombre: TcxDBTextEdit;
    DblTipDocu: TcxDBLookupComboBox;
    GrbDtContacto: TcxGroupBox;
    Label10: TLabel;
    Label7: TLabel;
    EdtDireccion: TcxDBTextEdit;
    EdtCorreoE: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    GrbBusqueda: TcxGroupBox;
    EdtBusqueda: TcxTextEdit;
    BtnBuscar: TcxButton;
    RgCriterio: TcxRadioGroup;
    pnlProveedores: TPanel;
    GridProveedor: TcxGrid;
    TvlProveedor: TcxGridDBTableView;
    TvlProveedorOpciones: TcxGridDBColumn;
    LvlProveedor: TcxGridLevel;
    TbsListaPro: TcxTabSheet;
    GridProveedores: TcxGrid;
    TvlProveedores: TcxGridDBTableView;
    LvlProveedores: TcxGridLevel;
    DtsProveedores: TDataSource;
    QryProveedores: TIBQuery;
    UpdProveedores: TIBUpdateSQL;
    CdsProveedores: TClientDataSet;
    DspProveedores: TDataSetProvider;
    DtsTipDocs: TDataSource;
    QryProveedoresPRV_CODI: TIntegerField;
    QryProveedoresCOD_TIPDO: TIntegerField;
    QryProveedoresPRV_NUMDOC: TIBStringField;
    QryProveedoresPRV_TEL_MOVIL: TIBStringField;
    QryProveedoresPRV_TEL_FIJO: TIBStringField;
    QryProveedoresPRV_CORREOE: TIBStringField;
    QryProveedoresPRV_FECHA_CREA: TDateTimeField;
    CdsProveedoresPRV_CODI: TIntegerField;
    CdsProveedoresCOD_TIPDO: TIntegerField;
    CdsProveedoresPRV_NUMDOC: TWideStringField;
    CdsProveedoresPRV_TEL_MOVIL: TWideStringField;
    CdsProveedoresPRV_TEL_FIJO: TWideStringField;
    CdsProveedoresPRV_CORREOE: TWideStringField;
    CdsProveedoresPRV_FECHA_CREA: TDateTimeField;
    GrPopListado: TcxGridPopupMenu;
    popListado: TPopupMenu;
    Volver1: TMenuItem;
    TvlProveedoresPRV_CODI: TcxGridDBColumn;
    TvlProveedoresCOD_TIPDO: TcxGridDBColumn;
    TvlProveedoresPRV_NUMDOC: TcxGridDBColumn;
    TvlProveedoresPRV_TEL_MOVIL: TcxGridDBColumn;
    TvlProveedoresPRV_TEL_FIJO: TcxGridDBColumn;
    TvlProveedoresPRV_DIRECCION: TcxGridDBColumn;
    TvlProveedoresPRV_CORREOE: TcxGridDBColumn;
    TvlProveedoresPRV_FECHA_CREA: TcxGridDBColumn;
    TvlProveedorPRV_CODI: TcxGridDBColumn;
    TvlProveedorCOD_TIPDO: TcxGridDBColumn;
    TvlProveedorPRV_NUMDOC: TcxGridDBColumn;
    TvlProveedorPRV_TEL_MOVIL: TcxGridDBColumn;
    TvlProveedorPRV_TEL_FIJO: TcxGridDBColumn;
    TvlProveedorPRV_DIRECCION: TcxGridDBColumn;
    TvlProveedorPRV_CORREOE: TcxGridDBColumn;
    TvlProveedorPRV_FECHA_CREA: TcxGridDBColumn;
    QryProveedoresPRV_CONTACTO: TIBStringField;
    QryProveedoresPRV_OBSERVACIONES: TIBStringField;
    CdsProveedoresPRV_CONTACTO: TWideStringField;
    CdsProveedoresPRV_OBSERVACIONES: TWideStringField;
    TvlProveedorPRV_CONTACTO: TcxGridDBColumn;
    TvlProveedorPRV_OBSERVACIONES: TcxGridDBColumn;
    TvlProveedoresPRV_CONTACTO: TcxGridDBColumn;
    TvlProveedoresPRV_OBSERVACIONES: TcxGridDBColumn;
    GrbObservaciones: TcxGroupBox;
    MemObservaciones: TcxDBMemo;
    Label1: TLabel;
    EdtContacto: TcxDBTextEdit;
    TraProveedor: TIBTransaction;
    Label4: TLabel;
    Label6: TLabel;
    EdtTelMovil: TcxDBTextEdit;
    EdtTelFijo: TcxDBTextEdit;
    TvlProveedorPRV_NOMBRE: TcxGridDBColumn;
    TvlProveedoresPRV_NOMBRE: TcxGridDBColumn;
    DblCiudad: TcxDBLookupComboBox;
    Label2: TLabel;
    QryProveedoresCIU_CODI: TIntegerField;
    CdsProveedoresCIU_CODI: TIntegerField;
    DtsCiudad: TDataSource;
    QryProveedoresPRV_NOMBRE: TIBStringField;
    QryProveedoresPRV_DIRECCION: TIBStringField;
    CdsProveedoresPRV_NOMBRE: TWideStringField;
    CdsProveedoresPRV_DIRECCION: TWideStringField;
    procedure BtnNuevoClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
    procedure BtnListadoClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure DtsProveedoresDataChange(Sender: TObject; Field: TField);
    procedure CdsProveedoresAfterCancel(DataSet: TDataSet);
    procedure CdsProveedoresAfterDelete(DataSet: TDataSet);
    procedure CdsProveedoresAfterEdit(DataSet: TDataSet);
    procedure CdsProveedoresAfterPost(DataSet: TDataSet);
    procedure CdsProveedoresBeforeInsert(DataSet: TDataSet);
    procedure CdsProveedoresNewRecord(DataSet: TDataSet);
    procedure Volver1Click(Sender: TObject);
    procedure TvlProveedoresDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure CdsProveedoresBeforePost(DataSet: TDataSet);
    procedure CdsProveedoresBeforeDelete(DataSet: TDataSet);
    procedure CdsProveedoresBeforeEdit(DataSet: TDataSet);
    procedure EdtBusquedaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean;
    procedure AccionGrupos(pAccion : Boolean);
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmProveedores: TFrmProveedores;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmProveedores.AccionGrupos(pAccion: Boolean);
begin
  GrbDtBasicos.Enabled := pAccion;
  GrbDtContacto.Enabled := pAccion;
  GrbObservaciones.Enabled := pAccion;
  GrbBusqueda.Enabled := not(pAccion);
end;

procedure TFrmProveedores.BtnBuscarClick(Sender: TObject);
begin
  if not TraProveedor.Active then
    TraProveedor.StartTransaction;
  CdsProveedores.Close;
  QryProveedores.Close;
  QryProveedores.SQL.Clear;
  QryProveedores.SQL.Add('SELECT * from PROVEEDORES WHERE');
  case RgCriterio.Properties.Items[RgCriterio.ItemIndex].Index of
    0 : QryProveedores.SQL.Add(' upper(PRV_NOMBRE) LIKE ''%' + EdtBusqueda.Text + '%''');
    1 : QryProveedores.SQL.Add(' upper(PRV_NUMDOC) LIKE ''%' + EdtBusqueda.Text + '%''');
  end;
  CdsProveedores.Open;
  if CdsProveedores.RecordCount > 0 then
  begin
    DmGlobal.TblTipDocu.Open;
    DmGlobal.TblCiudad.Open;
    AccionGrupos(False);
    BtnCancelar.Enabled := False;
    DmGlobal.TblCiudad.Open;
  end;
end;

procedure TFrmProveedores.BtnCancelarClick(Sender: TObject);
begin
  if CdsProveedores.State in [dsInsert, dsBrowse, dsEdit] then
    CdsProveedores.CancelUpdates;
  BtnNuevo.Enabled := True;
  BtnGuardar.Enabled := False;
  BtnEliminar.Enabled := True;
  BtnModificar.Enabled := True;
  BtnCancelar.Enabled := False;
end;

procedure TFrmProveedores.BtnEliminarClick(Sender: TObject);
begin
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(E.prv_codi) QT FROM entradasm E ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN proveedores P ON P.prv_codi = E.prv_codi ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE E.prv_codi = :PRV_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('PRV_CODI').AsInteger := CdsProveedoresPRV_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger = 0 then
  begin
    if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      try
        CdsProveedores.Delete;
        CdsProveedores.ApplyUpdates(0);
        QryProveedores.Transaction.CommitRetaining;
        BtnNuevo.Enabled := True;
        BtnGuardar.Enabled := False;
        BtnModificar.Enabled := True;
        BtnCancelar.Enabled := False;
        BtnEliminar.Enabled := False;
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
    ShowMessage('Existen registros asociados al proveedor ' + CdsProveedoresPRV_NOMBRE.AsString +
              ' , no es posible eliminarlo.');
    CdsProveedores.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmProveedores.BtnGuardarClick(Sender: TObject);
begin
  if Application.MessageBox('¿Desea guardar los cambios?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsProveedores.ApplyUpdates(0);
      QryProveedores.Transaction.CommitRetaining;
      AccionGrupos(False);
      BtnNuevo.Enabled := True;
      BtnEliminar.Enabled := True;
      BtnModificar.Enabled := True;
      BtnCancelar.Enabled := False;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmProveedores.BtnListadoClick(Sender: TObject);
begin
  if pageProveedores.ActivePageIndex = 0 then
  begin
    pageProveedores.ActivePage := TbsListaPro;
    BtnListado.Caption := 'Datos';
  end
  else if pageProveedores.ActivePageIndex = 1 then
  begin
    pageProveedores.ActivePage := tbsDatosPro;
    BtnListado.Caption := 'Listado';
  end;
end;

procedure TFrmProveedores.BtnModificarClick(Sender: TObject);
begin
  AccionGrupos(True);
  BtnModificar.Enabled := False;
  BtnNuevo.Enabled := False;
  BtnGuardar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnEliminar.Enabled := False;
end;

procedure TFrmProveedores.BtnNuevoClick(Sender: TObject);
begin
  if (CdsProveedores.State in [dsBrowse, dsInactive]) then
  begin
    CdsProveedores.Open;
    CdsProveedores.Append;
    DmGlobal.TblTipDocu.Open;
    DmGlobal.TblCiudad.Open;
    GrbBusqueda.Enabled := False;
    BtnNuevo.Enabled := False;
    BtnGuardar.Enabled := True;
    BtnEliminar.Enabled := False;
    BtnModificar.Enabled := False;
    BtnCancelar.Enabled := True;
    pageProveedores.ActivePage := tbsDatosPro;
    DblTipDocu.SetFocus;
  end;
end;

procedure TFrmProveedores.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsProveedores.ApplyUpdates(0);
      QryProveedores.Transaction.CommitRetaining;
      AccionGrupos(False);
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmProveedores.CdsProveedoresAfterCancel(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmProveedores.CdsProveedoresAfterDelete(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmProveedores.CdsProveedoresAfterEdit(DataSet: TDataSet);
begin
  AccionGrupos(True);
end;

procedure TFrmProveedores.CdsProveedoresAfterPost(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmProveedores.CdsProveedoresBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
end;

procedure TFrmProveedores.CdsProveedoresBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
  begin
    BtnCancelar.Click;
    Abort;
  end;
end;

procedure TFrmProveedores.CdsProveedoresBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
  AccionGrupos(True);
end;

procedure TFrmProveedores.CdsProveedoresBeforePost(DataSet: TDataSet);
var
  vCodProveedor : Integer;
begin
  if CdsProveedores.State = dsInsert then
  begin
    vCodProveedor := DmGlobal.GetConsecutivo('PROVEEDORES','PRV_CODI');
    if CdsProveedoresPRV_CODI.AsInteger <> vCodProveedor then
      CdsProveedoresPRV_CODI.AsInteger := vCodProveedor;
  end;
end;

procedure TFrmProveedores.CdsProveedoresNewRecord(DataSet: TDataSet);
begin
  if not TraProveedor.Active then
    TraProveedor.StartTransaction;
  CdsProveedoresPRV_FECHA_CREA.AsDateTime := Now;
  CdsProveedoresPRV_CODI.AsInteger := DmGlobal.GetConsecutivo('PROVEEDORES','PRV_CODI');
end;

procedure TFrmProveedores.DtsProveedoresDataChange(Sender: TObject;
  Field: TField);
begin
  BtnListado.Enabled := (CdsProveedores.RecordCount > 0);
  BtnModificar.Enabled := (CdsProveedores.RecordCount > 0);
  BtnEliminar.Enabled := (CdsProveedores.RecordCount > 0);
end;

procedure TFrmProveedores.EdtBusquedaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnBuscar.Click;
end;

class function TFrmProveedores.Execute: Boolean;
var
  FrmProveedores: TFrmProveedores;
begin
  FrmProveedores := TFrmProveedores.Create(nil);
  try
    Result := FrmProveedores.ShowModal = mrOk;
  finally
    FrmProveedores.Free;
  end;
end;

procedure TFrmProveedores.FormActivate(Sender: TObject);
begin
  pageProveedores.ActivePage := tbsDatosPro;
end;

procedure TFrmProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (CdsProveedores.ChangeCount > 0) then
    CanClose;
  Action := caFree;
  FrmProveedores := nil;
end;

procedure TFrmProveedores.FormHide(Sender: TObject);
begin
  if (CdsProveedores.ChangeCount > 0) then
    CanClose;
end;

procedure TFrmProveedores.TvlProveedoresDblClick(Sender: TObject);
begin
  pageProveedores.ActivePage := tbsDatosPro;
end;

procedure TFrmProveedores.Volver1Click(Sender: TObject);
begin
  pageProveedores.ActivePage := tbsDatosPro;
end;

end.
