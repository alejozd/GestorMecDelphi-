unit UntTiposDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, UntDmGlobal, cxContainer, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, cxButtons, cxButtonEdit,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxLabel,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxLocalization, Vcl.Grids, Vcl.DBGrids,
  IBX.IBDatabase, MidasLib;

type
  TFrmTiposDocumentos = class(TForm)
    GrdTiposDocs: TcxGrid;
    TvlTiposDocs: TcxGridDBTableView;
    LvlTiposDocs: TcxGridLevel;
    QryTiposDocs: TIBQuery;
    UpdTiposDocs: TIBUpdateSQL;
    CdsTiposDocs: TClientDataSet;
    DtsTiposDocs: TDataSource;
    DspTiposDocs: TDataSetProvider;
    QryTiposDocsTD_CODI: TIntegerField;
    QryTiposDocsTD_ABREVIADO: TIBStringField;
    CdsTiposDocsTD_CODI: TIntegerField;
    CdsTiposDocsTD_ABREVIADO: TWideStringField;
    TvlTiposDocsTD_ABREVIADO: TcxGridDBColumn;
    TvlTiposDocsTD_NOMBRE: TcxGridDBColumn;
    QryTiposDocsTD_NOMBRE: TIBStringField;
    CdsTiposDocsTD_NOMBRE: TWideStringField;
    TvlTiposDocsModificar: TcxGridDBColumn;
    ActionManager1: TActionManager;
    actEliminar: TAction;
    dxStatusBar1: TdxStatusBar;
    actAgregar: TAction;
    actEditar: TAction;
    PopTiposDocs: TPopupMenu;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    TraTiposDocs: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure actModificarExecute(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure actAgregarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsTiposDocsAfterPost(DataSet: TDataSet);
    procedure CdsTiposDocsAfterCancel(DataSet: TDataSet);
    procedure CdsTiposDocsNewRecord(DataSet: TDataSet);
    procedure CdsTiposDocsBeforeDelete(DataSet: TDataSet);
    procedure CdsTiposDocsBeforePost(DataSet: TDataSet);
    procedure CdsTiposDocsAfterOpen(DataSet: TDataSet);
    procedure CdsTiposDocsBeforeEdit(DataSet: TDataSet);
    procedure CdsTiposDocsBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmTiposDocumentos: TFrmTiposDocumentos;

implementation

{$R *.dfm}

procedure TFrmTiposDocumentos.actAgregarExecute(Sender: TObject);
begin
  CdsTiposDocs.Append;
end;

procedure TFrmTiposDocumentos.actEditarExecute(Sender: TObject);
begin
  CdsTiposDocs.Edit;
end;

procedure TFrmTiposDocumentos.actEliminarExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea borrar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsTiposDocs.Delete;
      vCancelarxHijos := False;
      CdsTiposDocs.ApplyUpdates(0);
      QryTiposDocs.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmTiposDocumentos.actModificarExecute(Sender: TObject);
begin
  CdsTiposDocs.Edit;
end;

procedure TFrmTiposDocumentos.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsTiposDocs.ApplyUpdates(0);
      QryTiposDocs.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsAfterCancel(DataSet: TDataSet);
begin
  CdsTiposDocs.CancelUpdates;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsAfterOpen(DataSet: TDataSet);
begin
  TvlTiposDocs.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsAfterPost(DataSet: TDataSet);
begin
  try
    CdsTiposDocs.ApplyUpdates(0);
    QryTiposDocs.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsBeforeDelete(DataSet: TDataSet);
var
  vTieneReg : Boolean;
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vTieneReg := False;
  vCancelarxHijos := False;
  //Clientes
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(C.cod_tipdo) QT FROM clientes C ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN tipdocumentos T ON T.td_codi = C.cod_tipdo ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE C.cod_tipdo = :td_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('td_codi').AsInteger := CdsTiposDocsTD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Empleados
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(E.cod_tipdo) QT FROM empleados E');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN tipdocumentos T ON T.td_codi = E.cod_tipdo ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE E.cod_tipdo = :td_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('td_codi').AsInteger := CdsTiposDocsTD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Proveedores
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(P.cod_tipdo) QT FROM PROVEEDORES P ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN tipdocumentos T ON T.td_codi = P.cod_tipdo ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE P.cod_tipdo = :td_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('td_codi').AsInteger := CdsTiposDocsTD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if vTieneReg then
  begin
    ShowMessage('Existen registros asociados al tipo de documento ' + CdsTiposDocsTD_NOMBRE.AsString +
              ', no es posible eliminarlo.');
    CdsTiposDocs.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsBeforePost(DataSet: TDataSet);
var
  vCodTipoDoc : Integer;
begin
  if CdsTiposDocs.State = dsInsert then
  begin
    vCodTipoDoc := DmGlobal.GetConsecutivo('TIPDOCUMENTOS', 'TD_CODI');
    if CdsTiposDocsTD_CODI.AsInteger <> vCodTipoDoc then
      CdsTiposDocsTD_CODI.AsInteger := vCodTipoDoc;
  end;
end;

procedure TFrmTiposDocumentos.CdsTiposDocsNewRecord(DataSet: TDataSet);
begin
  if not TraTiposDocs.Active then
    TraTiposDocs.StartTransaction;
  CdsTiposDocsTD_CODI.AsInteger := DmGlobal.GetConsecutivo('TIPDOCUMENTOS', 'TD_CODI');
end;

procedure TFrmTiposDocumentos.FormActivate(Sender: TObject);
begin
  if not TraTiposDocs.Active then
    TraTiposDocs.StartTransaction;
  CdsTiposDocs.Open;
  TvlTiposDocs.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlTiposDocs.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlTiposDocs.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmTiposDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if CdsTiposDocs.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmTiposDocumentos := nil;
end;

class function TFrmTiposDocumentos.Execute: Boolean;
var
  FrmTiposDocumentos: TFrmTiposDocumentos;
begin
  FrmTiposDocumentos := TFrmTiposDocumentos.Create(nil);
  try
    Result := FrmTiposDocumentos.ShowModal = mrOk;
  finally
    FrmTiposDocumentos.Free;
  end;
end;

end.
