unit UntDmGlobal;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBSQL,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBTable, System.ImageList, Vcl.ImgList,
  Vcl.Controls, cxGraphics, cxStyles, cxClasses, cxLocalization, Vcl.Forms,
  MidasLib, Datasnap.Provider, Datasnap.DBClient, variants, Registry, Windows;

type
  TPermisos = record
    rLeer: Word;
    rCrear: Word;
    rModificar: Word;
    rBorrar: Word;
  end;
  TDmGlobal = class(TDataModule)
    DbGlobal: TIBDatabase;
    TraBase: TIBTransaction;
    SqlCont: TIBSQL;
    TblLineaVH: TIBTable;
    TblTipDocu: TIBTable;
    TblLineaVHLI_CODI: TIntegerField;
    TblLineaVHMR_CODI: TIntegerField;
    TblLineaVHLI_NOMBRE: TIBStringField;
    TblTipDocuTD_CODI: TIntegerField;
    TblTipDocuTD_ABREVIADO: TIBStringField;
    TblTipDocuTD_NOMBRE: TIBStringField;
    TblMarcaVH: TIBTable;
    TblMarcaVHMR_CODI: TIntegerField;
    TblMarcaVHMR_NOMBRE: TIBStringField;
    ImLNavegador32: TcxImageList;
    ImlBotones: TcxImageList;
    TblCargos: TIBTable;
    TblCargosCG_CODI: TIntegerField;
    TblCargosCG_NOMBRE: TIBStringField;
    RepoMaestro: TcxStyleRepository;
    Titulos: TcxStyle;
    Contenido: TcxStyle;
    ContenidoSeleccion: TcxStyle;
    TitulosDetalle: TcxStyle;
    ImLNavegador16: TcxImageList;
    TblProductos: TIBTable;
    TblProductosPRO_CODI: TIntegerField;
    TblProductosPRO_NOMBRE: TIBStringField;
    TblProductosPRO_DESCRIPCION: TIBStringField;
    TblProductosPRO_REFERENCIA: TIBStringField;
    TblProductosPRO_COD_BARRAS: TIBStringField;
    TblProductosPRO_PRECIO: TIBBCDField;
    TblProductosPRO_TIPO: TIntegerField;
    TblProductosPRO_MAXIMO: TSmallintField;
    TblProductosPRO_MINIMO: TSmallintField;
    TblProductosPRO_IVA: TIBBCDField;
    TblEmpleados: TIBTable;
    TblEmpleadosEMP_CODI: TIntegerField;
    TblEmpleadosCOD_TIPDO: TIntegerField;
    TblEmpleadosEMP_NUMDOC: TIBStringField;
    TblEmpleadosEMP_TEL_MOVIL: TIBStringField;
    TblEmpleadosEMP_TEL_FIJO: TIBStringField;
    TblEmpleadosEMP_DIRECCION: TIBStringField;
    TblEmpleadosEMP_BARRIO: TIBStringField;
    TblEmpleadosCG_CODI: TIntegerField;
    TblFormaPago: TIBTable;
    TblFormaPagoFP_CODI: TIntegerField;
    TblFormaPagoFP_NOMBRE: TIBStringField;
    SqlMovInventario: TIBSQL;
    SqlNumDoc: TIBSQL;
    TblProductosPRO_CLASE: TIntegerField;
    LabelCard: TcxStyle;
    ContentCard: TcxStyle;
    LocalIdioma: TcxLocalizer;
    SqlbuscarHijos: TIBSQL;
    ImPop16: TcxImageList;
    ContenidoLetraG: TcxStyle;
    TblEmpleadosEMP_ESTA: TIBStringField;
    ContenidoLetra: TcxStyle;
    TblCiudad: TIBTable;
    TblCiudadCIU_CODI: TIntegerField;
    TblCiudadDEP_CODI: TIntegerField;
    TblCiudadCIU_NOMBRE: TIBStringField;
    TblCiudadCIU_CODIGO_DIAN: TIBStringField;
    ImLBotonMenu: TcxImageList;
    Titulos8: TcxStyle;
    TblEmpleadosEMP_NOMBRE: TIBStringField;
    TblEmpleadosCIU_CODI: TIntegerField;
    TblUsuarios: TIBTable;
    TblUsuariosUSU_CODI: TIntegerField;
    TblUsuariosUSU_USUARIO: TIBStringField;
    TblUsuariosUSU_PASSWORD: TIBStringField;
    TblUsuariosUSU_NOMBRE: TIBStringField;
    TblUsuariosUSU_CORREO: TIBStringField;
    TblUsuariosUSU_TELEFONO: TIBStringField;
    TblUsuariosUSU_ESTADO: TSmallintField;
    QryPermisos: TIBQuery;
    CdsPermisos: TClientDataSet;
    DspPermisos: TDataSetProvider;
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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure cargarIdioma;
  public
    { Public declarations }
    FUsuario, FPassword, FNombUsuario, FErrorUsu : string;
    FUsuCodi : Integer;
    vGPermisos : TPermisos;
    vRutaI, vTipoI, vNomServidorI : string;
    function ConectarBase : Boolean;
    function GetConsecutivo(pTabla, pCampo : string) : Integer;
    function emailValido(const email : string) : boolean;
    function GetCodUnEmpleado : Integer;
    function GetNumDocumento(pTipoDoc : Integer) : Integer;
    function GetNumEntrada : Integer;
    function ExisteUsuario(pUsuario : string) : Boolean;
    function LogearUsuario(pUsuario, pPassword : string) : Boolean;
    function ValidaPermiso(pUsuario, pOpcion : Integer) : Boolean;
    function ExisteLlaveReg(const ARootKey: HKEY; const AKey : string) : Boolean;
    function ReadRegKey(const ARootKey: HKEY; const AKey, Valor: string): string;
    function ObtDatosRegeditI : Boolean;
  end;

  const
    vKey = '&LISArDIeALZAME#';
    VALOR_KEY = '\SOFTWARE\ZServiteca';
    vKeyAdd = '*Alejo1979*';

var
  DmGlobal: TDmGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntLogin, UntPrincipal;

{$R *.dfm}

procedure TDmGlobal.cargarIdioma;
begin
  LocalIdioma.FileName := ExtractFilePath(Application.ExeName) + 'EspLan.ini';
  LocalIdioma.Active := True;
  LocalIdioma.Language := 'Español (Colombia)';
  LocalIdioma.Locale := 1034;
end;

function TDmGlobal.ConectarBase: Boolean;
begin
  Result := False;
  try
    DbGlobal.Params.Clear;
    DbGlobal.Params.Add('user_name=SYSDBA');
    DbGlobal.Params.Add('password=masterkey');
    DbGlobal.Params.Add('lc_ctype=ISO8859_1');
    DbGlobal.LoginPrompt := False;
    if vTipoI = 'S' then
      //DbGlobal.DatabaseName := ExtractFilePath(ParamStr(0)) + 'ImperioBd.fdb'
      DbGlobal.DatabaseName := ExtractFilePath(Application.ExeName) + '\ImperioBd.fdb'
    else
      DbGlobal.DatabaseName := vNomServidorI + ':' + vRutaI + '\ImperioBd.fdb';
    DbGlobal.Open;
    Result := True;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create('Error conectando la base de datos' + E.Message);
    end;
  end;
end;

procedure TDmGlobal.DataModuleCreate(Sender: TObject);
begin
  FUsuario := EmptyStr;
  FPassword := EmptyStr;
  if not ObtDatosRegeditI then
  begin
    raise Exception.Create('No fue posible encontrar datos de registro.');
    Application.Terminate;
  end;
  if ConectarBase then
  begin
    if not TraBase.Active then
      TraBase.StartTransaction;
    cargarIdioma;
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
    Application.CreateForm(TFrmLogin, FrmLogin);
    TblUsuarios.Open;
    if FrmLogin.ShowModal = mrOk then
    begin
      FrmPrincipal.Show;
    end;
  end
  else
  begin
    raise Exception.Create('No fue posible conectar la base de datos.');
  end;
end;

function TDmGlobal.emailValido(const email: string): boolean;
  function caracterPermitido(const s : string) : boolean;
    var i : integer;
  begin
    Result := False;
    //Solo puede tener los siguientes caracteres
    //tanto en la parte de servidor como de usuario
    for i := 1 to Length(s) do
      if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.']) then
        exit;
    Result := true;
  end;
var
  i, longitudServidor : integer;
  parteUsuario, parteServidor : string;
begin
  Result := False;
  i := Pos('@', email);
  //Debe tener, al menos, un carácter antes de la @ y no
  //puede tener dos puntos seguidos ..
  if (i = 0) or (i = 1) or (Pos('..', email) > 0) then
    exit;
  parteUsuario := Copy(email, 1, i - 1);
  parteServidor := Copy(email, i + 1, Length(email));
  longitudServidor := Length(parteServidor);
  //Debe tener un punto y, al menos, 3 caracteres desde la arroba
  //hasta el final  (aaa@servidor.com)
  if (longitudServidor < 3) or (Pos('.', parteServidor) = 0) or
      (parteServidor[1] = '.') or (parteServidor[longitudServidor] = '.') or
      (parteServidor[longitudServidor - 1] = '.') then
    exit;
  Result := caracterPermitido(parteUsuario) and
      caracterPermitido(parteServidor);
end;

function TDmGlobal.GetCodUnEmpleado: Integer;
begin
  Result := 0;
  try
    if not TraBase.Active then
      TraBase.StartTransaction;
    TblEmpleados.Open;
    TblEmpleados.Filter := 'EMP_ESTA=''A'' ';
    TblEmpleados.Filtered := True;
    TblEmpleados.First;
    if not TblEmpleadosEMP_CODI.IsNull then
    begin
      Result := TblEmpleadosEMP_CODI.AsInteger;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error obteniendo el empleado.' + E.Message);
    end;
  end;
end;

function TDmGlobal.GetConsecutivo(pTabla, pCampo : string): Integer;
begin
  if not TraBase.Active then
    TraBase.StartTransaction;
  SqlCont.Close;
  SqlCont.SQL.Clear;
  SqlCont.SQL.Add('SELECT ' + pCampo + ' FROM ' + pTabla);
  SqlCont.ExecQuery;
  if SqlCont.RecordCount = 0 then
    Result := 1
  else
  begin
    SqlCont.Close;
    SqlCont.SQL.Clear;
    SqlCont.SQL.Add('SELECT max(' + pCampo + ') CONT FROM ' + pTabla);
    SqlCont.ExecQuery;
    Result := SqlCont.FieldByName('CONT').AsInteger + 1;
  end;
end;

function TDmGlobal.GetNumDocumento(pTipoDoc : Integer): Integer;
begin
  Result := -1;
  try
    if not TraBase.Active then
      TraBase.StartTransaction;
    SqlNumDoc.Close;
    SqlNumDoc.SQL.Clear;
    SqlNumDoc.SQL.Add('SELECT MAX(M.OTM_NUME) + 1 OTM_NUME FROM ORDENTIM M');
    SqlNumDoc.SQL.Add('WHERE M.otm_clase_doc = :otm_clase_doc AND M.OTM_ESTADO = 1');
    SqlNumDoc.ParamByName('otm_clase_doc').AsInteger := pTipoDoc;
    SqlNumDoc.ExecQuery;
    if SqlNumDoc.FieldByName('OTM_NUME').AsInteger = 0 then
      Result := 1
    else
      Result := SqlNumDoc.FieldByName('OTM_NUME').AsInteger;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error GetNumDocumento.' + E.Message);
    end;
  end;
end;

function TDmGlobal.GetNumEntrada: Integer;
begin
  Result := -1;
  try
    if not TraBase.Active then
      TraBase.StartTransaction;
    SqlNumDoc.Close;
    SqlNumDoc.SQL.Clear;
    SqlNumDoc.SQL.Add('SELECT MAX(M.ent_nume) + 1 ENT_NUME FROM entradasm M');
    SqlNumDoc.SQL.Add('WHERE M.ent_estado = 1');
    SqlNumDoc.ExecQuery;
    if SqlNumDoc.FieldByName('ENT_NUME').AsInteger = 0 then
      Result := 1
    else
      Result := SqlNumDoc.FieldByName('ENT_NUME').AsInteger;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error GetNumEntrada.' + E.Message);
    end;
  end;
end;

function TDmGlobal.ExisteUsuario(pUsuario : string): Boolean;
begin
  Result := False;
  try
    if pUsuario <> '' then
    begin
      if TblUsuarios.Locate('USU_USUARIO',pUsuario,[loCaseInsensitive]) then
        Result := True;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en el método ExisteUsuario.' + E.Message);
    end;
  end;
end;

function TDmGlobal.LogearUsuario(pUsuario, pPassword: string): Boolean;
begin
  Result := False;
  try
    if (pUsuario <> '') and (pPassword <> '') then
    begin
      if TblUsuarios.Locate('USU_USUARIO',pUsuario,[loCaseInsensitive]) then
      begin
        if (TblUsuariosUSU_USUARIO.AsString = pUsuario) and (TblUsuariosUSU_PASSWORD.AsString = pPassword) then
        begin
          Result := True;
          FNombUsuario := TblUsuariosUSU_NOMBRE.AsString;
          FUsuCodi := TblUsuariosUSU_CODI.AsInteger;
          //Carga permisos en client
          QryPermisos.Close;
          CdsPermisos.ParamByName('usu_codi').AsInteger := TblUsuariosUSU_CODI.AsInteger;
          CdsPermisos.Open;
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en el método LogearUsuario.' + E.Message);
    end;
  end;
end;

function TDmGlobal.ValidaPermiso(pUsuario, pOpcion: Integer): Boolean;
begin
  Result := False;
  FErrorUsu := EmptyStr;
  try
    if (CdsPermisos.RecordCount > 0) and (CdsPermisos.RecordCount = 22) then
    begin
      if CdsPermisos.Locate('USU_CODI;PER_OPCION',VarArrayOf([pUsuario,pOpcion]),[loCaseInsensitive]) then
      begin
        Result := True;
        vGPermisos.rLeer := CdsPermisosPER_LEER.AsInteger;
        vGPermisos.rCrear := CdsPermisosPER_CREAR.AsInteger;
        vGPermisos.rModificar := CdsPermisosPER_MODIFICAR.AsInteger;
        vGPermisos.rBorrar := CdsPermisosPER_BORRAR.AsInteger;

      end
      else
      begin
        Result := False;
        FErrorUsu := 'El usuario no fue encontrado.';
      end;
    end
    else
    begin
      Result := False;
      FErrorUsu := 'No se ha cargado la lista de permisos de usuario, salga y vuelva a ingresar a la aplicación';
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error en el método ValidaPermiso.' + E.Message);
    end;
  end;
end;

function TDmGlobal.ExisteLlaveReg(const ARootKey: HKEY; const AKey: string): Boolean;
begin
  with TRegistry.Create do
  try
    RootKey := ARootKey;
    Result := OpenKey(AKey, False);
    if Result then
    begin
      CloseKey;
    end;
  finally
    Free
  end
end;

function TDmGlobal.ObtDatosRegeditI: Boolean;
begin
  Result := True;
  if ExisteLlaveReg(HKEY_CURRENT_USER,VALOR_KEY) then
  begin
    vTipoI := ReadRegKey(HKEY_CURRENT_USER,VALOR_KEY,'6');  //Se lee el tipo de instalación de interfaz
    vRutaI := ReadRegKey(HKEY_CURRENT_USER,VALOR_KEY,'7');  //Ruta del ejecutable interfaz
    vNomServidorI := ReadRegKey(HKEY_CURRENT_USER,VALOR_KEY,'8'); //Nombre servidor interfaz
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TDmGlobal.ReadRegKey(const ARootKey: HKEY; const AKey, Valor: string): string;
begin
  with TRegistry.Create do
  try
    RootKey := ARootKey;
    if not OpenKey(AKey, False) then
      raise Exception.Create('Error leyendo el registro ' + Valor)
    else
    begin
      if ValueExists(Valor) then
      begin
        Result := ReadString(Valor);
      end;
      CloseKey
    end
  finally
    Free
  end
end;

end.
