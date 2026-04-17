unit UntCiuadesDep;

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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxButtonEdit, Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, UntDmGlobal, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, dxSkinsdxStatusBarPainter, dxStatusBar, Vcl.Grids, Vcl.DBGrids,
  cxContainer, cxLabel, IBX.IBDatabase, MidasLib;

type
  TFrmCiudadesDep = class(TForm)
    GrdCiudades: TcxGrid;
    TvlCiudades: TcxGridDBTableView;
    TvlCiudadesOpciones: TcxGridDBColumn;
    LvlCiudades: TcxGridLevel;
    GridDeptos: TcxGrid;
    TvlDeptos: TcxGridDBTableView;
    TvlDeptosOpciones: TcxGridDBColumn;
    LvlDeptos: TcxGridLevel;
    QryCiudades: TIBQuery;
    UpdCiudades: TIBUpdateSQL;
    CdsCiudades: TClientDataSet;
    DspCiudades: TDataSetProvider;
    DtsCiudades: TDataSource;
    DtsDeptos: TDataSource;
    QryDeptos: TIBQuery;
    UpdDeptos: TIBUpdateSQL;
    DspDeptos: TDataSetProvider;
    CdsDeptos: TClientDataSet;
    QryDeptosDEP_NOMBRE: TIBStringField;
    QryDeptosDEP_CODIGO_DIAN: TIBStringField;
    CdsDeptosDEP_NOMBRE: TWideStringField;
    CdsDeptosDEP_CODIGO_DIAN: TWideStringField;
    TvlDeptosDEP_NOMBRE: TcxGridDBColumn;
    TvlDeptosDEP_CODIGO_DIAN: TcxGridDBColumn;
    QryCiudadesDEP_CODI: TIntegerField;
    QryCiudadesCIU_NOMBRE: TIBStringField;
    QryCiudadesCIU_CODIGO_DIAN: TIBStringField;
    CdsCiudadesDEP_CODI: TIntegerField;
    CdsCiudadesCIU_NOMBRE: TWideStringField;
    CdsCiudadesCIU_CODIGO_DIAN: TWideStringField;
    TvlCiudadesDEP_CODI: TcxGridDBColumn;
    TvlCiudadesCIU_NOMBRE: TcxGridDBColumn;
    TvlCiudadesCIU_CODIGO_DIAN: TcxGridDBColumn;
    ActDeptos: TActionManager;
    actEliminarDepto: TAction;
    ActCiudades: TActionManager;
    actEliminarCiud: TAction;
    dxStatusBar1: TdxStatusBar;
    QryDeptosDEP_CODI: TIntegerField;
    CdsDeptosDEP_CODI: TIntegerField;
    actAgregarDepto: TAction;
    actEditarDepto: TAction;
    PopDeptos: TPopupMenu;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    actAgregarCiud: TAction;
    actEditarCiud: TAction;
    PopCiudades: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    QryCiudadesCIU_CODI: TIntegerField;
    CdsCiudadesCIU_CODI: TIntegerField;
    TraCiudades: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure actEliminarDeptoExecute(Sender: TObject);
    procedure actEliminarCiudExecute(Sender: TObject);
    procedure actAgregarDeptoExecute(Sender: TObject);
    procedure actEditarDeptoExecute(Sender: TObject);
    procedure actAgregarCiudExecute(Sender: TObject);
    procedure actEditarCiudExecute(Sender: TObject);
    procedure CdsDeptosNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsDeptosAfterPost(DataSet: TDataSet);
    procedure CdsDeptosBeforeDelete(DataSet: TDataSet);
    procedure CdsCiudadesAfterCancel(DataSet: TDataSet);
    procedure CdsDeptosAfterCancel(DataSet: TDataSet);
    procedure CdsCiudadesNewRecord(DataSet: TDataSet);
    procedure CdsDeptosBeforePost(DataSet: TDataSet);
    procedure CdsCiudadesBeforePost(DataSet: TDataSet);
    procedure CdsCiudadesBeforeDelete(DataSet: TDataSet);
    procedure CdsDeptosAfterOpen(DataSet: TDataSet);
    procedure CdsCiudadesAfterOpen(DataSet: TDataSet);
    procedure CdsDeptosBeforeEdit(DataSet: TDataSet);
    procedure CdsDeptosBeforeInsert(DataSet: TDataSet);
    procedure CdsCiudadesBeforeEdit(DataSet: TDataSet);
    procedure CdsCiudadesBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmCiudadesDep: TFrmCiudadesDep;

implementation

{$R *.dfm}

procedure TFrmCiudadesDep.actAgregarCiudExecute(Sender: TObject);
begin
  CdsCiudades.Append;
end;

procedure TFrmCiudadesDep.actAgregarDeptoExecute(Sender: TObject);
begin
  CdsDeptos.Append;
end;

procedure TFrmCiudadesDep.actEditarCiudExecute(Sender: TObject);
begin
  CdsCiudades.Edit;
end;

procedure TFrmCiudadesDep.actEditarDeptoExecute(Sender: TObject);
begin
  CdsDeptos.Edit;
end;

procedure TFrmCiudadesDep.actEliminarCiudExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
    CdsCiudades.Delete;
    vCancelarxHijos := False;
    CdsCiudades.ApplyUpdates(0);
    QryCiudades.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmCiudadesDep.actEliminarDeptoExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsDeptos.Delete;
      vCancelarxHijos := False;
      CdsDeptos.ApplyUpdates(0);
      QryDeptos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmCiudadesDep.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsDeptos.ApplyUpdates(0);
      CdsCiudades.ApplyUpdates(0);
      QryDeptos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmCiudadesDep.CdsCiudadesAfterCancel(DataSet: TDataSet);
begin
  CdsCiudades.CancelUpdates;
end;

procedure TFrmCiudadesDep.CdsCiudadesAfterOpen(DataSet: TDataSet);
begin
  TvlCiudades.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmCiudadesDep.CdsDeptosAfterCancel(DataSet: TDataSet);
begin
  CdsDeptos.CancelUpdates;
end;

procedure TFrmCiudadesDep.CdsDeptosAfterOpen(DataSet: TDataSet);
begin
  TvlDeptos.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmCiudadesDep.CdsDeptosAfterPost(DataSet: TDataSet);
begin
  try
    CdsDeptos.ApplyUpdates(0);
    CdsCiudades.ApplyUpdates(0);
    QryDeptos.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmCiudadesDep.CdsDeptosBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(CIU_CODI) QT FROM CIUDADES ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE DEP_CODI = :DEP_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('DEP_CODI').AsInteger := CdsCiudadesDEP_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
  begin
    ShowMessage('Existen registros asociados al departamento ' + CdsDeptosDEP_NOMBRE.AsString +
              ' debe eliminar primero las ciudades de este departamento.');
    CdsDeptos.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmCiudadesDep.CdsDeptosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmCiudadesDep.CdsDeptosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmCiudadesDep.CdsDeptosBeforePost(DataSet: TDataSet);
var
  vCodDep : Integer;
begin
  if CdsDeptos.State = dsInsert then
  begin
    vCodDep := DmGlobal.GetConsecutivo('DEPARTAMENTOS', 'DEP_CODI');
    if CdsDeptosDEP_CODI.AsInteger <> vCodDep then
      CdsDeptosDEP_CODI.AsInteger := vCodDep;
  end;
end;

procedure TFrmCiudadesDep.CdsCiudadesBeforeDelete(DataSet: TDataSet);
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
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(CLI.ciu_codi) QT ');
  DmGlobal.SqlbuscarHijos.SQL.Add('FROM CLIENTES CLI ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE CLI.ciu_codi = :CIU_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('CIU_CODI').AsInteger := CdsCiudadesCIU_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Proveedores
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(p.ciu_codi) QT ');
  DmGlobal.SqlbuscarHijos.SQL.Add('FROM proveedores p');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE p.ciu_codi = :CIU_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('CIU_CODI').AsInteger := CdsCiudadesCIU_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Empleados
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(e.ciu_codi) QT ');
  DmGlobal.SqlbuscarHijos.SQL.Add('FROM empleados e');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE e.ciu_codi = :CIU_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('CIU_CODI').AsInteger := CdsCiudadesCIU_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if vTieneReg then
  begin
    ShowMessage('Existen registros asociados a la ciudad ' + CdsCiudadesCIU_NOMBRE.AsString);
    CdsCiudades.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmCiudadesDep.CdsCiudadesBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmCiudadesDep.CdsCiudadesBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmCiudadesDep.CdsCiudadesBeforePost(DataSet: TDataSet);
var
  vCodCiu : Integer;
begin
  if CdsCiudades.State = dsInsert then
  begin
    vCodCiu := DmGlobal.GetConsecutivo('CIUDADES', 'CIU_CODI');
    if CdsCiudadesCIU_CODI.AsInteger <> vCodCiu then
      CdsCiudadesCIU_CODI.AsInteger := vCodCiu;
  end;
end;

procedure TFrmCiudadesDep.CdsCiudadesNewRecord(DataSet: TDataSet);
begin
  if not TraCiudades.Active then
    TraCiudades.StartTransaction;
  CdsCiudadesCIU_CODI.AsInteger := DmGlobal.GetConsecutivo('CIUDADES', 'CIU_CODI');
end;

procedure TFrmCiudadesDep.CdsDeptosNewRecord(DataSet: TDataSet);
begin
  if not TraCiudades.Active then
    TraCiudades.StartTransaction;
  CdsDeptosDEP_CODI.AsInteger := DmGlobal.GetConsecutivo('DEPARTAMENTOS', 'DEP_CODI');
end;

class function TFrmCiudadesDep.Execute: Boolean;
var
  FrmTiposDocumentos: TFrmCiudadesDep;
begin
  FrmTiposDocumentos := TFrmCiudadesDep.Create(nil);
  try
    Result := FrmCiudadesDep.ShowModal = mrOk;
  finally
    FrmCiudadesDep.Free;
  end;
end;

procedure TFrmCiudadesDep.FormActivate(Sender: TObject);
begin
  CdsDeptos.Open;
  CdsCiudades.Open;
  TvlCiudades.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlCiudades.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlCiudades.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
  TvlDeptos.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlDeptos.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlDeptos.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmCiudadesDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ((CdsDeptos.ChangeCount > 0) or (CdsCiudades.ChangeCount > 0)) then
    CanClose;
  Action := caFree;
  FrmCiudadesDep := nil;
end;

end.
