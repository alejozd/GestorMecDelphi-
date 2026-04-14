unit UntConsStockInv;

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
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, IBX.IBDatabase;

type
  TFrmConsStockInv = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    BtnBuscar: TcxButton;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    GrdStock: TcxGrid;
    TvlStock: TcxGridDBTableView;
    LvlStock: TcxGridLevel;
    QryStock: TIBQuery;
    CdsStock: TClientDataSet;
    DtsStock: TDataSource;
    DspStock: TDataSetProvider;
    popGrdStock: TcxGridPopupMenu;
    QryStockPRO_NOMBRE: TIBStringField;
    QryStockSALDO: TIBBCDField;
    QryStockPRO_CODI: TIntegerField;
    QryStockGRU_CODI: TIntegerField;
    QryStockGRU_NOMBRE: TIBStringField;
    CdsStockPRO_NOMBRE: TWideStringField;
    CdsStockSALDO: TBCDField;
    CdsStockPRO_CODI: TIntegerField;
    CdsStockGRU_CODI: TIntegerField;
    CdsStockGRU_NOMBRE: TWideStringField;
    TvlStockPRO_NOMBRE: TcxGridDBColumn;
    TvlStockSALDO: TcxGridDBColumn;
    TvlStockPRO_CODI: TcxGridDBColumn;
    TvlStockGRU_CODI: TcxGridDBColumn;
    TvlStockGRU_NOMBRE: TcxGridDBColumn;
    QryStockPRO_MAXIMO: TSmallintField;
    QryStockPRO_MINIMO: TSmallintField;
    CdsStockPRO_MAXIMO: TSmallintField;
    CdsStockPRO_MINIMO: TSmallintField;
    TvlStockPRO_MAXIMO: TcxGridDBColumn;
    TvlStockPRO_MINIMO: TcxGridDBColumn;
    TraStock: TIBTransaction;
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
  FrmConsStockInv: TFrmConsStockInv;

implementation

{$R *.dfm}

procedure TFrmConsStockInv.BtnBuscarClick(Sender: TObject);
begin
  if TraStock.InTransaction then
    TraStock.Active := False;
  QryStock.Close;
  CdsStock.Close;
  QryStock.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  CdsStock.Open;
end;

class function TFrmConsStockInv.Execute: Boolean;
var
  FrmConsStockInv: TFrmConsStockInv;
begin
  FrmConsStockInv := TFrmConsStockInv.Create(nil);
  try
    Result := FrmConsStockInv.ShowModal = mrOk;
  finally
    FrmConsStockInv.Free;
  end;
end;

procedure TFrmConsStockInv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsStockInv := nil;
end;

procedure TFrmConsStockInv.FormShow(Sender: TObject);
begin
  DateFin.Date := Now;
end;

end.
