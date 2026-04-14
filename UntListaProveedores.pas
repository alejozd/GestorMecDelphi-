unit UntListaProveedores;

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
  cxDBLookupComboBox, MidasLib;

type
  TFrmListaProveedores = class(TForm)
    pnlListaProveedores: TPanel;
    GridListaPrv: TcxGrid;
    TvlListaPrv: TcxGridDBTableView;
    LvlListaPrv: TcxGridLevel;
    TvlListaPrvPRV_NUMDOC: TcxGridDBColumn;
    TvlListaPrvPRV_NOMBRE: TcxGridDBColumn;
    TvlListaPrvPRV_TEL_MOVIL: TcxGridDBColumn;
    TvlListaPrvPRV_TEL_FIJO: TcxGridDBColumn;
    TvlListaPrvPRV_DIRECCION: TcxGridDBColumn;
    TvlListaPrvPRV_CORREOE: TcxGridDBColumn;
    TvlListaPrvPRV_CONTACTO: TcxGridDBColumn;
    TvlListaPrvPRV_OBSERVACIONES: TcxGridDBColumn;
    TvlListaPrvTD_ABREVIADO: TcxGridDBColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TvlListaPrvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaProveedores: TFrmListaProveedores;

implementation

{$R *.dfm}

uses UntEntradas;

{ TFrmListaProveedores }

procedure TFrmListaProveedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #27 then   //'#$1B'
//  begin
//    ModalResult := mrCancel;
//  end;
end;

procedure TFrmListaProveedores.TvlListaPrvDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
