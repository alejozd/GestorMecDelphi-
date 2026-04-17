unit UntConsInventario;

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
  TFrmConsInventario = class(TForm)
    pageConsInventario: TcxPageControl;
    TabConsInventario: TcxTabSheet;
    BtnMovInventario: TcxButton;
    BtnConsStock: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // función para crear las pestañas
    function pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
    procedure BtnMovInventarioClick(Sender: TObject);
    procedure pageConsInventarioCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure BtnConsStockClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
    procedure irATab(pNombreTab : string);
  public
    { Public declarations }
  end;

var
  FrmConsInventario: TFrmConsInventario;
  NuevoTab: TcxTabSheet;

implementation

{$R *.dfm}

uses UntMovInventario, UntConsStockInv, UntDmGlobal;

{ TFrmConsInventario }

procedure TFrmConsInventario.BtnMovInventarioClick(Sender: TObject);
const
  vTexto = 'Movimiento Inventarios';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,11) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmMovInventario = nil then
      begin
        FrmMovInventario := TFrmMovInventario.Create(Self);
        pestanaNueva(FrmMovInventario, vTexto);
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

//  if FrmMovInventario = nil then
//  begin
//    FrmMovInventario := TFrmMovInventario.Create(Self);
//    pestanaNueva(FrmMovInventario, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

procedure TFrmConsInventario.BtnConsStockClick(Sender: TObject);
const
  vTexto = 'Consulta de Stock';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi,12) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmConsStockInv = nil then
      begin
        FrmConsStockInv := TFrmConsStockInv.Create(Self);
        pestanaNueva(FrmConsStockInv, vTexto);
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

//  if FrmConsStockInv = nil then
//  begin
//    FrmConsStockInv := TFrmConsStockInv.Create(Self);
//    pestanaNueva(FrmConsStockInv, vTexto);
//  end
//  else
//  begin
//    irATab(vTexto);
//  end;
end;

class function TFrmConsInventario.Execute: Boolean;
var
  FrmConsInventario: TFrmConsInventario;
begin
  FrmConsInventario := TFrmConsInventario.Create(nil);
  try
    Result := FrmConsInventario.ShowModal = mrOk;
  finally
    FrmConsInventario.Free;
  end;
end;

procedure TFrmConsInventario.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
begin
  if pageConsInventario.Properties.PageCount > 0 then
  begin
    for I := 0 to pageConsInventario.PageCount - 1 do
    begin
      if pageConsInventario.Properties.Pages[i].Caption = 'Movimiento Inventarios' then
      begin
        FrmMovInventario.Close;
      end
      else if pageConsInventario.Properties.Pages[i].Caption = 'Consulta de Stock' then
      begin
        FrmConsStockInv.Close;
      end;
    end;
  end;
  Action := caFree;
  FrmConsInventario := nil;
end;

procedure TFrmConsInventario.pageConsInventarioCanCloseEx(Sender: TObject;
  ATabIndex: Integer; var ACanClose: Boolean);
var
  vForma : TForm;
begin
  //Para que no cierre el tab del menu
  if pageConsInventario.ActivePage <> TabConsInventario then
  begin
    vForma := TForm(pageConsInventario.Pages[ATabIndex].Controls[0]);
    vForma.Close;
  end
  else
    ACanClose := False;
end;

function TFrmConsInventario.pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
var
  I: Integer;
begin
  NuevoTab := TcxTabSheet.Create(pageConsInventario);
  with NuevoTab do
  begin
    pagecontrol := pageConsInventario;
    Parent := pageConsInventario;
    PageIndex := pageConsInventario.ActivePageIndex;
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
  pageConsInventario.ActivePage := NuevoTab;
  Result := NuevoTab;
end;

procedure TFrmConsInventario.irATab(pNombreTab: string);
var
  I: Integer;
begin
  for I := 0 to pageConsInventario.PageCount - 1 do
  begin
    if Trim(pageConsInventario.Pages[I].Caption) = Trim(pNombreTab) then
    begin
      pageConsInventario.ActivePageIndex := I;
      Break;
    end;
  end;
end;

end.
