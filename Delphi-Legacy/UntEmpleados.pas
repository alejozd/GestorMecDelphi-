unit UntEmpleados;

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
  cxNavigator, cxDBNavigator, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxGroupBox, Data.DB, IBX.IBCustomDataSet, Datasnap.Provider,
  Datasnap.DBClient, IBX.IBUpdateSQL, IBX.IBQuery, UntDmGlobal, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckBox, dxToggleSwitch,
  dxDBToggleSwitch, IBX.IBDatabase, MidasLib;

type
  TFrmEmpleados = class(TForm)
    QryEmpleados: TIBQuery;
    UpdEmpleados: TIBUpdateSQL;
    CdsEmpleados: TClientDataSet;
    DspEmpleados: TDataSetProvider;
    DtsEmpleados: TDataSource;
    QryEmpleadosEMP_CODI: TIntegerField;
    QryEmpleadosCOD_TIPDO: TIntegerField;
    QryEmpleadosEMP_NUMDOC: TIBStringField;
    QryEmpleadosEMP_TEL_MOVIL: TIBStringField;
    QryEmpleadosEMP_TEL_FIJO: TIBStringField;
    QryEmpleadosEMP_DIRECCION: TIBStringField;
    QryEmpleadosCG_CODI: TIntegerField;
    CdsEmpleadosEMP_CODI: TIntegerField;
    CdsEmpleadosCOD_TIPDO: TIntegerField;
    CdsEmpleadosEMP_NUMDOC: TWideStringField;
    CdsEmpleadosEMP_TEL_MOVIL: TWideStringField;
    CdsEmpleadosEMP_TEL_FIJO: TWideStringField;
    CdsEmpleadosEMP_DIRECCION: TWideStringField;
    CdsEmpleadosCG_CODI: TIntegerField;
    QryEmpleadosEMP_BARRIO: TIBStringField;
    CdsEmpleadosEMP_BARRIO: TWideStringField;
    DtsTipDocs: TDataSource;
    DtsCargos: TDataSource;
    GrdEmpleados: TcxGrid;
    TvlEmpleados: TcxGridDBTableView;
    LvlEmpleados: TcxGridLevel;
    TvlEmpleadosEMP_CODI: TcxGridDBColumn;
    TvlEmpleadosCOD_TIPDO: TcxGridDBColumn;
    TvlEmpleadosEMP_NUMDOC: TcxGridDBColumn;
    TvlEmpleadosEMP_TEL_MOVIL: TcxGridDBColumn;
    TvlEmpleadosEMP_TEL_FIJO: TcxGridDBColumn;
    TvlEmpleadosEMP_DIRECCION: TcxGridDBColumn;
    TvlEmpleadosEMP_BARRIO: TcxGridDBColumn;
    TvlEmpleadosCG_CODI: TcxGridDBColumn;
    dxStatusBar1: TdxStatusBar;
    pnlDatosEmp: TPanel;
    GrbBasicos: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtNumeroDoc: TcxDBTextEdit;
    EdtNombre: TcxDBTextEdit;
    DblTipDocu: TcxDBLookupComboBox;
    GrbAdicionales: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    EdtTelMovil: TcxDBTextEdit;
    EdtTelFijo: TcxDBTextEdit;
    EdtDireccion: TcxDBTextEdit;
    EdtBarrio: TcxDBTextEdit;
    NavEmpleados: TcxDBNavigator;
    QryEmpleadosEMP_ESTA: TIBStringField;
    CdsEmpleadosEMP_ESTA: TWideStringField;
    TvlEmpleadosEMP_ESTA: TcxGridDBColumn;
    TraEmpleados: TIBTransaction;
    TvlEmpleadosEMP_NOMBRE: TcxGridDBColumn;
    DblCargo: TcxDBLookupComboBox;
    Label8: TLabel;
    Label10: TLabel;
    TogEstado: TdxDBToggleSwitch;
    DblCiudad: TcxDBLookupComboBox;
    Label5: TLabel;
    DtsCiudad: TDataSource;
    QryEmpleadosCIU_CODI: TIntegerField;
    CdsEmpleadosCIU_CODI: TIntegerField;
    QryEmpleadosEMP_NOMBRE: TIBStringField;
    CdsEmpleadosEMP_NOMBRE: TWideStringField;
    procedure FormActivate(Sender: TObject);
    procedure CdsEmpleadosAfterPost(DataSet: TDataSet);
    procedure CdsEmpleadosAfterEdit(DataSet: TDataSet);
    procedure CdsEmpleadosBeforeInsert(DataSet: TDataSet);
    procedure CdsEmpleadosAfterCancel(DataSet: TDataSet);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsEmpleadosNewRecord(DataSet: TDataSet);
    procedure CdsEmpleadosBeforePost(DataSet: TDataSet);
    procedure CdsEmpleadosBeforeDelete(DataSet: TDataSet);
    procedure TvlEmpleadosEMP_ESTAGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure CdsEmpleadosAfterOpen(DataSet: TDataSet);
    procedure CdsEmpleadosBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    vCancelarxHijos : Boolean;
    procedure AccionGrupos(pAccion : Boolean);
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
    procedure CanClose;
  end;

var
  FrmEmpleados: TFrmEmpleados;

implementation

{$R *.dfm}

procedure TFrmEmpleados.CdsEmpleadosAfterCancel(DataSet: TDataSet);
begin
  AccionGrupos(False);
  CdsEmpleados.CancelUpdates
end;

procedure TFrmEmpleados.CdsEmpleadosAfterEdit(DataSet: TDataSet);
begin
  AccionGrupos(True);
end;

procedure TFrmEmpleados.CdsEmpleadosAfterOpen(DataSet: TDataSet);
begin
  TvlEmpleados.OptionsView.ColumnAutoWidth := True;
end;

procedure TFrmEmpleados.CdsEmpleadosAfterPost(DataSet: TDataSet);
begin
  try
    CdsEmpleados.ApplyUpdates(-1);
    QryEmpleados.Transaction.CommitRetaining;
    AccionGrupos(False);
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmEmpleados.CdsEmpleadosBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
  vCancelarxHijos := False;
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(OT.emp_codi) QT FROM ordentid OT ');
  DmGlobal.SqlbuscarHijos.SQL.Add('INNER JOIN empleados E ON E.emp_codi = OT.emp_codi ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE E.emp_codi = :emp_codi ');
  DmGlobal.SqlbuscarHijos.ParamByName('emp_codi').AsInteger := CdsEmpleadosEMP_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
  begin
    ShowMessage('Existen registros asociados al empleado ' + CdsEmpleadosEMP_NOMBRE.AsString +
              ', no es posible eliminarlo.');
    CdsEmpleados.CancelUpdates;
    vCancelarxHijos := True;
    Abort;
  end;
end;

procedure TFrmEmpleados.CdsEmpleadosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmEmpleados.CdsEmpleadosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
  AccionGrupos(True);
end;

procedure TFrmEmpleados.CdsEmpleadosBeforePost(DataSet: TDataSet);
var
  vCodEmpleados : Integer;
begin
  //validación de los campos
  if (DblTipDocu.EditingValue = Null) then
  begin
    Application.MessageBox('El Tipo de Documento no puede ser vacio, debe seleccionar uno.', 'Información', MB_ICONWARNING + MB_OK);
    DblTipDocu.SetFocus;
    Abort;
  end
  else if EdtNumeroDoc.Text = '' then
  begin
    Application.MessageBox('El Número de Documento no puede ser vacio, debe escribir uno.', 'Información', MB_ICONWARNING + MB_OK);
    EdtNumeroDoc.SetFocus;
    Abort;
  end
  else if EdtNombre.Text = '' then
  begin
    Application.MessageBox('El Nombre no puede ser vacio, debe escribir uno.', 'Información', MB_ICONWARNING + MB_OK);
    EdtNombre.SetFocus;
    Abort;
  end
  else if (DblCargo.EditingValue = Null) then
  begin
    Application.MessageBox('El Cargo no puede ser vacio, debe seleccionar uno.', 'Información', MB_ICONWARNING + MB_OK);
    DblCargo.SetFocus;
    Abort;
  end;
  if CdsEmpleados.State = dsInsert then
  begin
    vCodEmpleados := DmGlobal.GetConsecutivo('EMPLEADOS', 'EMP_CODI');
    if CdsEmpleadosEMP_CODI.AsInteger <> vCodEmpleados then
      CdsEmpleadosEMP_CODI.AsInteger := vCodEmpleados;
  end;
end;

procedure TFrmEmpleados.CdsEmpleadosNewRecord(DataSet: TDataSet);
begin
  if not TraEmpleados.Active then
    TraEmpleados.StartTransaction;
  CdsEmpleadosEMP_CODI.AsInteger := DmGlobal.GetConsecutivo('EMPLEADOS', 'EMP_CODI');
  CdsEmpleadosEMP_ESTA.AsString := 'A';
  DmGlobal.TblCargos.Close;
  DmGlobal.TblCargos.Open;
  DmGlobal.TblTipDocu.Close;
  DmGlobal.TblTipDocu.Open;
  DmGlobal.TblCiudad.Close;
  DmGlobal.TblCiudad.Open;
  DblTipDocu.SetFocus;
end;

class function TFrmEmpleados.Execute: Boolean;
var
  FrmEmpleados: TFrmEmpleados;
begin
  FrmEmpleados := TFrmEmpleados.Create(nil);
  try
    Result := FrmEmpleados.ShowModal = mrOk;
  finally
    FrmEmpleados.Free;
  end;
end;

procedure TFrmEmpleados.AccionGrupos(pAccion : Boolean);
begin
  GrbBasicos.Enabled := pAccion;
  GrbAdicionales.Enabled := pAccion;
end;

procedure TFrmEmpleados.FormActivate(Sender: TObject);
begin
//  CdsEmpleados.Open;
//  DmGlobal.TblTipDocu.Open;
//  DmGlobal.TblCargos.Open;
//  DmGlobal.TblCiudad.Open;
  NavEmpleados.Buttons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  NavEmpleados.Buttons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
  NavEmpleados.Buttons.Delete.Enabled := (DmGlobal.vGPermisos.rBorrar = 1);
end;

procedure TFrmEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdsEmpleados.ChangeCount > 0 then
    CanClose;
  Action := caFree;
  FrmEmpleados := nil;
end;

procedure TFrmEmpleados.FormHide(Sender: TObject);
begin
  if CdsEmpleados.ChangeCount > 0 then
    CanClose;
end;

procedure TFrmEmpleados.TvlEmpleadosEMP_ESTAGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlEmpleados.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlEmpleados.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlEmpleados.DataController.DisplayTexts[Integer(AList.Items[0]), TvlEmpleadosEMP_ESTA.Index];
  end;
  if AText = 'A' then
    AText := 'Activo'
  else if AText = 'I' then
    AText := 'Inactivo';
end;

procedure TFrmEmpleados.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsEmpleados.ApplyUpdates(0);
      QryEmpleados.Transaction.CommitRetaining;
      AccionGrupos(False);
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

end.


