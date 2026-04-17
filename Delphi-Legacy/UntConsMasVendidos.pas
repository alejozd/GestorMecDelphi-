unit UntConsMasVendidos;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomPopupMenu,
  cxGridPopupMenu, Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBQuery, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSparkline, dxRangeTrackBar,
  cxTrackBar, dxRatingControl, cxProgressBar, cxMRUEdit, dxDBSparkline,
  dxColorEdit, cxCurrencyEdit;

type
  TFrmConsMasVendidos = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    BtnBuscar: TcxButton;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    GrdMasVenta: TcxGrid;
    TvlMasVenta: TcxGridDBTableView;
    LvlMasVenta: TcxGridLevel;
    QryMasVenta: TIBQuery;
    CdsMasVenta: TClientDataSet;
    DtsMasVenta: TDataSource;
    DspMasVenta: TDataSetProvider;
    popGrdMasVenta: TcxGridPopupMenu;
    QryMasVentaPRO_CODI: TIntegerField;
    QryMasVentaPRO_NOMBRE: TIBStringField;
    QryMasVentaGRU_CODI: TIntegerField;
    QryMasVentaGRU_NOMBRE: TIBStringField;
    QryMasVentaCANTIDAD: TIntegerField;
    CdsMasVentaPRO_CODI: TIntegerField;
    CdsMasVentaPRO_NOMBRE: TWideStringField;
    CdsMasVentaGRU_CODI: TIntegerField;
    CdsMasVentaGRU_NOMBRE: TWideStringField;
    CdsMasVentaCANTIDAD: TIntegerField;
    TvlMasVentaPRO_CODI: TcxGridDBColumn;
    TvlMasVentaPRO_NOMBRE: TcxGridDBColumn;
    TvlMasVentaGRU_CODI: TcxGridDBColumn;
    TvlMasVentaGRU_NOMBRE: TcxGridDBColumn;
    TvlMasVentaCANTIDAD: TcxGridDBColumn;
    QryMasVentaPRO_REFERENCIA: TIBStringField;
    CdsMasVentaPRO_REFERENCIA: TWideStringField;
    TvlMasVentaPRO_REFERENCIA: TcxGridDBColumn;
    QryMasVentaPRO_CLASE: TIntegerField;
    CdsMasVentaPRO_CLASE: TIntegerField;
    TvlMasVentaPRO_CLASE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure TvlMasVentaPRO_CLASEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsMasVendidos: TFrmConsMasVendidos;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmConsMasVendidos.BtnBuscarClick(Sender: TObject);
begin
  if DateIni.Date > DateFin.Date then
  begin
    Application.MessageBox('La fecha inicial no puede ser mayor que la final.', 'Advertencia', MB_ICONWARNING);
    DateFin.Date := DateIni.Date;
  end
  else
  begin
    CdsMasVenta.Close;
    QryMasVenta.Close;
    QryMasVenta.ParamByName('FECHAINI').AsDate := DateIni.Date;
    QryMasVenta.ParamByName('FECHAFIN').AsDate := DateFin.Date;
    CdsMasVenta.Open;
  end;
end;

class function TFrmConsMasVendidos.Execute: Boolean;
var
  FrmConsMasVendidos: TFrmConsMasVendidos;
begin
  FrmConsMasVendidos := TFrmConsMasVendidos.Create(nil);
  try
    Result := FrmConsMasVendidos.ShowModal = mrOk;
  finally
    FrmConsMasVendidos.Free;
  end;
end;

procedure TFrmConsMasVendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsMasVendidos := nil;
end;

procedure TFrmConsMasVendidos.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmConsMasVendidos.TvlMasVentaPRO_CLASEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlMasVenta.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlMasVenta.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlMasVenta.DataController.DisplayTexts[Integer(AList.Items[0]), TvlMasVentaPRO_CLASE.Index];
  end;
  if AText = '0' then
    AText := 'Producto'
  else if AText = '1' then
    AText := 'Servicio';
end;

end.
