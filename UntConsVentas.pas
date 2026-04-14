unit UntConsVentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MidasLib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TFrmConsVentas = class(TForm)
    pageConsVentas: TcxPageControl;
    TabConsVentas: TcxTabSheet;
    BtnVentasXDia: TcxButton;
    BtnVentasXMarca: TcxButton;
    BtnOrdenesXFinal: TcxButton;
    BtnMasVendidos: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // función para crear las pestañas
    function pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
    procedure BtnVentasXDiaClick(Sender: TObject);
    procedure pageConsVentasCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure BtnVentasXMarcaClick(Sender: TObject);
    procedure BtnOrdenesXFinalClick(Sender: TObject);
    procedure BtnMasVendidosClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
    procedure irATab(pNombreTab : string);
  public
    { Public declarations }
  end;

var
  FrmConsVentas: TFrmConsVentas;
  NuevoTab: TcxTabSheet;

implementation

{$R *.dfm}

uses UntConsVentasXDia, UntConsMarcas, UntDmGlobal, UntConsOrdenesFinalizar,
  UntConsMasVendidos;

{ TFrmConsVentas }

procedure TFrmConsVentas.BtnMasVendidosClick(Sender: TObject);
const
  vTexto = 'Productos más Vendidos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,19) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmConsMasVendidos = nil then
      begin
        FrmConsMasVendidos := TFrmConsMasVendidos.Create(Self);
        pestanaNueva(FrmConsMasVendidos, vTexto);
      end
      else
      begin
        irATab(vTexto);
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
//  if FrmConsMasVendidos = nil then
//  begin
//    FrmConsMasVendidos := TFrmConsMasVendidos.Create(Self);
//    pestanaNueva(FrmConsMasVendidos, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

procedure TFrmConsVentas.BtnOrdenesXFinalClick(Sender: TObject);
const
  vTexto = 'Ordenes por Finalizar';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,18) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmConsOrdenesFinalizar = nil then
      begin
        FrmConsOrdenesFinalizar := TFrmConsOrdenesFinalizar.Create(Self);
        pestanaNueva(FrmConsOrdenesFinalizar, vTexto);
      end
      else
      begin
        irATab(vTexto);
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
//  if FrmConsOrdenesFinalizar = nil then
//  begin
//    FrmConsOrdenesFinalizar := TFrmConsOrdenesFinalizar.Create(Self);
//    pestanaNueva(FrmConsOrdenesFinalizar, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

procedure TFrmConsVentas.BtnVentasXDiaClick(Sender: TObject);
const
  vTexto = 'Ventaspordia';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,16) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmConsVentasXDia = nil then
      begin
        FrmConsVentasXDia := TFrmConsVentasXDia.Create(Self);
        pestanaNueva(FrmConsVentasXDia, vTexto);
      end
      else
      begin
        irATab(vTexto);
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
//  if FrmConsVentasXDia = nil then
//  begin
//    FrmConsVentasXDia := TFrmConsVentasXDia.Create(Self);
//    pestanaNueva(FrmConsVentasXDia, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

procedure TFrmConsVentas.BtnVentasXMarcaClick(Sender: TObject);
const
  vTexto = 'ConsultaporMarcas';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,17) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmConsMarcas = nil then
      begin
        FrmConsMarcas := TFrmConsMarcas.Create(Self);
        pestanaNueva(FrmConsMarcas, vTexto);
      end
      else
      begin
        irATab(vTexto);
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
//  if FrmConsMarcas = nil then
//  begin
//    FrmConsMarcas := TFrmConsMarcas.Create(Self);
//    pestanaNueva(FrmConsMarcas, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

class function TFrmConsVentas.Execute: Boolean;
var
  FrmConsVentas: TFrmConsVentas;
begin
  FrmConsVentas := TFrmConsVentas.Create(nil);
  try
    Result := FrmConsVentas.ShowModal = mrOk;
  finally
    FrmConsVentas.Free;
  end;
end;

procedure TFrmConsVentas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
begin
  if pageConsVentas.Properties.PageCount > 0 then
  begin
    for I := 0 to pageConsVentas.PageCount - 1 do
    begin
      if pageConsVentas.Properties.Pages[i].Caption = 'Ventaspordia' then
      begin
        FrmConsVentasXDia.Close;
      end
      else if pageConsVentas.Properties.Pages[i].Caption = 'ConsultaporMarcas' then
      begin
        FrmConsMarcas.Close;
      end
      else if pageConsVentas.Properties.Pages[i].Caption = 'Ordenes por Finalizar' then
      begin
        FrmConsOrdenesFinalizar.Close;
      end
      else if pageConsVentas.Properties.Pages[i].Caption = 'Productos más Vendidos' then
      begin
        FrmConsMasVendidos.Close;
      end;
    end;
  end;
  Action := caFree;
  FrmConsVentas := nil;
end;

procedure TFrmConsVentas.pageConsVentasCanCloseEx(Sender: TObject;
  ATabIndex: Integer; var ACanClose: Boolean);
var
  vForma : TForm;
begin
  //Para que no cierre el tab del menu
  if pageConsVentas.ActivePage <> TabConsVentas then
  begin
    vForma := TForm(pageConsVentas.Pages[ATabIndex].Controls[0]);
    vForma.Close;
  end
  else
    ACanClose := False;
end;

function TFrmConsVentas.pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
var
  I: Integer;
begin
  NuevoTab := TcxTabSheet.Create(pageConsVentas);
  with NuevoTab do
  begin
    pagecontrol := pageConsVentas;
    Parent := pageConsVentas;
    PageIndex := pageConsVentas.ActivePageIndex;
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
  pageConsVentas.ActivePage := NuevoTab;
  Result := NuevoTab;
end;

procedure TFrmConsVentas.irATab(pNombreTab: string);
var
  I: Integer;
begin
  for I := 0 to pageConsVentas.PageCount - 1 do
  begin
    if Trim(pageConsVentas.Pages[I].Caption) = Trim(pNombreTab) then
    begin
      pageConsVentas.ActivePageIndex := I;
      Break;
    end;
  end;
end;

end.
