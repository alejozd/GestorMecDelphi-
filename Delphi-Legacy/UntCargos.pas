unit UntCargos;

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
  IBX.IBCustomDataSet, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Datasnap.Provider, Datasnap.DBClient, IBX.IBUpdateSQL, IBX.IBQuery,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxLabel,
  Vcl.ExtCtrls, dxSkinsdxStatusBarPainter, dxStatusBar, IBX.IBDatabase, MidasLib;

type
  TFrmCargos = class(TForm)
    GrdCargos: TcxGrid;
    TvlCargos: TcxGridDBTableView;
    TvlCargosModificar: TcxGridDBColumn;
    LvlCargos: TcxGridLevel;
    QryCargos: TIBQuery;
    UpdCargos: TIBUpdateSQL;
    CdsCargos: TClientDataSet;
    DtsCargos: TDataSource;
    DspCargos: TDataSetProvider;
    ActionManager1: TActionManager;
    actAgregar: TAction;
    actEditar: TAction;
    actEliminar: TAction;
    PopCargos: TPopupMenu;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    QryCargosCG_CODI: TIntegerField;
    QryCargosCG_NOMBRE: TIBStringField;
    CdsCargosCG_CODI: TIntegerField;
    CdsCargosCG_NOMBRE: TWideStringField;
    dxStatusBar1: TdxStatusBar;
    TvlCargosCG_CODI: TcxGridDBColumn;
    TvlCargosCG_NOMBRE: TcxGridDBColumn;
    TraCargos: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure actAgregarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsCargosAfterPost(DataSet: TDataSet);
    procedure CdsCargosAfterCancel(DataSet: TDataSet);
    procedure CdsCargosNewRecord(DataSet: TDataSet);
    procedure CdsCargosBeforeDelete(DataSet: TDataSet);
    procedure CdsCargosBeforePost(DataSet: TDataSet);
    procedure CdsCargosAfterOpen(DataSet: TDataSet);
    procedure CdsCargosBeforeInsert(DataSet: TDataSet);
    procedure CdsCargosBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmCargos: TFrmCargos;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmCargos.actAgregarExecute(Sender: TObject);
begin
  CdsCargos.Append;
end;

procedure TFrmCargos.actEditarExecute(Sender: TObject);
begin
  CdsCargos.Edit;
end;

procedure TFrmCargos.actEliminarExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsCargos.Delete;
      vCancelarxHijos := False;
      CdsCargos.ApplyUpdates(0);
      QryCargos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmCargos.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsCargos.ApplyUpdates(0);
      QryCargos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmCargos.CdsCargosAfterCancel(DataSet: TDataSet);
begin
  CdsCargos.CancelUpdates;
end;

procedure TFrmCargos.CdsCargosAfterOpen(DataSet: TDataSet);
begin
  TvlCargos.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmCargos.CdsCargosAfterPost(DataSet: TDataSet);
begin
    try
      CdsCargos.ApplyUpdates(0);
      QryCargos.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
end;

procedure TFrmCargos.CdsCargosBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(E.cg_codi) QT FROM EMPLEADOS E ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN cargos C ON C.cg_codi = E.cg_codi');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE C.cg_codi = :cg_codi');
  DmGlobal.SqlbuscarHijos.ParamByName('cg_codi').AsInteger := CdsCargosCG_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
  begin
    ShowMessage('Existen registros asociados al cargo ' + CdsCargosCG_NOMBRE.AsString +
              ', no es posible eliminarlo.');
    CdsCargos.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmCargos.CdsCargosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmCargos.CdsCargosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmCargos.CdsCargosBeforePost(DataSet: TDataSet);
var
  vCodCargos : Integer;
begin
  if CdsCargos.State = dsInsert then
  begin
    vCodCargos := DmGlobal.GetConsecutivo('CARGOS', 'CG_CODI');
    if CdsCargosCG_CODI.AsInteger <> vCodCargos then
      CdsCargosCG_CODI.AsInteger := vCodCargos;
  end;
end;

procedure TFrmCargos.CdsCargosNewRecord(DataSet: TDataSet);
begin
  if not TraCargos.Active then
    TraCargos.StartTransaction;
  CdsCargosCG_CODI.AsInteger := DmGlobal.GetConsecutivo('CARGOS', 'CG_CODI');
end;

class function TFrmCargos.Execute: Boolean;
var
  FrmCargos: TFrmCargos;
begin
  FrmCargos := TFrmCargos.Create(nil);
  try
    Result := FrmCargos.ShowModal = mrOk;
  finally
    FrmCargos.Free;
  end;
end;

procedure TFrmCargos.FormActivate(Sender: TObject);
begin
  CdsCargos.Open;
  TvlCargos.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlCargos.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlCargos.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdsCargos.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmCargos := nil;
end;

end.
