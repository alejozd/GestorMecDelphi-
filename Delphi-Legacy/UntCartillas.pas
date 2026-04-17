unit UntCartillas;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit,
  cxPC, cxLabel, Vcl.ExtCtrls, dxCustomTileControl, cxClasses, dxTileBar,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,MidasLib;

type
  TFrmCartillas = class(TForm)
    pageCartillas: TcxPageControl;
    pnlSuperior: TPanel;
    Lbltitulo: TcxLabel;
    pnlBotones: TPanel;
    BtnTiposDoc: TcxButton;
    BtnCiudades: TcxButton;
    BtnVehiculos: TcxButton;
    BtnCargos: TcxButton;
    BtnEmpleados: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // función para crear las pestañas
    function pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
    procedure BtnTiposDocClick(Sender: TObject);
    procedure BtnCiudadesClick(Sender: TObject);
    procedure BtnVehiculosClick(Sender: TObject);
    procedure BtnCargosClick(Sender: TObject);
    procedure BtnEmpleadosClick(Sender: TObject);
    procedure pageCartillasCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
    procedure irATab(pNombreTab : string);
  public
    { Public declarations }
    procedure CerrarPestana;
  end;

var
  FrmCartillas: TFrmCartillas;
  NuevoTab: TcxTabSheet;

implementation

{$R *.dfm}

uses UntDmGlobal, UntTiposDocumentos, UntCiuadesDep, UntVehiculos, UntCargos,
  UntEmpleados;

procedure TFrmCartillas.CerrarPestana;
var
  I: Integer;
begin
  //Para cerrar las pestañas abiertas
  for I := 0 to pageCartillas.PageCount - 1 do
  begin
    TForm(pageCartillas.Pages[I].Controls[0]).Close;
  end;
end;

procedure TFrmCartillas.BtnEmpleadosClick(Sender: TObject);
const
  vTexto = 'Empleados';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actEmpleados.Tag);  //24
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,6) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmEmpleados = nil then
      begin
        FrmEmpleados := TFrmEmpleados.Create(Self);
        pestanaNueva(FrmEmpleados, vTexto);
      end
      else
      begin
        irATab(vTexto);
      end;
      Lbltitulo.Caption := vTexto;
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

//  if FrmEmpleados = nil then
//  begin
//    FrmEmpleados := TFrmEmpleados.Create(Self);
//    pestanaNueva(FrmEmpleados, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
//  Lbltitulo.Caption := vTexto;
end;

procedure TFrmCartillas.BtnCargosClick(Sender: TObject);
const
  vTexto = 'Cargos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actCargos.Tag);  //23
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 5) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmCargos = nil then
      begin
        FrmCargos := TFrmCargos.Create(Self);
        pestanaNueva(FrmCargos, vTexto);
      end
      else
      begin
        irATab(vTexto);
      end;
      Lbltitulo.Caption := vTexto;
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

//  if FrmCargos = nil then
//  begin
//    FrmCargos := TFrmCargos.Create(Self);
//    pestanaNueva(FrmCargos, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
//  Lbltitulo.Caption := vTexto;
end;

procedure TFrmCartillas.BtnVehiculosClick(Sender: TObject);
const
  vTexto = 'Vehiculos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actVehiculos.Tag);  //22
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,4) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmVehiculos = nil then
      begin
        FrmVehiculos := TFrmVehiculos.Create(Self);
        pestanaNueva(FrmVehiculos, vTexto);
      end
      else
      begin
        irATab(vTexto);
      end;
      Lbltitulo.Caption := vTexto;
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

//  if FrmVehiculos = nil then
//  begin
//    FrmVehiculos := TFrmVehiculos.Create(Self);
//    pestanaNueva(FrmVehiculos, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
//  Lbltitulo.Caption := vTexto;
end;

procedure TFrmCartillas.BtnCiudadesClick(Sender: TObject);
const
  vTexto = 'Ciudades - Departamentos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actCiudades.Tag);  //21
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 3) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmCiudadesDep = nil then
      begin
        FrmCiudadesDep := TFrmCiudadesDep.Create(Self);
        pestanaNueva(FrmCiudadesDep, vTexto);
      end
      else
      begin
        irATab(vTexto);
      end;
      Lbltitulo.Caption := vTexto;
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

//  if FrmCiudadesDep = nil then
//  begin
//    FrmCiudadesDep := TFrmCiudadesDep.Create(Self);
//    pestanaNueva(FrmCiudadesDep, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
//  Lbltitulo.Caption := vTexto;
end;

procedure TFrmCartillas.BtnTiposDocClick(Sender: TObject);
const
  vTexto = 'Tipos de Documentos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 2) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmTiposDocumentos = nil then
      begin
        FrmTiposDocumentos := TFrmTiposDocumentos.Create(Self);
        pestanaNueva(FrmTiposDocumentos, vTexto);
      end
      else
      begin
        irATab(vTexto);
      end;
      Lbltitulo.Caption := vTexto;
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

//  if FrmTiposDocumentos = nil then
//  begin
//    FrmTiposDocumentos := TFrmTiposDocumentos.Create(Self);
//    pestanaNueva(FrmTiposDocumentos, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
//  Lbltitulo.Caption := vTexto;
end;

class function TFrmCartillas.Execute: Boolean;
var
  FrmCartillas: TFrmCartillas;
begin
  FrmCartillas := TFrmCartillas.Create(nil);
  try
    Result := FrmCartillas.ShowModal = mrOk;
  finally
    FrmCartillas.Free;
  end;
end;

procedure TFrmCartillas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CerrarPestana;
  Action := caFree;
  FrmCartillas := nil;
end;

procedure TFrmCartillas.pageCartillasCanCloseEx(Sender: TObject;
  ATabIndex: Integer; var ACanClose: Boolean);
var
  vForma : TForm;
begin
  vForma := TForm(pageCartillas.Pages[ATabIndex].Controls[0]);
  vForma.Close;
end;

function TFrmCartillas.pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
var
  I: Integer;
begin
  NuevoTab := TcxTabSheet.Create(pageCartillas);
  with NuevoTab do
  begin
    pagecontrol := pageCartillas;
    Parent := pageCartillas;
    PageIndex := pageCartillas.ActivePageIndex;
  end;
  // el parent sera la nueva pestaña
  Form.Parent := NuevoTab;
  with Form do
  begin
    Align := alClient;
    // asignar caption al tabsheet creado
    NuevoTab.Caption := Caption;   //Espacio necesario para que salga la X de cerrar
    Show;
  end;
  pageCartillas.ActivePage := NuevoTab;
  Result := NuevoTab;
end;

procedure TFrmCartillas.irATab(pNombreTab: string);
var
  I: Integer;
begin
  for I := 0 to pageCartillas.PageCount - 1 do
  begin
    if Trim(pageCartillas.Pages[I].Caption) = Trim(pNombreTab) then
    begin
      pageCartillas.ActivePageIndex := I;
      Break;
    end;
  end;
end;

end.
