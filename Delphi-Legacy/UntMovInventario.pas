unit UntMovInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxNavigator,
  cxDBNavigator, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  IBX.IBCustomDataSet, IBX.IBQuery, cxCurrencyEdit, cxGridCustomPopupMenu,
  cxGridPopupMenu, MidasLib;

type
  TFrmMovInventario = class(TForm)
    pnlSuperior: TPanel;
    DateIni: TcxDateEdit;
    DateFin: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    BtnBuscar: TcxButton;
    GrdMovInv: TcxGrid;
    TvlMovInv: TcxGridDBTableView;
    LvlMovInv: TcxGridLevel;
    cxLabel3: TcxLabel;
    QryMovInv: TIBQuery;
    DtsMovInv: TDataSource;
    QryMovInvMVI_CLASE_DOCU: TIntegerField;
    QryMovInvCLASE: TIBStringField;
    QryMovInvMVI_FECHA_DOCU: TDateTimeField;
    QryMovInvMVI_NUM_DOCU: TIBStringField;
    QryMovInvPRO_CODI: TIntegerField;
    QryMovInvPRO_NOMBRE: TIBStringField;
    QryMovInvMVI_CANTIDAD: TIBBCDField;
    QryMovInvBOD_CODI: TIntegerField;
    QryMovInvBOD_NOMBRE: TIBStringField;
    QryMovInvMVI_FECHA_SIST: TDateTimeField;
    QryMovInvEMP_CODI: TIntegerField;
    TvlMovInvMVI_CLASE_DOCU: TcxGridDBColumn;
    TvlMovInvCLASE: TcxGridDBColumn;
    TvlMovInvMVI_FECHA_DOCU: TcxGridDBColumn;
    TvlMovInvMVI_NUM_DOCU: TcxGridDBColumn;
    TvlMovInvPRO_CODI: TcxGridDBColumn;
    TvlMovInvPRO_NOMBRE: TcxGridDBColumn;
    TvlMovInvMVI_CANTIDAD: TcxGridDBColumn;
    TvlMovInvBOD_CODI: TcxGridDBColumn;
    TvlMovInvBOD_NOMBRE: TcxGridDBColumn;
    TvlMovInvMVI_FECHA_SIST: TcxGridDBColumn;
    TvlMovInvEMP_CODI: TcxGridDBColumn;
    popGrdMovInv: TcxGridPopupMenu;
    TvlMovInvEMP_NOMBRE: TcxGridDBColumn;
    QryMovInvEMP_NOMBRE: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure TvlMovInvMVI_CANTIDADCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovInventario: TFrmMovInventario;

implementation

{$R *.dfm}

uses UntDmGlobal;

{ TFrmMovInventario }

procedure TFrmMovInventario.BtnBuscarClick(Sender: TObject);
begin
  QryMovInv.Close;
  QryMovInv.ParamByName('fechaIni').AsDate := DateIni.Date;
  QryMovInv.ParamByName('fechaFin').AsDate := DateFin.Date;
  QryMovInv.Open;
//  TvlMovInv.ApplyBestFit;
end;

class function TFrmMovInventario.Execute: Boolean;
var
  FrmMovInventario: TFrmMovInventario;
begin
  FrmMovInventario := TFrmMovInventario.Create(nil);
  try
    Result := FrmMovInventario.ShowModal = mrOk;
  finally
    FrmMovInventario.Free;
  end;
end;

procedure TFrmMovInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmMovInventario := nil;
end;

procedure TFrmMovInventario.FormShow(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmMovInventario.TvlMovInvMVI_CANTIDADCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Value < 0 then
    ACanvas.Font.Color := clRed;
end;

end.
