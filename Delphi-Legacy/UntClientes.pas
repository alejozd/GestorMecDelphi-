unit UntClientes;

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
  Datasnap.Provider, Data.DB, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, cxGroupBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.DBCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, System.ImageList, Vcl.ImgList,
  dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  dxDBDateTimeWheelPicker, cxCalendar, cxRadioGroup, cxDBNavigator, IBX.IBTable,
  cxCurrencyEdit, dxBarBuiltInMenu, cxPC, cxGridCustomPopupMenu, cxGridPopupMenu,
  IBX.IBDatabase, MidasLib;

type
  TFrmClientes = class(TForm)
    pnlSuperior: TPanel;
    cxLabel1: TcxLabel;
    BtnGuardar: TcxButton;
    BtnCancelar: TcxButton;
    BtnNuevo: TcxButton;
    BtnEliminar: TcxButton;
    DtsClientes: TDataSource;
    QryClientes: TIBQuery;
    UpdClientes: TIBUpdateSQL;
    CdsClientes: TClientDataSet;
    DspClientes: TDataSetProvider;
    QryClientesCLI_CODI: TIntegerField;
    QryClientesCOD_TIPDO: TIntegerField;
    QryClientesCLI_NUMDOC: TIBStringField;
    QryClientesCLI_TEL_MOVIL: TIBStringField;
    QryClientesCLI_TEL_FIJO: TIBStringField;
    QryClientesCLI_CORREOE: TIBStringField;
    QryClientesCLI_FECHA_CREA: TDateTimeField;
    CdsClientesCLI_CODI: TIntegerField;
    CdsClientesCOD_TIPDO: TIntegerField;
    CdsClientesCLI_NUMDOC: TWideStringField;
    CdsClientesCLI_TEL_MOVIL: TWideStringField;
    CdsClientesCLI_TEL_FIJO: TWideStringField;
    CdsClientesCLI_CORREOE: TWideStringField;
    CdsClientesCLI_FECHA_CREA: TDateTimeField;
    DtsTipDocs: TDataSource;
    DtsLinea: TDataSource;
    QryVeXCLi: TIBQuery;
    QryVeXCLiVXC_CODI: TIntegerField;
    QryVeXCLiCLI_CODI: TIntegerField;
    QryVeXCLiVXC_PLACA: TIBStringField;
    QryVeXCLiMR_CODI: TIntegerField;
    QryVeXCLiLI_CODI: TIntegerField;
    QryVeXCLiVXC_COLOR: TIBStringField;
    UpdVeXCli: TIBUpdateSQL;
    CdsVeXCli: TClientDataSet;
    DtsVeXCli: TDataSource;
    DspVeXCli: TDataSetProvider;
    CdsVeXCliVXC_CODI: TIntegerField;
    CdsVeXCliCLI_CODI: TIntegerField;
    CdsVeXCliVXC_PLACA: TWideStringField;
    CdsVeXCliMR_CODI: TIntegerField;
    CdsVeXCliLI_CODI: TIntegerField;
    CdsVeXCliVXC_COLOR: TWideStringField;
    ActVeXCli: TActionManager;
    actEliminar: TAction;
    actAgregar: TAction;
    actEditar: TAction;
    QryVeXCLiVXC_KILO_INI: TFloatField;
    QryVeXCLiVXC_KILO_ACT: TFloatField;
    CdsVeXCliVXC_KILO_INI: TFloatField;
    CdsVeXCliVXC_KILO_ACT: TFloatField;
    QryVeXCLiVXC_MODELO: TIntegerField;
    CdsVeXCliVXC_MODELO: TIntegerField;
    BtnModificar: TcxButton;
    DtsLineaVH: TDataSource;
    DtsMarcaVH: TDataSource;
    TblLinea: TIBTable;
    cxDBNavigator3: TcxDBNavigator;
    pageClientes: TcxPageControl;
    tbsDatosCli: TcxTabSheet;
    TbsListaCli: TcxTabSheet;
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
    pnlVehiculos: TPanel;
    pnlAddCarro: TPanel;
    LblVxCli: TcxLabel;
    GridCliCar: TcxGrid;
    TvlCliCar: TcxGridDBTableView;
    TvlCliCarVXC_PLACA: TcxGridDBColumn;
    TvlCliCarMR_CODI: TcxGridDBColumn;
    TvlCliCarLI_CODI: TcxGridDBColumn;
    TvlCliCarVXC_KILO_INI: TcxGridDBColumn;
    TvlCliCarVXC_KILO_ACT: TcxGridDBColumn;
    TvlCliCarVXC_COLOR: TcxGridDBColumn;
    TvlCliCarVXC_MODELO: TcxGridDBColumn;
    TvlCliCarOpciones: TcxGridDBColumn;
    LvlCliCar: TcxGridLevel;
    GridClientes: TcxGrid;
    TvlClientes: TcxGridDBTableView;
    LvlClientes: TcxGridLevel;
    TvlClientesCLI_CODI: TcxGridDBColumn;
    TvlClientesCOD_TIPDO: TcxGridDBColumn;
    TvlClientesCLI_NUMDOC: TcxGridDBColumn;
    TvlClientesCLI_TEL_MOVIL: TcxGridDBColumn;
    TvlClientesCLI_TEL_FIJO: TcxGridDBColumn;
    TvlClientesCLI_DIRECCION: TcxGridDBColumn;
    TvlClientesCLI_CORREOE: TcxGridDBColumn;
    TvlClientesCLI_FECHA_CREA: TcxGridDBColumn;
    BtnListado: TcxButton;
    popListado: TPopupMenu;
    Volver1: TMenuItem;
    GrPopListado: TcxGridPopupMenu;
    TraClientes: TIBTransaction;
    Label4: TLabel;
    Label6: TLabel;
    EdtTelMovil: TcxDBTextEdit;
    EdtTelFijo: TcxDBTextEdit;
    TvlClientesCLI_NOMBRE: TcxGridDBColumn;
    DblCiudad: TcxDBLookupComboBox;
    QryClientesCIU_CODI: TIntegerField;
    CdsClientesCIU_CODI: TIntegerField;
    Label1: TLabel;
    DtsCiudad: TDataSource;
    QryClientesCLI_NOMBRE: TIBStringField;
    CdsClientesCLI_NOMBRE: TWideStringField;
    QryClientesCLI_DIRECCION: TIBStringField;
    CdsClientesCLI_DIRECCION: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNuevoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure CdsClientesBeforeInsert(DataSet: TDataSet);
    procedure CdsClientesAfterPost(DataSet: TDataSet);
    procedure CdsClientesAfterEdit(DataSet: TDataSet);
    procedure CdsClientesAfterDelete(DataSet: TDataSet);
    procedure CdsClientesAfterCancel(DataSet: TDataSet);
    procedure CdsVeXCliNewRecord(DataSet: TDataSet);
    procedure EdtModeloKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCorreoEExit(Sender: TObject);
    procedure CdsClientesNewRecord(DataSet: TDataSet);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BtnModificarClick(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure CdsVeXCliBeforeDelete(DataSet: TDataSet);
    procedure CdsClientesAfterScroll(DataSet: TDataSet);
    procedure TvlCliCarLI_CODIPropertiesPopup(Sender: TObject);
    procedure TvlClientesDblClick(Sender: TObject);
    procedure DtsClientesDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure BtnListadoClick(Sender: TObject);
    procedure Volver1Click(Sender: TObject);
    procedure CdsClientesBeforePost(DataSet: TDataSet);
    procedure CdsVeXCliBeforePost(DataSet: TDataSet);
    procedure CdsClientesBeforeDelete(DataSet: TDataSet);
    procedure CdsClientesBeforeEdit(DataSet: TDataSet);
    procedure CdsVeXCliBeforeEdit(DataSet: TDataSet);
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
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmClientes.AccionGrupos(pAccion: Boolean);
begin
  GrbDtBasicos.Enabled := pAccion;
  GrbDtContacto.Enabled := pAccion;
//  grbAddCar.Enabled := pAccion;

  //GridCliCar.Enabled := pAccion;
  TvlCliCar.OptionsData.Appending := pAccion;
  TvlCliCar.OptionsData.Deleting := pAccion;
  TvlCliCar.OptionsData.Editing := pAccion;
  GrbBusqueda.Enabled := not(pAccion);
end;

procedure TFrmClientes.actEliminarExecute(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsVeXCli.Delete;
      vCancelarxHijos := False;
      CdsVeXCli.ApplyUpdates(0);
      QryClientes.Transaction.CommitRetaining;
    except
      on E: Exception do
      begin
        if not vCancelarxHijos then  //Tiene registro hijos y no muestra el mensaje de abort
          raise Exception.Create('Error eliminando el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmClientes.CdsVeXCliBeforeDelete(DataSet: TDataSet);
begin
  if CdsClientes.State in [dsEdit, dsInsert] then
  begin
    vCancelarxHijos := False;
    DmGlobal.SqlbuscarHijos.Close;
    DmGlobal.SqlbuscarHijos.SQL.Clear;
    DmGlobal.SqlbuscarHijos.SQL.Add('SELECT count(vxc_codi) QT ');
    DmGlobal.SqlbuscarHijos.SQL.Add('FROM ordentim where ordentim.vxc_codi = :vxc_codi');
    DmGlobal.SqlbuscarHijos.ParamByName('vxc_codi').AsInteger := CdsVeXCliVXC_CODI.AsInteger;
    DmGlobal.SqlbuscarHijos.ExecQuery;
    if DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0 then
    begin
      ShowMessage('Existen registros relacionados para el vehiculo ' + DmGlobal.TblMarcaVHMR_NOMBRE.AsString +
        ' ' + DmGlobal.TblLineaVHLI_NOMBRE.AsString + ', verifique por favor.');
      vCancelarxHijos := True;
      Abort;
    end;
  end
  else
    Abort;
end;

procedure TFrmClientes.CdsVeXCliBeforeEdit(DataSet: TDataSet);
begin
//  if CdsClientes.State = dsBrowse then
//    Abort;
end;

procedure TFrmClientes.CdsVeXCliBeforePost(DataSet: TDataSet);
var
  vCodVexCli : Integer;
begin
  if CdsVeXCli.State = dsInsert then
  begin
    if Length(CdsVeXCliVXC_PLACA.AsString) = 0 then
      CdsVeXCli.CancelUpdates
    else
    begin
      vCodVexCli := DmGlobal.GetConsecutivo('VHXCLIENTE','vxc_codi');
      if CdsVeXCliVXC_CODI.AsInteger <> vCodVexCli then
        CdsVeXCliVXC_CODI.AsInteger := vCodVexCli;
    end;
  end;
end;

procedure TFrmClientes.BtnBuscarClick(Sender: TObject);
begin
  if not TraClientes.Active then
    TraClientes.StartTransaction;
  CdsClientes.Close;
  QryClientes.Close;
  QryClientes.SQL.Clear;
  QryClientes.SQL.Add('SELECT * from CLIENTES WHERE ');
  case RgCriterio.Properties.Items[RgCriterio.ItemIndex].Index of
    0 : QryClientes.SQL.Add(' upper(CLI_NUMDOC) LIKE ''%' + EdtBusqueda.Text + '%''');
    1 : QryClientes.SQL.Add(' upper(CLI_NOMBRE) LIKE ''%' + EdtBusqueda.Text + '%''');
  end;
  CdsClientes.Open;
  if CdsClientes.RecordCount > 0 then
  begin
//    QryVeXCLi.ParamByName('CLI_CODI').AsInteger := CdsClientesCLI_CODI.AsInteger;
    CdsVeXCli.Open;
    DmGlobal.TblTipDocu.Open;
    DmGlobal.TblMarcaVH.Open;
    DmGlobal.TblLineaVH.Open;
    DmGlobal.TblCiudad.Open;
    TblLinea.Open;
    AccionGrupos(False);
    BtnCancelar.Enabled := False;
  end;
end;

procedure TFrmClientes.BtnCancelarClick(Sender: TObject);
begin
  if CdsClientes.State in [dsInsert, dsBrowse, dsEdit] then
    CdsClientes.CancelUpdates;
  if CdsVeXCli.State in [dsInsert, dsBrowse, dsEdit] then
    CdsVeXCli.CancelUpdates;
  BtnNuevo.Enabled := True;
  BtnGuardar.Enabled := False;
  BtnEliminar.Enabled := True;
  BtnModificar.Enabled := True;
  BtnCancelar.Enabled := False;
end;

procedure TFrmClientes.BtnEliminarClick(Sender: TObject);
var
  vTieneVehiculos, vPuedeBorrar : Boolean;
  vTextoHijos : string;
begin
  vTieneVehiculos := False;
  vPuedeBorrar := False;
  //Se busca si tiene vehiculos asociados
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(CLI_CODI) QT FROM VHXCLIENTE ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE CLI_CODI = :CLI_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('CLI_CODI').AsInteger := CdsClientesCLI_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vTieneVehiculos := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  //Se busca si tiene documentos asociados
  DmGlobal.SqlbuscarHijos.Close;
  DmGlobal.SqlbuscarHijos.SQL.Clear;
  DmGlobal.SqlbuscarHijos.SQL.Add('SELECT COUNT(CLI_CODI) QT FROM ORDENTIM ');
  DmGlobal.SqlbuscarHijos.SQL.Add('WHERE ORDENTIM.CLI_CODI = :CLI_CODI');
  DmGlobal.SqlbuscarHijos.ParamByName('CLI_CODI').AsInteger := CdsClientesCLI_CODI.AsInteger;
  DmGlobal.SqlbuscarHijos.ExecQuery;
  vPuedeBorrar := (DmGlobal.SqlbuscarHijos.FieldByName('QT').AsInteger > 0);
  if not (vPuedeBorrar or vTieneVehiculos) then
  begin
    if Application.MessageBox('¿Desea eliminar el registro?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
    begin
      try
        if CdsVeXCli.RecordCount > 0 then
          CdsVeXCli.Delete;
        if CdsClientes.RecordCount > 0 then
          CdsClientes.Delete;
        CdsVeXCli.ApplyUpdates(0);
        CdsClientes.ApplyUpdates(0);
        QryClientes.Transaction.CommitRetaining;
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
    if vPuedeBorrar or vTieneVehiculos then
    begin
      ShowMessage('Existen registros asociados al cliente ' + CdsClientesCLI_NOMBRE.AsString +
        ' debe eliminar primero los vehiculos o documentos que pertenecen al cliente.');
    end;
//    if not vPuedeBorrar then
//      vTextoHijos := 'documentos';
//    if not vTieneVehiculos then
//    begin
//      if Length(vTextoHijos) > 0 then
//        vTextoHijos := vTextoHijos + ' y vehiculos'
//      else
//        vTextoHijos := vTextoHijos + 'vehiculos';
//    end;
  end;
end;

procedure TFrmClientes.BtnGuardarClick(Sender: TObject);
var
  vInsertar : Boolean;
begin
  vInsertar := False;
  if Application.MessageBox('¿Desea guardar los cambios?', 'Información', MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      if CdsClientes.State = dsInsert then
        vInsertar := True;
      CdsClientes.ApplyUpdates(0);
      CdsVeXCli.ApplyUpdates(0);
      QryClientes.Transaction.CommitRetaining;
      AccionGrupos(False);
      BtnNuevo.Enabled := True;
      BtnEliminar.Enabled := True;
      BtnModificar.Enabled := True;
      BtnCancelar.Enabled := False;
//      if vInsertar then
//        GridCliCar.Enabled := True;
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmClientes.BtnListadoClick(Sender: TObject);
begin
  if pageClientes.ActivePageIndex = 0 then
  begin
    pageClientes.ActivePage := TbsListaCli;
    BtnListado.Caption := 'Datos';
  end
  else if pageClientes.ActivePageIndex = 1 then
  begin
    pageClientes.ActivePage := tbsDatosCli;
    BtnListado.Caption := 'Listado';
  end;
end;

procedure TFrmClientes.BtnModificarClick(Sender: TObject);
begin
  AccionGrupos(True);
  BtnModificar.Enabled := False;
  BtnNuevo.Enabled := False;
  BtnGuardar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnEliminar.Enabled := False;
end;

procedure TFrmClientes.BtnNuevoClick(Sender: TObject);
begin
  if ((CdsClientes.State in [dsBrowse, dsInactive]) or (CdsVeXCli.State in [dsBrowse, dsInactive])) then
  begin
    CdsClientes.Open;
    CdsClientes.Append;
    QryVeXCLi.Close;
    CdsVeXCli.Open;
    DmGlobal.TblTipDocu.Open;
    DmGlobal.TblCiudad.Open;
    GrbBusqueda.Enabled := False;
    BtnNuevo.Enabled := False;
    BtnGuardar.Enabled := True;
    BtnEliminar.Enabled := False;
    BtnModificar.Enabled := False;
    BtnCancelar.Enabled := True;
    pageClientes.ActivePage := tbsDatosCli;
    DblTipDocu.SetFocus;
  end;
end;

procedure TFrmClientes.CanClose;
begin
  if Application.MessageBox('¿Existen cambios sin aplicar, desea guardar los cambios pendientes?', 'Información',
       MB_ICONQUESTION + MB_YESNO) = mrYes then
  begin
    try
      CdsClientes.ApplyUpdates(0);
      CdsVeXCli.ApplyUpdates(0);
      QryClientes.Transaction.CommitRetaining;
      AccionGrupos(False);
    except
      on E: Exception do
      begin
        raise Exception.Create('Error al guardar el registro. ' + e.Message);
      end;
    end;
  end;
end;

procedure TFrmClientes.CdsClientesAfterCancel(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmClientes.CdsClientesAfterDelete(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmClientes.CdsClientesAfterEdit(DataSet: TDataSet);
begin
  AccionGrupos(True);
end;

procedure TFrmClientes.CdsClientesAfterPost(DataSet: TDataSet);
begin
  AccionGrupos(False);
end;

procedure TFrmClientes.CdsClientesAfterScroll(DataSet: TDataSet);
begin
  LblVxCli.Caption := 'VEHICULOS DEL CLIENTE: ' + CdsClientesCLI_NOMBRE.AsString;
end;

procedure TFrmClientes.CdsClientesBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
end;

procedure TFrmClientes.CdsClientesBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
  begin
    BtnCancelar.Click;
    Abort;
  end;
end;

procedure TFrmClientes.CdsClientesBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
  AccionGrupos(True);
end;

procedure TFrmClientes.CdsClientesBeforePost(DataSet: TDataSet);
var
  vCodCliente : Integer;
begin
  if CdsClientes.State = dsInsert then
  begin
    vCodCliente := DmGlobal.GetConsecutivo('clientes','cli_codi');
    if CdsClientesCLI_CODI.AsInteger <> vCodCliente then
      CdsClientesCLI_CODI.AsInteger := vCodCliente;
  end;
end;

procedure TFrmClientes.CdsClientesNewRecord(DataSet: TDataSet);
begin
  if not TraClientes.Active then
    TraClientes.StartTransaction;
  CdsClientesCLI_FECHA_CREA.AsDateTime := Now;
  CdsClientesCLI_CODI.AsInteger := DmGlobal.GetConsecutivo('clientes','cli_codi');
end;

procedure TFrmClientes.CdsVeXCliNewRecord(DataSet: TDataSet);
begin
  if CdsClientes.State in [dsEdit, dsInsert] then
  begin
    if not TraClientes.Active then
      TraClientes.StartTransaction;
    CdsVeXCliCLI_CODI.AsInteger := CdsClientesCLI_CODI.AsInteger;
    DmGlobal.TblMarcaVH.Open;
    DmGlobal.TblLineaVH.Open;
  end
  else
    Abort;
end;

procedure TFrmClientes.DtsClientesDataChange(Sender: TObject; Field: TField);
begin
  BtnListado.Enabled := (CdsClientes.RecordCount > 0);
  BtnModificar.Enabled := (CdsClientes.RecordCount > 0);
  BtnEliminar.Enabled := (CdsClientes.RecordCount > 0);
//  if CdsClientes.State in [dsEdit, dsInsert] then
//    GridCliCar.Enabled := False
//  else
//    GridCliCar.Enabled := True;
end;

procedure TFrmClientes.EdtBusquedaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnBuscar.Click;
end;

procedure TFrmClientes.EdtCorreoEExit(Sender: TObject);
begin
  if Length(EdtCorreoE.Text) > 0 then
  begin
    if not DmGlobal.emailValido(EdtCorreoE.Text) then
    begin
      Application.MessageBox('Debe digitar un correo electrónico valido.', 'Advertencia',
         MB_ICONEXCLAMATION + MB_OK);
      EdtCorreoE.SetFocus;
    end;
  end;
end;

procedure TFrmClientes.EdtModeloKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    Key:=#0;
end;

class function TFrmClientes.Execute: Boolean;
var
  FrmClientes: TFrmClientes;
begin
  FrmClientes := TFrmClientes.Create(nil);
  try
    Result := FrmClientes.ShowModal = mrOk;
  finally
    FrmClientes.Free;
  end;
end;

procedure TFrmClientes.FormActivate(Sender: TObject);
begin
  pageClientes.ActivePage := tbsDatosCli;
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
    CanClose;
  Action := caFree;
  FrmClientes := nil;
end;

procedure TFrmClientes.FormHide(Sender: TObject);
begin
  if ((CdsClientes.ChangeCount > 0) or (CdsVeXCli.ChangeCount > 0)) then
    CanClose;
end;

procedure TFrmClientes.TvlCliCarLI_CODIPropertiesPopup(Sender: TObject);
var
  AMasterKeyValue: Integer;
begin
  AMasterKeyValue := TvlCliCar.Controller.FocusedRecord.Values[TvlCliCarMR_CODI.Index];
  TcxLookupComboBox(Sender).Properties.DataController.Filter.Root.AddItem(TcxLookupComboBox(Sender).Properties.ListColumns[1],
    foEqual, AMasterKeyValue, 'Filter');
  TcxLookupComboBox(Sender).Properties.DataController.Filter.Active := True;
end;

procedure TFrmClientes.TvlClientesDblClick(Sender: TObject);
begin
  pageClientes.ActivePage := tbsDatosCli;
end;

procedure TFrmClientes.Volver1Click(Sender: TObject);
begin
  pageClientes.ActivePage := tbsDatosCli;
end;

end.
