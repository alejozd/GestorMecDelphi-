unit UntBodegas;

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
  Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, System.ImageList, Vcl.ImgList,
  Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBUpdateSQL,
  IBX.IBQuery, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, IBX.IBDatabase,
  MidasLib;

type
  TFrmBodegas = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    GridBodegas: TcxGrid;
    TvlBodegas: TcxGridDBTableView;
    TvlBodegasOpciones: TcxGridDBColumn;
    LvlBodegas: TcxGridLevel;
    dxStatusBar1: TdxStatusBar;
    QryBodegas: TIBQuery;
    UpdBodegas: TIBUpdateSQL;
    CdsBodegas: TClientDataSet;
    DspBodegas: TDataSetProvider;
    DtsBodegas: TDataSource;
    ActBodegas: TActionManager;
    actEliminar: TAction;
    QryBodegasBOD_NOMBRE: TIBStringField;
    QryBodegasBOD_UBICACION: TIBStringField;
    CdsBodegasBOD_NOMBRE: TWideStringField;
    CdsBodegasBOD_UBICACION: TWideStringField;
    TvlBodegasBOD_NOMBRE: TcxGridDBColumn;
    TvlBodegasBOD_UBICACION: TcxGridDBColumn;
    QryBodegasBOD_CODI: TIntegerField;
    CdsBodegasBOD_CODI: TIntegerField;
    PopBodegas: TPopupMenu;
    actAgregar: TAction;
    actEditar: TAction;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    TraBodegas: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure actAgregarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsBodegasAfterPost(DataSet: TDataSet);
    procedure CdsBodegasAfterCancel(DataSet: TDataSet);
    procedure CdsBodegasNewRecord(DataSet: TDataSet);
    procedure CdsBodegasBeforeDelete(DataSet: TDataSet);
    procedure CdsBodegasBeforePost(DataSet: TDataSet);
    procedure CdsBodegasAfterOpen(DataSet: TDataSet);
    procedure CdsBodegasBeforeEdit(DataSet: TDataSet);
    procedure CdsBodegasBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmBodegas: TFrmBodegas;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmBodegas.actAgregarExecute(Sender: TObject);
begin
  CdsBodegas.Append;
end;

procedure TFrmBodegas.actEditarExecute(Sender: TObject);
begin
  CdsBodegas.Edit;
end;

procedure TFrmBodegas.actEliminarExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsBodegas.Delete;
      vCancelarxHijos := False;
      CdsBodegas.ApplyUpdates(0);
      QryBodegas.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmBodegas.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsBodegas.ApplyUpdates(0);
      QryBodegas.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmBodegas.CdsBodegasAfterCancel(DataSet: TDataSet);
begin
  CdsBodegas.CancelUpdates;
end;

procedure TFrmBodegas.CdsBodegasAfterOpen(DataSet: TDataSet);
begin
  TvlBodegas.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmBodegas.CdsBodegasAfterPost(DataSet: TDataSet);
begin
  try
    CdsBodegas.ApplyUpdates(0);
    QryBodegas.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error guardando el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmBodegas.CdsBodegasBeforeDelete(DataSet: TDataSet);
var
  vTieneReg : Boolean;
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vTieneReg := False;
  //Stock
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(S.bod_codi) QT FROM stock s ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN BODEGAS B ON B.bod_codi = S.bod_codi ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE b.bod_codi = :bod_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('bod_codi').AsInteger := CdsBodegasBOD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Ordenes
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(od.bod_codi) QT FROM ordentid od ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN BODEGAS B ON B.bod_codi = od.bod_codi ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE b.bod_codi = :bod_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('bod_codi').AsInteger := CdsBodegasBOD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Entrdas
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(ed.bod_codi) QT FROM entradadet ed');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN BODEGAS B ON B.bod_codi = ed.bod_codi ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE b.bod_codi = :bod_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('bod_codi').AsInteger := CdsBodegasBOD_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if  vTieneReg then
  begin
    ShowMessage('Existen registros asociados con la bodega ' + CdsBodegasBOD_NOMBRE.AsString +
              ', no es posible eliminarla.');
    CdsBodegas.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmBodegas.CdsBodegasBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmBodegas.CdsBodegasBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmBodegas.CdsBodegasBeforePost(DataSet: TDataSet);
var
  vCodBodega : Integer;
begin
  if CdsBodegas.State = dsInsert then
  begin
    vCodBodega := DmGlobal.GetConsecutivo('BODEGAS', 'BOD_CODI');
    if CdsBodegasBOD_CODI.AsInteger <> vCodBodega then
      CdsBodegasBOD_CODI.AsInteger := vCodBodega;
  end;
end;

procedure TFrmBodegas.CdsBodegasNewRecord(DataSet: TDataSet);
begin
  if not TraBodegas.Active then
    TraBodegas.StartTransaction;
  CdsBodegasBOD_CODI.AsInteger := DmGlobal.GetConsecutivo('BODEGAS', 'BOD_CODI');
end;

class function TFrmBodegas.Execute: Boolean;
var
  FrmBodegas: TFrmBodegas;
begin
  FrmBodegas := TFrmBodegas.Create(nil);
  try
    Result := FrmBodegas.ShowModal = mrOk;
  finally
    FrmBodegas.Free;
  end;
end;

procedure TFrmBodegas.FormActivate(Sender: TObject);
begin
  CdsBodegas.Open;
  TvlBodegas.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlBodegas.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlBodegas.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmBodegas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdsBodegas.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmBodegas := nil;
end;

end.
