unit UntConsMarcas;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxCalendar, cxCurrencyEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  Vcl.ExtCtrls, IBX.IBCustomDataSet, IBX.IBQuery, cxGridChartView,
  cxGridDBChartView, cxPivotGridChartConnection, Datasnap.Provider,
  Datasnap.DBClient, cxSplitter;

type
  TFrmConsMarcas = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    BtnBuscar: TcxButton;
    popGrdVentxMarca: TcxGridPopupMenu;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    QryConsVentxMarca: TIBQuery;
    DtsConsVentxMarca: TDataSource;
    QryConsVentxMarcaMR_NOMBRE: TIBStringField;
    QryConsVentxMarcaLI_NOMBRE: TIBStringField;
    QryConsVentxMarcaCANTIDAD: TIntegerField;
    PnlGrilla: TPanel;
    GrdVentasMarca: TcxGrid;
    TvlVentasMarca: TcxGridDBTableView;
    TvlVentasMarcaMR_NOMBRE: TcxGridDBColumn;
    TvlVentasMarcaLI_NOMBRE: TcxGridDBColumn;
    TvlVentasMarcaCANTIDAD: TcxGridDBColumn;
    LvlVentasMarca: TcxGridLevel;
    PnlGrafico: TPanel;
    GridGrafico: TcxGrid;
    LvlGrafico: TcxGridLevel;
    ChGrafico: TcxGridDBChartView;
    ChGraficoSeries1: TcxGridDBChartSeries;
    CdsConsVentxMarca: TClientDataSet;
    DspConsVentxMarca: TDataSetProvider;
    CdsConsVentxMarcaMR_NOMBRE: TWideStringField;
    CdsConsVentxMarcaLI_NOMBRE: TWideStringField;
    CdsConsVentxMarcaCANTIDAD: TIntegerField;
    QryConsVentxMarcaMARCAV: TIBStringField;
    CdsConsVentxMarcaMARCAV: TWideStringField;
    TvlVentasMarcaMARCAV: TcxGridDBColumn;
    GrdProd: TcxGrid;
    TvProd: TcxGridDBTableView;
    LvlProd: TcxGridLevel;
    QryProd: TIBQuery;
    DtsProd: TDataSource;
    CdsProd: TClientDataSet;
    DspProd: TDataSetProvider;
    QryProdMARCA: TIBStringField;
    QryProdLINEA: TIBStringField;
    QryProdPRODUCTO: TIBStringField;
    QryProdCANTIDAD: TIntegerField;
    CdsProdMARCA: TWideStringField;
    CdsProdLINEA: TWideStringField;
    CdsProdPRODUCTO: TWideStringField;
    CdsProdCANTIDAD: TIntegerField;
    GridProductos: TcxGrid;
    TvProductos: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    LvlProductos: TcxGridLevel;
    TvProdPRODUCTO: TcxGridDBColumn;
    TvProdCANTIDAD: TcxGridDBColumn;
    QryConsVentxMarcaMR_CODI: TIntegerField;
    QryConsVentxMarcaLI_CODI: TIntegerField;
    CdsConsVentxMarcaMR_CODI: TIntegerField;
    CdsConsVentxMarcaLI_CODI: TIntegerField;
    SplitGrafico: TcxSplitter;
    popGrdProductos: TcxGridPopupMenu;
    popGridPie: TcxGridPopupMenu;
    popGridBarras: TcxGridPopupMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsConsVentxMarcaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
    procedure buscaDetalle(pMarca, pLinea : Integer);
  public
    { Public declarations }
  end;

var
  FrmConsMarcas: TFrmConsMarcas;

implementation

{$R *.dfm}

uses UntDmGlobal;

{ TFrmConsMarcas }

procedure TFrmConsMarcas.BtnBuscarClick(Sender: TObject);
begin
  try
    if DateIni.Date > DateFin.Date then
    begin
      Application.MessageBox('La fecha inicial no puede ser mayor que la final.', 'Advertencia', MB_ICONWARNING);
      DateFin.Date := DateIni.Date;
    end
    else
    begin
      CdsConsVentxMarca.Close;
      QryConsVentxMarca.Close;
      QryConsVentxMarca.ParamByName('FECHAINI').AsDate := DateIni.Date;
      QryConsVentxMarca.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  //    QryConsVentxMarca.Open;
      CdsConsVentxMarca.Open;
    end;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmConsMarcas.BtnBuscarClick. ' + e.Message);
    end;
  end;
end;

procedure TFrmConsMarcas.buscaDetalle(pMarca, pLinea: Integer);
begin
  try
    CdsProd.Close;
    QryProd.Close;
    QryProd.ParamByName('mr_codi').AsInteger := pMarca;
    QryProd.ParamByName('li_codi').AsInteger := pLinea;
    QryProd.ParamByName('FECHAINI').AsDate := DateIni.Date;
    QryProd.ParamByName('FECHAFIN').AsDate := DateFin.Date;
    CdsProd.Open;
  except on E: Exception do
    begin
      raise Exception.Create('Error en: ' + 'FrmConsMarcas.buscaDetalle. ' + e.Message);
    end;
  end;
end;

procedure TFrmConsMarcas.CdsConsVentxMarcaAfterScroll(DataSet: TDataSet);
begin
  buscaDetalle(CdsConsVentxMarcaMR_CODI.AsInteger, CdsConsVentxMarcaLI_CODI.AsInteger);
end;

class function TFrmConsMarcas.Execute: Boolean;
var
  FrmConsMarcas: TFrmConsMarcas;
begin
  FrmConsMarcas := TFrmConsMarcas.Create(nil);
  try
    Result := FrmConsMarcas.ShowModal = mrOk;
  finally
    FrmConsMarcas.Free;
  end;
end;

procedure TFrmConsMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsMarcas := nil;
end;

procedure TFrmConsMarcas.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

end.
