unit UntListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, IBX.IBCustomDataSet, IBX.IBQuery, UntDmGlobal,
  cxDBLookupComboBox, MidasLib, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrmListaClientes = class(TForm)
    pnlListaClientes: TPanel;
    GridListaCli: TcxGrid;
    LvlListaCli: TcxGridLevel;
    TvlListaClie: TcxGridDBBandedTableView;
    TvlListaClieCLI_NUMDOC: TcxGridDBBandedColumn;
    TvlListaClieCLI_TEL_MOVIL: TcxGridDBBandedColumn;
    TvlListaClieCLI_TEL_FIJO: TcxGridDBBandedColumn;
    TvlListaClieCLI_DIRECCION: TcxGridDBBandedColumn;
    TvlListaClieCLI_CORREOE: TcxGridDBBandedColumn;
    TvlListaClieTD_ABREVIADO: TcxGridDBBandedColumn;
    TvlListaClieCLI_NOMBRE: TcxGridDBBandedColumn;
    TvlListaClieVXC_PLACA: TcxGridDBBandedColumn;
    TvlListaClieMR_NOMBRE: TcxGridDBBandedColumn;
    TvlListaClieLI_NOMBRE: TcxGridDBBandedColumn;
    procedure TvlListaClieCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TvlListaClieKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaClientes: TFrmListaClientes;

implementation

{$R *.dfm}

uses UntOrdenTrabajo;

{ TFrmListaClientes }

procedure TFrmListaClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := mrCancel;
end;

procedure TFrmListaClientes.TvlListaClieCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult := mrOk;
end;

procedure TFrmListaClientes.TvlListaClieKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    ModalResult := mrOk;
end;

end.
