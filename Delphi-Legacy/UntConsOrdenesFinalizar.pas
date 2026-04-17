unit UntConsOrdenesFinalizar;

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
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, IBX.IBCustomDataSet, IBX.IBQuery, Datasnap.Provider, Datasnap.DBClient,
  cxCurrencyEdit, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFrmConsOrdenesFinalizar = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    BtnBuscar: TcxButton;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    GrdOrdPend: TcxGrid;
    TvlOrdPend: TcxGridDBTableView;
    LvlOrdPend: TcxGridLevel;
    QryOrdenes: TIBQuery;
    CdsOrdenes: TClientDataSet;
    DspOrdenes: TDataSetProvider;
    DtsOrdenes: TDataSource;
    QryOrdenesCLI_CODI: TIntegerField;
    QryOrdenesFP_CODI: TIntegerField;
    QryOrdenesOTM_CLASE_DOC: TSmallintField;
    QryOrdenesOTM_CODI: TIntegerField;
    QryOrdenesOTM_ESTADO: TIntegerField;
    QryOrdenesOTM_FECHA: TDateTimeField;
    QryOrdenesOTM_KILOM: TIBStringField;
    QryOrdenesOTM_NUME: TIntegerField;
    QryOrdenesOTM_OBSERV: TIBStringField;
    QryOrdenesOTM_SUBT: TIBBCDField;
    QryOrdenesOTM_VR_DESC: TIBBCDField;
    QryOrdenesOTM_VR_IVA: TIBBCDField;
    QryOrdenesOTM_VR_TOTAL: TIBBCDField;
    QryOrdenesVXC_CODI: TIntegerField;
    QryOrdenesCLI_CORREOE: TIBStringField;
    QryOrdenesCLI_NUMDOC: TIBStringField;
    QryOrdenesCLI_TEL_FIJO: TIBStringField;
    QryOrdenesCLI_TEL_MOVIL: TIBStringField;
    QryOrdenesCOD_TIPDO: TIntegerField;
    QryOrdenesTD_ABREVIADO: TIBStringField;
    QryOrdenesVXC_PLACA: TIBStringField;
    QryOrdenesMR_NOMBRE: TIBStringField;
    QryOrdenesLI_NOMBRE: TIBStringField;
    QryOrdenesFP_NOMBRE: TIBStringField;
    CdsOrdenesCLI_CODI: TIntegerField;
    CdsOrdenesFP_CODI: TIntegerField;
    CdsOrdenesOTM_CLASE_DOC: TSmallintField;
    CdsOrdenesOTM_CODI: TIntegerField;
    CdsOrdenesOTM_ESTADO: TIntegerField;
    CdsOrdenesOTM_FECHA: TDateTimeField;
    CdsOrdenesOTM_KILOM: TWideStringField;
    CdsOrdenesOTM_NUME: TIntegerField;
    CdsOrdenesOTM_OBSERV: TWideStringField;
    CdsOrdenesOTM_SUBT: TBCDField;
    CdsOrdenesOTM_VR_DESC: TBCDField;
    CdsOrdenesOTM_VR_IVA: TBCDField;
    CdsOrdenesOTM_VR_TOTAL: TBCDField;
    CdsOrdenesVXC_CODI: TIntegerField;
    CdsOrdenesCLI_NOMBRE: TWideStringField;
    CdsOrdenesCLI_CORREOE: TWideStringField;
    CdsOrdenesCLI_DIRECCION: TWideStringField;
    CdsOrdenesCLI_NUMDOC: TWideStringField;
    CdsOrdenesCLI_TEL_FIJO: TWideStringField;
    CdsOrdenesCLI_TEL_MOVIL: TWideStringField;
    CdsOrdenesCOD_TIPDO: TIntegerField;
    CdsOrdenesTD_ABREVIADO: TWideStringField;
    CdsOrdenesVXC_PLACA: TWideStringField;
    CdsOrdenesMR_NOMBRE: TWideStringField;
    CdsOrdenesLI_NOMBRE: TWideStringField;
    CdsOrdenesFP_NOMBRE: TWideStringField;
    TvlOrdPendOTM_CLASE_DOC: TcxGridDBColumn;
    TvlOrdPendOTM_CODI: TcxGridDBColumn;
    TvlOrdPendOTM_ESTADO: TcxGridDBColumn;
    TvlOrdPendOTM_FECHA: TcxGridDBColumn;
    TvlOrdPendOTM_KILOM: TcxGridDBColumn;
    TvlOrdPendOTM_NUME: TcxGridDBColumn;
    TvlOrdPendOTM_OBSERV: TcxGridDBColumn;
    TvlOrdPendOTM_SUBT: TcxGridDBColumn;
    TvlOrdPendOTM_VR_DESC: TcxGridDBColumn;
    TvlOrdPendOTM_VR_IVA: TcxGridDBColumn;
    TvlOrdPendOTM_VR_TOTAL: TcxGridDBColumn;
    TvlOrdPendCLI_NOMBRE: TcxGridDBColumn;
    TvlOrdPendCLI_NUMDOC: TcxGridDBColumn;
    TvlOrdPendTD_ABREVIADO: TcxGridDBColumn;
    TvlOrdPendVXC_PLACA: TcxGridDBColumn;
    TvlOrdPendMR_NOMBRE: TcxGridDBColumn;
    TvlOrdPendLI_NOMBRE: TcxGridDBColumn;
    TvlOrdPendFP_NOMBRE: TcxGridDBColumn;
    popGrdOrdPend: TcxGridPopupMenu;
    QryOrdenesOTM_FECHA_VENCE: TDateTimeField;
    CdsOrdenesOTM_FECHA_VENCE: TDateTimeField;
    TvlOrdPendOTM_FECHA_VENCE: TcxGridDBColumn;
    QryOrdenesCLI_NOMBRE: TIBStringField;
    QryOrdenesCLI_DIRECCION: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TvlOrdPendOTM_CLASE_DOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsOrdenesFinalizar: TFrmConsOrdenesFinalizar;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmConsOrdenesFinalizar.BtnBuscarClick(Sender: TObject);
begin
  if DateIni.Date > DateFin.Date then
  begin
    Application.MessageBox('La fecha inicial no puede ser mayor que la final.', 'Advertencia', MB_ICONWARNING);
    DateFin.Date := DateIni.Date;
  end
  else
  begin
    CdsOrdenes.Close;
    QryOrdenes.Close;
    QryOrdenes.ParamByName('FECHAINI').AsDate := DateIni.Date;
    QryOrdenes.ParamByName('FECHAFIN').AsDate := DateFin.Date;
    CdsOrdenes.Open;
  end;
end;

class function TFrmConsOrdenesFinalizar.Execute: Boolean;
var
  FrmConsOrdenesFinalizar: TFrmConsOrdenesFinalizar;
begin
  FrmConsOrdenesFinalizar := TFrmConsOrdenesFinalizar.Create(nil);
  try
    Result := FrmConsOrdenesFinalizar.ShowModal = mrOk;
  finally
    FrmConsOrdenesFinalizar.Free;
  end;
end;

procedure TFrmConsOrdenesFinalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsOrdenesFinalizar := nil;
end;

procedure TFrmConsOrdenesFinalizar.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmConsOrdenesFinalizar.TvlOrdPendOTM_CLASE_DOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlOrdPend.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlOrdPend.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlOrdPend.DataController.DisplayTexts[Integer(AList.Items[0]), TvlOrdPendOTM_CLASE_DOC.Index];
  end;
  if AText = '0' then
    AText := 'Orden de Trabajo'
  else if AText = '1' then
    AText := 'Factura';
end;

end.
