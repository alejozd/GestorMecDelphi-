unit UntGruposInv;

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
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxButtonEdit, Vcl.Menus, IBX.IBDatabase, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Datasnap.Provider,
  Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, MidasLib;

type
  TFrmGruposInv = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    GrdGruposInv: TcxGrid;
    TvlGruposInv: TcxGridDBTableView;
    TvlGruposInvModificar: TcxGridDBColumn;
    LvlGruposInv: TcxGridLevel;
    QryGruposInv: TIBQuery;
    UpdGruposInv: TIBUpdateSQL;
    CdsGruposInv: TClientDataSet;
    DtsGruposInv: TDataSource;
    DspGruposInv: TDataSetProvider;
    ActionManager1: TActionManager;
    actAgregar: TAction;
    actEditar: TAction;
    actEliminar: TAction;
    TraGruposInv: TIBTransaction;
    PopGruposInv: TPopupMenu;
    popAgregar: TMenuItem;
    popEditar: TMenuItem;
    popEliminar: TMenuItem;
    QryGruposInvGRU_CODI: TIntegerField;
    QryGruposInvGRU_NOMBRE: TIBStringField;
    CdsGruposInvGRU_CODI: TIntegerField;
    CdsGruposInvGRU_NOMBRE: TWideStringField;
    TvlGruposInvGRU_NOMBRE: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure CdsGruposInvNewRecord(DataSet: TDataSet);
    procedure CdsGruposInvBeforePost(DataSet: TDataSet);
    procedure CdsGruposInvAfterCancel(DataSet: TDataSet);
    procedure CdsGruposInvAfterPost(DataSet: TDataSet);
    procedure CdsGruposInvAfterDelete(DataSet: TDataSet);
    procedure CdsGruposInvBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsGruposInvAfterOpen(DataSet: TDataSet);
    procedure CdsGruposInvBeforeEdit(DataSet: TDataSet);
    procedure CdsGruposInvBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmGruposInv: TFrmGruposInv;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmGruposInv.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsGruposInv.ApplyUpdates(0);
      QryGruposInv.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmGruposInv.CdsGruposInvAfterCancel(DataSet: TDataSet);
begin
  CdsGruposInv.CancelUpdates;
end;

procedure TFrmGruposInv.CdsGruposInvAfterDelete(DataSet: TDataSet);
begin
  try
    CdsGruposInv.ApplyUpdates(0);
    QryGruposInv.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmGruposInv.CdsGruposInvAfterOpen(DataSet: TDataSet);
begin
  TvlGruposInv.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmGruposInv.CdsGruposInvAfterPost(DataSet: TDataSet);
begin
  try
    CdsGruposInv.ApplyUpdates(0);
    QryGruposInv.Transaction.CommitRetaining;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmGruposInv.CdsGruposInvBeforeDelete(DataSet: TDataSet);
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
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(g.gru_codi) QT FROM gruposinv g');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN productos p ON p.gru_codi = g.gru_codi');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE g.gru_codi = :gru_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('gru_codi').AsInteger := CdsGruposInvGRU_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneReg := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if vTieneReg then
  begin
    ShowMessage('Existen registros asociados al grupo ' + CdsGruposInvGRU_NOMBRE.AsString +
              ', no es posible eliminarlo.');
    CdsGruposInv.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmGruposInv.CdsGruposInvBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmGruposInv.CdsGruposInvBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmGruposInv.CdsGruposInvBeforePost(DataSet: TDataSet);
var
  vCodGrupo : Integer;
begin
  if CdsGruposInv.State = dsInsert then
  begin
    vCodGrupo := DmGlobal.GetConsecutivo('GRUPOSINV', 'GRU_CODI');
    if CdsGruposInvGRU_CODI.AsInteger <> vCodGrupo then
      CdsGruposInvGRU_CODI.AsInteger := vCodGrupo;
  end;
end;

procedure TFrmGruposInv.CdsGruposInvNewRecord(DataSet: TDataSet);
begin
  if not TraGruposInv.Active then
    TraGruposInv.StartTransaction;
  CdsGruposInvGRU_CODI.AsInteger := DmGlobal.GetConsecutivo('GRUPOSINV', 'GRU_CODI');
end;

class function TFrmGruposInv.Execute: Boolean;
var
  FrmGruposInv: TFrmGruposInv;
begin
  FrmGruposInv := TFrmGruposInv.Create(nil);
  try
    Result := FrmGruposInv.ShowModal = mrOk;
  finally
    FrmGruposInv.Free;
  end;
end;

procedure TFrmGruposInv.FormActivate(Sender: TObject);
begin
  if not TraGruposInv.Active then
    TraGruposInv.StartTransaction;
  CdsGruposInv.Open;
  TvlGruposInv.NavigatorButtons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  TvlGruposInv.NavigatorButtons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  TvlGruposInv.NavigatorButtons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmGruposInv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdsGruposInv.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmGruposInv := nil;
end;

end.
