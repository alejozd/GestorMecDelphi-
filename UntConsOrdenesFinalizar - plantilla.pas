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
  Vcl.ExtCtrls;

type
  TFrmConsOrdenesFinalizar = class(TForm)
    pnlSuperior: TPanel;
    cxLabel3: TcxLabel;
    BtnBuscar: TcxButton;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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

end.
