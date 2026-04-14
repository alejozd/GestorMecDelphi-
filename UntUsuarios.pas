unit UntUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MidasLib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, IBX.IBCustomDataSet,
  IBX.IBQuery, Datasnap.Provider, Datasnap.DBClient, IBX.IBUpdateSQL, cxCheckBox,
  cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, dxToggleSwitch,
  dxDBToggleSwitch, cxDBNavigator, cxGroupBox, IBX.IBDatabase, IBX.IBTable,
  cxDBLookupComboBox, Vcl.Menus;

type
  TFrmUsuarios = class(TForm)
    GrdPermisos: TcxGrid;
    TvlPermisos: TcxGridDBTableView;
    LvlPermisos: TcxGridLevel;
    pnlIzquierdo: TPanel;
    GridUsuarios: TcxGrid;
    TvlUsuarios: TcxGridDBTableView;
    LvlUsuarios: TcxGridLevel;
    pnlSuperior: TPanel;
    QryUsuarios: TIBQuery;
    UpdUsuarios: TIBUpdateSQL;
    CdsUsuarios: TClientDataSet;
    DspUsuarios: TDataSetProvider;
    DtsUsuarios: TDataSource;
    QryUsuariosUSU_CODI: TIntegerField;
    QryUsuariosUSU_USUARIO: TIBStringField;
    QryUsuariosUSU_PASSWORD: TIBStringField;
    QryUsuariosUSU_NOMBRE: TIBStringField;
    QryUsuariosUSU_CORREO: TIBStringField;
    QryUsuariosUSU_TELEFONO: TIBStringField;
    QryUsuariosUSU_ESTADO: TSmallintField;
    CdsUsuariosUSU_CODI: TIntegerField;
    CdsUsuariosUSU_USUARIO: TWideStringField;
    CdsUsuariosUSU_PASSWORD: TWideStringField;
    CdsUsuariosUSU_NOMBRE: TWideStringField;
    CdsUsuariosUSU_CORREO: TWideStringField;
    CdsUsuariosUSU_TELEFONO: TWideStringField;
    CdsUsuariosUSU_ESTADO: TSmallintField;
    TvlUsuariosUSU_USUARIO: TcxGridDBColumn;
    TvlUsuariosUSU_PASSWORD: TcxGridDBColumn;
    TvlUsuariosUSU_ESTADO: TcxGridDBColumn;
    cxDBNavigator3: TcxDBNavigator;
    GrbDBasicos: TcxGroupBox;
    Label1: TLabel;
    EdtUsuario: TcxDBTextEdit;
    Label2: TLabel;
    EdtPassword: TcxDBTextEdit;
    Label3: TLabel;
    EdtNombre: TcxDBTextEdit;
    Label5: TLabel;
    EdtTelefono: TcxDBTextEdit;
    Label7: TLabel;
    EdtConfirmarP: TcxTextEdit;
    Label4: TLabel;
    EdtCorreo: TcxDBTextEdit;
    Label10: TLabel;
    TogEstado: TdxDBToggleSwitch;
    TraUsuarios: TIBTransaction;
    QryPermisos: TIBQuery;
    UpdPermisos: TIBUpdateSQL;
    CdsPermisos: TClientDataSet;
    DspPermisos: TDataSetProvider;
    DtsPermisos: TDataSource;
    QryPermisosPER_CODI: TIntegerField;
    QryPermisosPER_OPCION: TIntegerField;
    QryPermisosUSU_CODI: TIntegerField;
    QryPermisosPER_LEER: TSmallintField;
    QryPermisosPER_CREAR: TSmallintField;
    QryPermisosPER_MODIFICAR: TSmallintField;
    QryPermisosPER_BORRAR: TSmallintField;
    CdsPermisosPER_CODI: TIntegerField;
    CdsPermisosPER_OPCION: TIntegerField;
    CdsPermisosUSU_CODI: TIntegerField;
    CdsPermisosPER_LEER: TSmallintField;
    CdsPermisosPER_CREAR: TSmallintField;
    CdsPermisosPER_MODIFICAR: TSmallintField;
    CdsPermisosPER_BORRAR: TSmallintField;
    TvlPermisosPER_OPCION: TcxGridDBColumn;
    TblMenu: TIBTable;
    TblMenuMEN_CODI: TIntegerField;
    TblMenuMEN_OPCION: TIBStringField;
    DtsMenu: TDataSource;
    QryMenu: TIBQuery;
    QryMenuMEN_CODI: TIntegerField;
    TvlPermisosPER_LEER: TcxGridDBColumn;
    TvlPermisosPER_CREAR: TcxGridDBColumn;
    TvlPermisosPER_MODIFICAR: TcxGridDBColumn;
    TvlPermisosPER_BORRAR: TcxGridDBColumn;
    PopPermiso: TPopupMenu;
    popMarcarFila: TMenuItem;
    popMarcarColumna: TMenuItem;
    popMarcarColumnaCrear: TMenuItem;
    popMarcarColumnaMod: TMenuItem;
    popMarcarColumnaBorrar: TMenuItem;
    ChkVerPassword: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsUsuariosNewRecord(DataSet: TDataSet);
    procedure CdsUsuariosBeforePost(DataSet: TDataSet);
    procedure CdsUsuariosAfterPost(DataSet: TDataSet);
    procedure CdsUsuariosAfterScroll(DataSet: TDataSet);
    procedure cxDBNavigator3ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure CdsPermisosAfterPost(DataSet: TDataSet);
    procedure popMarcarFilaClick(Sender: TObject);
    procedure popMarcarColumnaClick(Sender: TObject);
    procedure popMarcarColumnaCrearClick(Sender: TObject);
    procedure popMarcarColumnaModClick(Sender: TObject);
    procedure popMarcarColumnaBorrarClick(Sender: TObject);
    procedure ChkVerPasswordPropertiesChange(Sender: TObject);
    procedure EdtCorreoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsUsuariosBeforeDelete(DataSet: TDataSet);
    procedure CdsUsuariosBeforeEdit(DataSet: TDataSet);
    procedure CdsUsuariosBeforeInsert(DataSet: TDataSet);
    procedure CdsPermisosBeforeDelete(DataSet: TDataSet);
    procedure CdsPermisosBeforeEdit(DataSet: TDataSet);
    procedure CdsPermisosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    rLeer, rCrear, rModificar, rBorrar : Word;
    class function Execute: Boolean; { Private declarations }
    procedure LlenarMenu(pUsuario : Integer);
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmUsuarios.CdsPermisosAfterPost(DataSet: TDataSet);
begin
  CdsPermisos.ApplyUpdates(-1);
  TraUsuarios.CommitRetaining;
end;

procedure TFrmUsuarios.CdsPermisosBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsPermisosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsPermisosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsUsuariosAfterPost(DataSet: TDataSet);
begin
  CdsUsuarios.ApplyUpdates(-1);
  QryUsuarios.Transaction.CommitRetaining;
  if not TraUsuarios.Active then
    TraUsuarios.StartTransaction;
//  GrdPermisos.Enabled := True;
  LlenarMenu(CdsUsuariosUSU_CODI.AsInteger);
end;

procedure TFrmUsuarios.CdsUsuariosAfterScroll(DataSet: TDataSet);
begin
  EdtConfirmarP.Text := CdsUsuariosUSU_PASSWORD.AsString;
  LlenarMenu(CdsUsuariosUSU_CODI.AsInteger);
  CdsPermisos.Close;
  QryPermisos.ParamByName('usu_codi').AsInteger := CdsUsuariosUSU_CODI.AsInteger;
  CdsPermisos.Open;
end;

procedure TFrmUsuarios.CdsUsuariosBeforeDelete(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rBorrar = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsUsuariosBeforeEdit(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rModificar = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsUsuariosBeforeInsert(DataSet: TDataSet);
begin
  if DmGlobal.vGPermisos.rCrear = 0 then
    Abort;
end;

procedure TFrmUsuarios.CdsUsuariosBeforePost(DataSet: TDataSet);
begin
  if EdtUsuario.Text = '' then
  begin
    EdtUsuario.SetFocus;
    raise Exception.Create('El nombre de usuario es obligatorio.');
  end;
  if EdtPassword.Text = '' then
  begin
    EdtPassword.SetFocus;
    raise Exception.Create('El password es obligatorio.');
  end;
  if EdtConfirmarP.Text = '' then
  begin
    EdtConfirmarP.SetFocus;
    raise Exception.Create('La confirmación del password es obligatoria.');
  end;
  if EdtNombre.Text = '' then
  begin
    EdtNombre.SetFocus;
    raise Exception.Create('El nombre del usuario es obligatorio.');
  end;
  if EdtCorreo.Text <> '' then
  begin
    //Validar que sea un correo

  end;

  if EdtPassword.Text <> EdtConfirmarP.Text then
  begin
    EdtPassword.SetFocus;
    raise Exception.Create('El password y la confirmacion no son iguales');
  end;

  if CdsUsuarios.State = dsInsert then
  begin
    CdsUsuariosUSU_CODI.AsInteger := DmGlobal.GetConsecutivo('USUARIOS','USU_CODI');
  end;

end;

procedure TFrmUsuarios.CdsUsuariosNewRecord(DataSet: TDataSet);
begin
  if CdsUsuarios.State = dsInsert then
  begin
    EdtUsuario.Enabled := True;
    EdtPassword.Enabled := True;
    EdtConfirmarP.Enabled := True;
  end
  else
  begin
    EdtUsuario.Enabled := False;
    EdtPassword.Enabled := False;
    EdtConfirmarP.Enabled := False;
  end;

  CdsUsuariosUSU_ESTADO.AsString := '1'; //Estado activo
  GrbDBasicos.Enabled := True;
  GrdPermisos.Enabled := False;
  EdtUsuario.SetFocus;
end;

procedure TFrmUsuarios.ChkVerPasswordPropertiesChange(Sender: TObject);
begin
  if ChkVerPassword.Checked then
  begin
    EdtPassword.Properties.EchoMode := eemNormal;
    EdtConfirmarP.Properties.EchoMode := eemNormal;
  end
  else
  begin
    EdtPassword.Properties.EchoMode := eemPassword;
    EdtConfirmarP.Properties.EchoMode := eemPassword;
  end;
end;

procedure TFrmUsuarios.cxDBNavigator3ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  //Editar 9
  if AButtonIndex = 9 then
  begin
    GrbDBasicos.Enabled := True;
    GrdPermisos.Enabled := True;
    CdsPermisos.Edit;
  end;
  //Post 10
  if AButtonIndex = 10 then
  begin
    if CdsPermisos.State = dsEdit then
      CdsPermisos.Post;
    GrdPermisos.Enabled := False;
    GrbDBasicos.Enabled := False;
  end;
  //Cancel 11
  if AButtonIndex = 11 then
  begin
    GrdPermisos.Enabled := False;
    CdsPermisos.CancelUpdates;
  end;
end;

procedure TFrmUsuarios.EdtCorreoExit(Sender: TObject);
begin
  if Length(EdtCorreo.Text) > 0 then
  begin
    if not DmGlobal.emailValido(EdtCorreo.Text) then
    begin
      Application.MessageBox('Debe digitar un correo electrónico valido.', 'Advertencia',
         MB_ICONEXCLAMATION + MB_OK);
      EdtCorreo.SetFocus;
    end;
  end;
end;

class function TFrmUsuarios.Execute: Boolean;
var
  FrmUsuarios: TFrmUsuarios;
begin
  FrmUsuarios := TFrmUsuarios.Create(nil);
  try
    Result := FrmUsuarios.ShowModal = mrOk;
  finally
    FrmUsuarios.Free;
  end;
end;

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmUsuarios := nil;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
  TraUsuarios.StartTransaction;
  CdsUsuarios.Open;
  TblMenu.Open;
end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
begin
  cxDBNavigator3.Buttons.Edit.Enabled := (DmGlobal.vGPermisos.rModificar = 1);
  cxDBNavigator3.Buttons.Append.Enabled := (DmGlobal.vGPermisos.rCrear = 1);
end;

procedure TFrmUsuarios.LlenarMenu(pUsuario: Integer);
begin
  try
  CdsPermisos.Close;
  QryPermisos.ParamByName('usu_codi').AsInteger := pUsuario;
  CdsPermisos.Open;
  QryMenu.Close;
  QryMenu.ParamByName('USU_CODI').AsInteger := pUsuario;
  QryMenu.Open;
  QryMenu.Last;
  QryMenu.First;
  while not QryMenu.Eof do
  begin
    CdsPermisos.Append;
    CdsPermisosPER_CODI.AsInteger := DmGlobal.GetConsecutivo('PERMISOS','PER_CODI');
    CdsPermisosPER_OPCION.AsInteger := QryMenuMEN_CODI.AsInteger;
    CdsPermisosUSU_CODI.AsInteger := pUsuario;
    CdsPermisosPER_LEER.AsInteger := 0;
    CdsPermisosPER_CREAR.AsInteger := 0;
    CdsPermisosPER_MODIFICAR.AsInteger := 0;
    CdsPermisosPER_BORRAR.AsInteger := 0;
    CdsPermisos.Post;
    QryMenu.Next;
  end;
  QryMenu.Close;
  CdsPermisos.Close;
  QryPermisos.ParamByName('usu_codi').AsInteger := pUsuario;
  CdsPermisos.Open;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en LlenarMenu. ' + e.Message);
    end;
  end;
end;

procedure TFrmUsuarios.popMarcarColumnaBorrarClick(Sender: TObject);
begin
  CdsPermisos.First;
  while not CdsPermisos.Eof do
  begin
    if CdsPermisos.State = dsBrowse then
      CdsPermisos.Edit;
    CdsPermisosPER_BORRAR.AsInteger := 1;
    CdsPermisos.Post;
    CdsPermisos.Next;
  end;
end;

procedure TFrmUsuarios.popMarcarColumnaClick(Sender: TObject);
begin
  CdsPermisos.First;
  while not CdsPermisos.Eof do
  begin
    if CdsPermisos.State = dsBrowse then
      CdsPermisos.Edit;
    CdsPermisosPER_LEER.AsInteger := 1;
    CdsPermisos.Post;
    CdsPermisos.Next;
  end;
end;

procedure TFrmUsuarios.popMarcarColumnaCrearClick(Sender: TObject);
begin
  CdsPermisos.First;
  while not CdsPermisos.Eof do
  begin
    if CdsPermisos.State = dsBrowse then
      CdsPermisos.Edit;
    CdsPermisosPER_CREAR.AsInteger := 1;
    CdsPermisos.Post;
    CdsPermisos.Next;
  end;
end;

procedure TFrmUsuarios.popMarcarColumnaModClick(Sender: TObject);
begin
  CdsPermisos.First;
  while not CdsPermisos.Eof do
  begin
    if CdsPermisos.State = dsBrowse then
      CdsPermisos.Edit;
    CdsPermisosPER_MODIFICAR.AsInteger := 1;
    CdsPermisos.Post;
    CdsPermisos.Next;
  end;
end;

procedure TFrmUsuarios.popMarcarFilaClick(Sender: TObject);
begin
  if CdsPermisos.State = dsBrowse then
    CdsPermisos.Edit;
  CdsPermisosPER_LEER.AsInteger := 1;
  CdsPermisosPER_CREAR.AsInteger := 1;
  CdsPermisosPER_MODIFICAR.AsInteger := 1;
  CdsPermisosPER_BORRAR.AsInteger := 1;
  CdsPermisos.Post;
end;

end.
