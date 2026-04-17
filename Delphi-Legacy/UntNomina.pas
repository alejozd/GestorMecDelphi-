unit UntNomina;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel,
  Vcl.ExtCtrls, IBX.IBCustomDataSet, IBX.IBQuery, UntDmGlobal, cxCurrencyEdit;

type
  TFrmNomina = class(TForm)
    pnlSuperior: TPanel;
    BtnBuscar: TcxButton;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    GrdEmpleados: TcxGrid;
    TvlEmpleados: TcxGridDBTableView;
    LvlEmpleados: TcxGridLevel;
    QryEmpleados: TIBQuery;
    DtsEmpleados: TDataSource;
    QryEmpleadosEMP_CODI: TIntegerField;
    QryEmpleadosEMP_NOMBRE: TIBStringField;
    QryEmpleadosPRO_NOMBRE: TIBStringField;
    QryEmpleadosOTD_CANT: TIBBCDField;
    QryEmpleadosOTD_VR_TOTAL: TIBBCDField;
    QryEmpleadosOTM_FECHA: TDateTimeField;
    TvlEmpleadosEMP_CODI: TcxGridDBColumn;
    TvlEmpleadosEMP_NOMBRE: TcxGridDBColumn;
    TvlEmpleadosPRO_NOMBRE: TcxGridDBColumn;
    TvlEmpleadosOTD_CANT: TcxGridDBColumn;
    TvlEmpleadosOTD_VR_TOTAL: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNomina: TFrmNomina;

implementation

{$R *.dfm}

{ TFrmNomina }

procedure TFrmNomina.BtnBuscarClick(Sender: TObject);
begin
  try
    if DateIni.Date > DateFin.Date then
    begin
      Application.MessageBox('La fecha inicial no puede ser mayor que la final.', 'Advertencia', MB_ICONWARNING);
      DateFin.Date := DateIni.Date;
    end
    else
    begin
      QryEmpleados.Close;
      QryEmpleados.ParamByName('FECHAINI').AsDate := DateIni.Date;
      QryEmpleados.ParamByName('FECHAFIN').AsDate := DateFin.Date;
      QryEmpleados.Open;
      TvlEmpleados.ViewData.Expand(True);
    end;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmNomina.BtnBuscarClick. ' + e.Message);
    end;
  end;
end;

class function TFrmNomina.Execute: Boolean;
var
  FrmNomina: TFrmNomina;
begin
  FrmNomina := TFrmNomina.Create(nil);
  try
    Result := FrmNomina.ShowModal = mrOk;
  finally
    FrmNomina.Free;
  end;
end;

procedure TFrmNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmNomina := nil;
end;

procedure TFrmNomina.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

end.
