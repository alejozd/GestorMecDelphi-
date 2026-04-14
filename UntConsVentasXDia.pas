unit UntConsVentasXDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, MidasLib, IBX.IBCustomDataSet, IBX.IBQuery, cxCurrencyEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink, scExcelExport;

type
  TFrmConsVentasXDia = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel1: TcxLabel;
    BtnBuscar: TcxButton;
    GrdVentasDia: TcxGrid;
    TvlVentasDia: TcxGridDBTableView;
    LvlVentasDia: TcxGridLevel;
    QryConsVentxDia: TIBQuery;
    DtsConsVentxDia: TDataSource;
    QryConsVentxDiaOTM_CLASE_DOC: TSmallintField;
    QryConsVentxDiaOTM_NUME: TIntegerField;
    QryConsVentxDiaCLI_NUMDOC: TIBStringField;
    QryConsVentxDiaOTM_FECHA: TDateTimeField;
    QryConsVentxDiaVXC_PLACA: TIBStringField;
    QryConsVentxDiaMR_NOMBRE: TIBStringField;
    QryConsVentxDiaLI_NOMBRE: TIBStringField;
    QryConsVentxDiaOTM_KILOM: TIBStringField;
    QryConsVentxDiaOTM_OBSERV: TIBStringField;
    QryConsVentxDiaOTM_SUBT: TIBBCDField;
    QryConsVentxDiaOTM_VR_IVA: TIBBCDField;
    QryConsVentxDiaOTM_VR_DESC: TIBBCDField;
    QryConsVentxDiaOTM_VR_TOTAL: TIBBCDField;
    QryConsVentxDiaFP_NOMBRE: TIBStringField;
    QryConsVentxDiaOTM_ESTADO: TIntegerField;
    QryConsVentxDiaOTM_FECHA_VENCE: TDateTimeField;
    QryConsVentxDiaOTM_ANULADO: TIntegerField;
    TvlVentasDiaOTM_CLASE_DOC: TcxGridDBColumn;
    TvlVentasDiaOTM_NUME: TcxGridDBColumn;
    TvlVentasDiaCLI_NOMBRE: TcxGridDBColumn;
    TvlVentasDiaCLI_NUMDOC: TcxGridDBColumn;
    TvlVentasDiaOTM_FECHA: TcxGridDBColumn;
    TvlVentasDiaVXC_PLACA: TcxGridDBColumn;
    TvlVentasDiaMR_NOMBRE: TcxGridDBColumn;
    TvlVentasDiaLI_NOMBRE: TcxGridDBColumn;
    TvlVentasDiaOTM_KILOM: TcxGridDBColumn;
    TvlVentasDiaOTM_OBSERV: TcxGridDBColumn;
    TvlVentasDiaOTM_SUBT: TcxGridDBColumn;
    TvlVentasDiaOTM_VR_IVA: TcxGridDBColumn;
    TvlVentasDiaOTM_VR_DESC: TcxGridDBColumn;
    TvlVentasDiaOTM_VR_TOTAL: TcxGridDBColumn;
    TvlVentasDiaFP_NOMBRE: TcxGridDBColumn;
    TvlVentasDiaOTM_ESTADO: TcxGridDBColumn;
    TvlVentasDiaOTM_FECHA_VENCE: TcxGridDBColumn;
    TvlVentasDiaOTM_ANULADO: TcxGridDBColumn;
    popGrdVentxDia: TcxGridPopupMenu;
    BtnExpExcel: TcxButton;
    ExpDatos: TscExcelExport;
    QryConsVentxDiaCLI_NOMBRE: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TvlVentasDiaOTM_CLASE_DOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvlVentasDiaOTM_ESTADOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnExpExcelClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsVentasXDia: TFrmConsVentasXDia;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmConsVentasXDia.BtnBuscarClick(Sender: TObject);
begin
  QryConsVentxDia.Close;
  QryConsVentxDia.ParamByName('FECHA').AsDate := DateIni.Date;
  QryConsVentxDia.Open;
  TvlVentasDia.ApplyBestFit;
end;

procedure TFrmConsVentasXDia.BtnExpExcelClick(Sender: TObject);
begin
  ExportGridToExcel('VentasXDia', GrdVentasDia);
//  try
//    ExpDatos.ExcelVisible:=True;
//    ExpDatos.LoadDefaultProperties;
//    ExpDatos.Dataset:=QryConsVentxDia ;
//    ExpDatos.WorksheetName:='TscExcelExport DEMO 1';
//    ExpDatos.ExportDataset;
//  finally
//    ExpDatos.Disconnect;
//  end;
end;

class function TFrmConsVentasXDia.Execute: Boolean;
var
  FrmConsVentasXDia: TFrmConsVentasXDia;
begin
  FrmConsVentasXDia := TFrmConsVentasXDia.Create(nil);
  try
    Result := FrmConsVentasXDia.ShowModal = mrOk;
  finally
    FrmConsVentasXDia.Free;
  end;
end;

procedure TFrmConsVentasXDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsVentasXDia := nil;
end;

procedure TFrmConsVentasXDia.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
end;

procedure TFrmConsVentasXDia.TvlVentasDiaOTM_CLASE_DOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlVentasDia.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlVentasDia.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlVentasDia.DataController.DisplayTexts[Integer(AList.Items[0]), TvlVentasDiaOTM_CLASE_DOC.Index];
  end;
  if AText = '0' then
    AText := 'Orden de Trabajo'
  else if AText = '1' then
    AText := 'Factura';
end;

procedure TFrmConsVentasXDia.TvlVentasDiaOTM_ESTADOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlVentasDia.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlVentasDia.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlVentasDia.DataController.DisplayTexts[Integer(AList.Items[0]), TvlVentasDiaOTM_ESTADO.Index];
  end;
  if AText = '0' then
    AText := 'En Proceso'
  else if AText = '1' then
    AText := 'Aplicado';
end;

end.
