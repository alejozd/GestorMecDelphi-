unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxNavBarOfficeNavigationBar,
  dxCustomTileControl, dxTileBar, IBX.IBCustomDataSet, IBX.IBQuery,
  Vcl.CategoryButtons, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxTileControl, Vcl.ComCtrls, UxTheme, Themes, Math,
  cxContainer, dxGDIPlusClasses, cxImage, cxLabel, cxPC,MidasLib;

const
  UM_VALIDAPAGE = WM_USER + 1001;

type
  TFrmPrincipal = class(TForm)
    pnlToolbar: TPanel;
    imgMenu: TImage;
    SV: TSplitView;
    ActionList1: TActionList;
    catMenuItems: TCategoryButtons;
    actClientes: TAction;
    actBodegas: TAction;
    actProductos: TAction;
    actOrdenTrabajo: TAction;
    ImLBotonMenu: TcxImageList;
    lblTitle: TcxLabel;
    ImgFondo: TcxImage;
    actProveedores: TAction;
    actEntradas: TAction;
    actConsultasInv: TAction;
    actGruposInv: TAction;
    PageControlCloseButton: TcxPageControl;
    actUtilidades: TAction;
    actCartillas: TAction;
    actConsVentas: TAction;
    actConsHistorialCli: TAction;
    LblUsuario: TcxLabel;
    procedure actClientesExecute(Sender: TObject);
    procedure actBodegasExecute(Sender: TObject);
    procedure actProductosExecute(Sender: TObject);
    procedure actOrdenTrabajoExecute(Sender: TObject);

    // función para crear las pestañas
    function pestana(Form: TForm; Caption: string): TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure imgMenuClick(Sender: TObject);
    procedure actProveedoresExecute(Sender: TObject);
    procedure actEntradasExecute(Sender: TObject);
    procedure actConsultasInvExecute(Sender: TObject);
    procedure actGruposInvExecute(Sender: TObject);
    procedure PageControlCloseButtonCanCloseEx(Sender: TObject;
      ATabIndex: Integer; var ACanClose: Boolean);
    procedure actUtilidadesExecute(Sender: TObject);
    procedure actCartillasExecute(Sender: TObject);
    procedure actConsVentasExecute(Sender: TObject);
    procedure actConsHistorialCliExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCloseButtonsRect: array of TRect;
    FCloseButtonMouseDownIndex: Integer;
    FCloseButtonShowPushed: Boolean;
  public
    { Public declarations }
    procedure ValidaPageFondo(var Message: TMessage); message UM_VALIDAPAGE;
    procedure irATabPrin(pNombreTab : string);
  end;

var
  FrmPrincipal: TFrmPrincipal;
  NewTab: TcxTabSheet;

implementation

{$R *.dfm}

uses UntBodegas, UntClientes, UntProductos, UntOrdenTrabajo, UntProveedores,
  UntEntradas, UntGruposInv, UntCartillas, UntConsVentas, UntConsInventario,
  UntHistorialCli, UntUtilidades, UntDmGlobal;

procedure TFrmPrincipal.actEntradasExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
  //51
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,21) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmEntradas = nil then
      begin
        FrmEntradas := TFrmEntradas.Create(Self);
        pestana(FrmEntradas, 'Entradas');
      end
      else
      begin
        irATabPrin('Entradas');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;
//  if FrmEntradas = nil then
//  begin
//    FrmEntradas := TFrmEntradas.Create(Self);
//    pestana(FrmEntradas, 'Entradas');
//  end
//  else
//  begin
//    irATabPrin('Entradas');
//  end;
end;

procedure TFrmPrincipal.actProveedoresExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
  //50
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,20) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmProveedores = nil then
      begin
        FrmProveedores := TFrmProveedores.Create(Self);
        pestana(FrmProveedores, 'Proveedores');
      end
      else
      begin
        irATabPrin('Proveedores');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;
//  if FrmProveedores = nil then
//  begin
//    FrmProveedores := TFrmProveedores.Create(Self);
//    pestana(FrmProveedores, 'Proveedores');
//  end
//  else
//  begin
//    irATabPrin('Proveedores');
//  end;
end;

procedure TFrmPrincipal.actClientesExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actClientes.Tag);  //41
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,13) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmClientes = nil then
      begin
        FrmClientes := TFrmClientes.Create(Self);
        pestana(FrmClientes, 'Clientes');
      end
      else
      begin
        irATabPrin('Clientes');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;
//  if FrmClientes = nil then
//  begin
//    FrmClientes := TFrmClientes.Create(Self);
//    pestana(FrmClientes, 'Clientes');
//  end
//  else
//  begin
//    irATabPrin('Clientes');
//  end;
end;

procedure TFrmPrincipal.actOrdenTrabajoExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actOrdenTrabajo.Tag);  //40
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,15) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmOrdenTrabajo = nil then
      begin
        FrmOrdenTrabajo := TFrmOrdenTrabajo.Create(Self);
        pestana(FrmOrdenTrabajo, 'Orden de Trabajo');
      end
      else
      begin
        irATabPrin('Orden de Trabajo');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;
//  if FrmOrdenTrabajo = nil then
//  begin
//    FrmOrdenTrabajo := TFrmOrdenTrabajo.Create(Self);
//    pestana(FrmOrdenTrabajo, 'Orden de Trabajo');
//  end
//  else
//  begin
//    irATabPrin('Orden de Trabajo');
//  end;
end;

procedure TFrmPrincipal.actConsVentasExecute(Sender: TObject);
begin
  if FrmConsVentas = nil then
  begin
    FrmConsVentas := TFrmConsVentas.Create(Self);
    pestana(FrmConsVentas, 'ConsVentas');
  end
  else
  begin
    irATabPrin('ConsVentas');
  end;
end;

procedure TFrmPrincipal.actConsHistorialCliExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,14) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmHistorialCli = nil then
      begin
        FrmHistorialCli := TFrmHistorialCli.Create(Self);
        pestana(FrmHistorialCli, 'Historial Cliente');
      end
      else
      begin
        irATabPrin('Historial Cliente');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;

//  if FrmHistorialCli = nil then
//  begin
//    FrmHistorialCli := TFrmHistorialCli.Create(Self);
//    pestana(FrmHistorialCli, 'Historial Cliente');
//  end
//  else
//  begin
//    irATabPrin('Historial Cliente');
//  end;
end;

procedure TFrmPrincipal.actGruposInvExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actMovimientoInv.Tag);  //33
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,9) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmGruposInv = nil then
      begin
        FrmGruposInv := TFrmGruposInv.Create(Self);
        pestana(FrmGruposInv, 'Grupos Inventario');
      end
      else
      begin
        irATabPrin('Grupos Inventario');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;

//  if FrmGruposInv = nil then
//  begin
//    FrmGruposInv := TFrmGruposInv.Create(Self);
//    pestana(FrmGruposInv, 'Grupos Inventario');
//  end
//  else
//  begin
//    irATabPrin('Grupos Inventario');
//  end;
end;

procedure TFrmPrincipal.actConsultasInvExecute(Sender: TObject);
begin
  if FrmConsInventario = nil then
  begin
    FrmConsInventario := TFrmConsInventario.Create(Self);
    pestana(FrmConsInventario, 'ConsInventario');
  end
  else
  begin
    irATabPrin('ConsInventario');
  end;
end;

procedure TFrmPrincipal.actProductosExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actProductos.Tag);  //31
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,10) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if Frmproductos = nil then
      begin
        Frmproductos := TFrmproductos.Create(Self);
        pestana(Frmproductos, 'Productos');
      end
      else
      begin
        irATabPrin('Productos');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;

//  if Frmproductos = nil then
//  begin
//    Frmproductos := TFrmproductos.Create(Self);
//    pestana(Frmproductos, 'Productos');
//  end
//  else
//  begin
//    irATabPrin('Productos');
//  end;
end;

procedure TFrmPrincipal.actBodegasExecute(Sender: TObject);
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actBodegas.Tag);  //30
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,8) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmBodegas = nil then
      begin
        FrmBodegas := TFrmBodegas.Create(Self);
        pestana(FrmBodegas, 'Bodegas');
      end
      else
      begin
        irATabPrin('Bodegas');
      end;
    end
    else
    begin
      MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
    end;
  end
  else
  begin
    MessageBox(Handle, 'No tiene permiso para ingresar a esta opción.', 'Advertencia', MB_OK+MB_ICONEXCLAMATION);
  end;

//  if FrmBodegas = nil then
//  begin
//    FrmBodegas := TFrmBodegas.Create(Self);
//    pestana(FrmBodegas, 'Bodegas');
//  end
//  else
//  begin
//    irATabPrin('Bodegas');
//  end;
end;

procedure TFrmPrincipal.actUtilidadesExecute(Sender: TObject);
begin
//  SelOpcion(actEmpleados.Tag);  //25
  if FrmUtilidades = nil then
  begin
    FrmUtilidades := TFrmUtilidades.Create(Self);
    pestana(FrmUtilidades, 'Utilidades');
  end
  else
  begin
    irATabPrin('Utilidades');
  end;
end;

procedure TFrmPrincipal.actCartillasExecute(Sender: TObject);
begin
  if FrmCartillas = nil then
  begin
    FrmCartillas := TFrmCartillas.Create(Self);
    pestana(FrmCartillas, 'Cartillas');
  end
  else
  begin
    irATabPrin('Cartillas');
  end;
end;

function TFrmPrincipal.pestana(Form: TForm; Caption: string): TcxTabSheet;
var
  I: Integer;
begin
  NewTab := TcxTabSheet.Create(PageControlCloseButton);
  with NewTab do
  begin
    pagecontrol := PageControlCloseButton;
    Parent := PageControlCloseButton;
    PageIndex := PageControlCloseButton.ActivePageIndex;
  end;
  // el parent sera la nueva pestaña
  Form.Parent := NewTab;
  with Form do
  begin
    Align := alClient;
    // asignar caption al tabsheet creado
    NewTab.Caption := Caption;   //Espacio necesario para que salga la X de cerrar
    Show;
  end;
  PageControlCloseButton.ActivePage := NewTab;
  Result := NewTab;
  PostMessage(Handle, UM_VALIDAPAGE, 0, 0);   //Para validar el fondo
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if(MessageBox(Handle, '¿Realmente desea Cerrar la Aplicación?', 'Confirmacion', MB_YESNO+mb_ICONQUESTION)=IDNO) then
    CanClose := False
  else
    CanClose := True;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
  vPath : string;
begin
  vPath := ExtractFilePath(ParamStr(0));
  if FileExists(vPath + '/logofondo.png') then
    ImgFondo.Picture.LoadFromFile(vPath + '/logofondo.png');
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  LblUsuario.Caption := DmGlobal.FNombUsuario;
end;

procedure TFrmPrincipal.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

procedure TFrmPrincipal.PageControlCloseButtonCanCloseEx(Sender: TObject;
  ATabIndex: Integer; var ACanClose: Boolean);
var
  vForma : TForm;
begin
  vForma := TForm(PageControlCloseButton.Pages[ATabIndex].Controls[0]);
  vForma.Close;
  PostMessage(Handle, UM_VALIDAPAGE, 0, 0);   //Para validar el fondo
end;

procedure TFrmPrincipal.ValidaPageFondo(var Message: TMessage);
begin
  try
    if PageControlCloseButton.PageCount > 0 then
    begin
      PageControlCloseButton.Align := alClient;
    end
    else
    begin
      PageControlCloseButton.Align := alBottom;
      PageControlCloseButton.Height := 10;
    end;
  except on e: exception do
    begin
      ShowMessage('Error: ' + #13 + e.message);
    end;
  end;
end;

procedure TFrmPrincipal.irATabPrin(pNombreTab: string);
var
  I: Integer;
begin
  for I := 0 to PageControlCloseButton.PageCount - 1 do
  begin
    if Trim(PageControlCloseButton.Pages[I].Caption) = Trim(pNombreTab) then
    begin
      PageControlCloseButton.ActivePageIndex := I;
      Break;
    end;
  end;
end;

end.
