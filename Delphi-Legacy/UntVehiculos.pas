unit UntVehiculos;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxButtonEdit,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  IBX.IBCustomDataSet, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Datasnap.DBClient,
  Datasnap.Provider, IBX.IBUpdateSQL, IBX.IBQuery, IBX.IBDatabase, MidasLib;

type
  TFrmVehiculos = class(TForm)
    GridMarcas: TcxGrid;
    TvlMarcas: TcxGridDBTableView;
    TvlMarcasOpciones: TcxGridDBColumn;
    LvlMarcas: TcxGridLevel;
    GrdLinea: TcxGrid;
    TvlLinea: TcxGridDBTableView;
    TvlLineaOpciones: TcxGridDBColumn;
    LvlLinea: TcxGridLevel;
    dxStatusBar1: TdxStatusBar;
    DtsMarcas: TDataSource;
    QryMarcas: TIBQuery;
    UpdMarcas: TIBUpdateSQL;
    DspMarcas: TDataSetProvider;
    CdsMarcas: TClientDataSet;
    ActMarcas: TActionManager;
    actEliminarMarca: TAction;
    DtsLinea: TDataSource;
    QryLinea: TIBQuery;
    UpdLinea: TIBUpdateSQL;
    DspLinea: TDataSetProvider;
    CdsLinea: TClientDataSet;
    ActLinea: TActionManager;
    actEliminarLinea: TAction;
    QryMarcasMR_NOMBRE: TIBStringField;
    TvlMarcasMR_NOMBRE: TcxGridDBColumn;
    QryLineaMR_CODI: TIntegerField;
    QryLineaLI_NOMBRE: TIBStringField;
    CdsLineaMR_CODI: TIntegerField;
    CdsLineaLI_NOMBRE: TWideStringField;
    TvlLineaMR_CODI: TcxGridDBColumn;
    TvlLineaLI_NOMBRE: TcxGridDBColumn;
    CdsMarcasMR_NOMBRE: TWideStringField;
    QryMarcasMR_CODI: TIntegerField;
    CdsMarcasMR_CODI: TIntegerField;
    actAgregarMarca: TAction;
    actEditarMarca: TAction;
    PopMarca: TPopupMenu;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    actAgregarLinea: TAction;
    actEditarLinea: TAction;
    PopLinea: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    QryLineaLI_CODI: TIntegerField;
    CdsLineaLI_CODI: TIntegerField;
    TraVehiculos: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure actEliminarMarcaExecute(Sender: TObject);
    procedure actEliminarLineaExecute(Sender: TObject);
    procedure CdsMarcasNewRecord(DataSet: TDataSet);
    procedure actAgregarMarcaExecute(Sender: TObject);
    procedure actEditarMarcaExecute(Sender: TObject);
    procedure actAgregarLineaExecute(Sender: TObject);
    procedure actEditarLineaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsMarcasAfterPost(DataSet: TDataSet);
    procedure CdsMarcasBeforeDelete(DataSet: TDataSet);
    procedure CdsLineaAfterCancel(DataSet: TDataSet);
    procedure CdsMarcasAfterCancel(DataSet: TDataSet);
    procedure CdsLineaBeforeDelete(DataSet: TDataSet);
    procedure CdsLineaNewRecord(DataSet: TDataSet);
    procedure CdsMarcasBeforePost(DataSet: TDataSet);
    procedure CdsLineaBeforePost(DataSet: TDataSet);
    procedure CdsMarcasAfterOpen(DataSet: TDataSet);
    procedure CdsLineaAfterOpen(DataSet: TDataSet);
    procedure CdsMarcasBeforeEdit(DataSet: TDataSet);
    procedure CdsLineaBeforeEdit(DataSet: TDataSet);
    procedure CdsMarcasBeforeInsert(DataSet: TDataSet);
    procedure CdsLineaBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmVehiculos: TFrmVehiculos;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmVehiculos.actAgregarLineaExecute(Sender: TObject);
begin
  CdsLinea.Append;
end;

procedure TFrmVehiculos.actAgregarMarcaExecute(Sender: TObject);
begin
  CdsMarcas.Append;
end;

procedure TFrmVehiculos.actEditarLineaExecute(Sender: TObject);
begin
  CdsLinea.Edit;
end;

procedure TFrmVehiculos.actEditarMarcaExecute(Sender: TObject);
begin
  CdsMarcas.Edit;
end;

procedure TFrmVehiculos.actEliminarLineaExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsLinea.Delete;
      vCancelarxHijos := False;
      CdsLinea.ApplyUpdates(0);
      QryLinea.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
        raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmVehiculos.actEliminarMarcaExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsMarcas.Delete;
      vCancelarxHijos := False;
      CdsMarcas.ApplyUpdates(0);
      QryMarcas.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmVehiculos.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsMarcas.ApplyUpdates(0);
      CdsLinea.ApplyUpdates(0);
      QryMarcas.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmVehiculos.CdsLineaAfterCancel(DataSet: TDataSet);
begin
  CdsLinea.CancelUpdates;
end;

procedure TFrmVehiculos.CdsLineaAfterOpen(DataSet: TDataSet);
begin
  TvlLinea.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmVehiculos.CdsLineaBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(V.li_codi) QT FROM vhxcliente V');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN lineavh LI ON LI.li_codi = V.li_codi');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE LI.LI_CODI = :li_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('li_codi').AsInteger := CdsLineaLI_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
  begin
    ShowMessage('No se puede eliminar ' + CdsMarcasMR_NOMBRE.AsString + ' ' + CdsLineaLI_NOMBRE.AsString + ', tiene documentos asociados.');
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmVehiculos.CdsLineaBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmVehiculos.CdsLineaBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmVehiculos.CdsLineaBeforePost(DataSet: TDataSet);
var
  vCodLinea : Integer;
begin
  if CdsLinea.State = dsInsert then
  begin
    vCodLinea := DmGlobal.GetConsecutivo('LINEAVH', 'LI_CODI');
    if CdsLineaLI_CODI.AsInteger <> vCodLinea then
      CdsLineaLI_CODI.AsInteger := vCodLinea;
  end;
end;

procedure TFrmVehiculos.CdsLineaNewRecord(DataSet: TDataSet);
begin
  if not TraVehiculos.Active then
    TraVehiculos.StartTransaction;
  CdsLineaLI_CODI.AsInteger := DmGlobal.GetConsecutivo('LINEAVH', 'LI_CODI');
end;

procedure TFrmVehiculos.CdsMarcasAfterCancel(DataSet: TDataSet);
begin
  CdsMarcas.CancelUpdates;
end;

procedure TFrmVehiculos.CdsMarcasAfterOpen(DataSet: TDataSet);
begin
  TvlMarcas.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmVehiculos.CdsMarcasAfterPost(DataSet: TDataSet);
begin
  try
    CdsMarcas.ApplyUpdates(0);
    CdsLinea.ApplyUpdates(0);
    QryMarcas.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmVehiculos.CdsMarcasBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(LI_CODI) QT FROM LINEAVH ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE MR_CODI = :MR_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('MR_CODI').AsInteger := CdsLineaMR_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
  begin
    ShowMessage('Existen registros asociados a la marca ' + CdsMarcasMR_NOMBRE.AsString +
              ' debe eliminar primero las lineas de este marca.');
    CdsMarcas.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmVehiculos.CdsMarcasBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmVehiculos.CdsMarcasBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmVehiculos.CdsMarcasBeforePost(DataSet: TDataSet);
var
  vCodMarca : Integer;
begin
  if CdsMarcas.State = dsInsert then
  begin
    vCodMarca := DmGlobal.GetConsecutivo('MARCAVH', 'MR_CODI');
    if CdsMarcasMR_CODI.AsInteger <> vCodMarca then
      CdsMarcasMR_CODI.AsInteger := vCodMarca;
  end;
end;

procedure TFrmVehiculos.CdsMarcasNewRecord(DataSet: TDataSet);
begin
  if not TraVehiculos.Active then
    TraVehiculos.StartTransaction;
  CdsMarcasMR_CODI.AsInteger := DmGlobal.GetConsecutivo('MARCAVH', 'MR_CODI');
end;

class function TFrmVehiculos.Execute: Boolean;
var
  FrmVehiculos: TFrmVehiculos;
begin
  FrmVehiculos := TFrmVehiculos.Create(nil);
  try
    Result := FrmVehiculos.ShowModal = mrOk;
  finally
    FrmVehiculos.Free;
  end;
end;

procedure TFrmVehiculos.FormActivate(Sender: TObject);
begin
  CdsMarcas.Open;
  CdsLinea.Open;
  TvlMarcas.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlMarcas.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlMarcas.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
  TvlLinea.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlLinea.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlLinea.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmVehiculos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ((CdsMarcas.ChangeCount > 0) or (CdsLinea.ChangeCount > 0)) then
    CanClose;
  Action := caFree;
  FrmVehiculos := nil;
end;

end.
