unit UntUtilidades;

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
  TFrmUtilidades = class(TForm)
    pageUtilidades: TcxPageControl;
    pnlSuperior: TPanel;
    Lbltitulo: TcxLabel;
    pnlBotones: TPanel;
    BtnUsuarios: TcxButton;
    BtnAnularDocs: TcxButton;
    BtnNomina: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // función para crear las pestañas
    function pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
    procedure BtnUsuariosClick(Sender: TObject);
    procedure BtnAnularDocsClick(Sender: TObject);
    procedure pageUtilidadesCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure BtnNominaClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
    procedure irATab(pNombreTab : string);
  public
    { Public declarations }
    procedure CerrarPestana;
  end;

var
  FrmUtilidades: TFrmUtilidades;
  NuevoTab: TcxTabSheet;

implementation

{$R *.dfm}

uses UntDmGlobal, UntAnularDocumentos, UntUsuarios, UntNomina;

procedure TFrmUtilidades.CerrarPestana;
var
  I: Integer;
begin
  //Para cerrar las pestañas abiertas
  for I := 0 to pageUtilidades.PageCount - 1 do
  begin
    TForm(pageUtilidades.Pages[I].Controls[0]).Close;
  end;
end;

procedure TFrmUtilidades.BtnAnularDocsClick(Sender: TObject);
const
  vTexto = 'Anular Documentos';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actCiudades.Tag);  //21
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 7) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmAnularDocumentos = nil then
      begin
        FrmAnularDocumentos := TFrmAnularDocumentos.Create(Self);
        pestanaNueva(FrmAnularDocumentos, vTexto);
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
end;

procedure TFrmUtilidades.BtnNominaClick(Sender: TObject);
const
  vTexto = 'Nomina';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 22) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmNomina = nil then
      begin
        FrmNomina := TFrmNomina.Create(Self);
        pestanaNueva(FrmNomina, vTexto);
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
end;

procedure TFrmUtilidades.BtnUsuariosClick(Sender: TObject);
const
  vTexto = 'Usuarios';
var
  vPermisos : TPermisos;
begin
//  SelOpcion(actTipDocs.Tag);  //20
  if DmGlobal.ValidaPermiso(DmGlobal.FUsuCodi, 1) then
  begin
    vPermisos := DmGlobal.vGPermisos;
    if vPermisos.rLeer = 1 then
    begin
      if FrmUsuarios = nil then
      begin
        FrmUsuarios := TFrmUsuarios.Create(Self);
        pestanaNueva(FrmUsuarios, vTexto);
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
end;

class function TFrmUtilidades.Execute: Boolean;
var
  FrmUtilidades: TFrmUtilidades;
begin
  FrmUtilidades := TFrmUtilidades.Create(nil);
  try
    Result := FrmUtilidades.ShowModal = mrOk;
  finally
    FrmUtilidades.Free;
  end;
end;

procedure TFrmUtilidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CerrarPestana;
  Action := caFree;
  FrmUtilidades := nil;
end;

procedure TFrmUtilidades.pageUtilidadesCanCloseEx(Sender: TObject;
  ATabIndex: Integer; var ACanClose: Boolean);
var
  vForma : TForm;
begin
  vForma := TForm(pageUtilidades.Pages[ATabIndex].Controls[0]);
  vForma.Close;
end;

function TFrmUtilidades.pestanaNueva(Form: TForm; Caption: string): TcxTabSheet;
var
  I: Integer;
begin
  NuevoTab := TcxTabSheet.Create(pageUtilidades);
  with NuevoTab do
  begin
    pagecontrol := pageUtilidades;
    Parent := pageUtilidades;
    PageIndex := pageUtilidades.ActivePageIndex;
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
  pageUtilidades.ActivePage := NuevoTab;
  Result := NuevoTab;
end;

procedure TFrmUtilidades.irATab(pNombreTab: string);
var
  I: Integer;
begin
  for I := 0 to pageUtilidades.PageCount - 1 do
  begin
    if Trim(pageUtilidades.Pages[I].Caption) = Trim(pNombreTab) then
    begin
      pageUtilidades.ActivePageIndex := I;
      Break;
    end;
  end;
end;

end.
