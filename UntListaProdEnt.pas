unit UntListaProdEnt;

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
  cxDBLookupComboBox, cxCurrencyEdit, MidasLib, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  TFrmListaProdEnt = class(TForm)
    pnlListaProductos: TPanel;
    GridListaProd: TcxGrid;
    TvlListaProd: TcxGridDBTableView;
    LvlListaProd: TcxGridLevel;
    TvlListaProdPRO_CODI: TcxGridDBColumn;
    TvlListaProdPRO_NOMBRE: TcxGridDBColumn;
    TvlListaProdPRO_DESCRIPCION: TcxGridDBColumn;
    TvlListaProdPRO_REFERENCIA: TcxGridDBColumn;
    TvlListaProdPRO_COD_BARRAS: TcxGridDBColumn;
    TvlListaProdPRO_PRECIO: TcxGridDBColumn;
    TvlListaProdPRO_MAXIMO: TcxGridDBColumn;
    TvlListaProdPRO_MINIMO: TcxGridDBColumn;
    TvlListaProdPRO_IVA: TcxGridDBColumn;
    TvlListaProdST_CANTIDAD: TcxGridDBColumn;
    TvlListaProdBOD_NOMBRE: TcxGridDBColumn;
    TvlListaProdPRO_CLASE: TcxGridDBColumn;
    TvlListaProdPRO_MARCA: TcxGridDBColumn;
    TvlListaProdPRO_PRESENTACION: TcxGridDBColumn;
    TvlListaProdSALDO_REAL: TcxGridDBColumn;
    BtnCancelar: TcxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TvlListaProdDblClick(Sender: TObject);
    procedure TvlListaProdPRO_CLASEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvlListaProdKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaProdEnt: TFrmListaProdEnt;

implementation

{$R *.dfm}

uses UntEntradas;

{ TFrmListaProdEnt }

procedure TFrmListaProdEnt.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmListaProdEnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #27 then   //'#$1B'
//  begin
//    ModalResult := mrCancel;
//  end;
end;

procedure TFrmListaProdEnt.TvlListaProdDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmListaProdEnt.TvlListaProdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ModalResult := mrOk;
end;

procedure TFrmListaProdEnt.TvlListaProdPRO_CLASEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlListaProd.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlListaProd.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlListaProd.DataController.DisplayTexts[Integer(AList.Items[0]), TvlListaProdPRO_CLASE.Index];
  end;
  if AText = '0' then
    AText := 'Producto'
  else if AText = '1' then
    AText := 'Servicio';
end;

end.
