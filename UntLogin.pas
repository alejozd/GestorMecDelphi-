unit UntLogin;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxLabel, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxDBEdit, cxImage, dxGDIPlusClasses;

type
  TFrmLogin = class(TForm)
    BtnIngresar: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ImgFondo: TcxImage;
    EdtUsuario: TcxTextEdit;
    EdtPassword: TcxTextEdit;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    ImgSalir: TcxImage;
    ImgVerPassword: TcxImage;
    procedure BtnIngresarClick(Sender: TObject);
    procedure EdtUsuarioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ImgVerPasswordMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgVerPasswordMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UntDmGlobal;

procedure TFrmLogin.BtnIngresarClick(Sender: TObject);
begin
  if DmGlobal.LogearUsuario(EdtUsuario.Text, EdtPassword.Text) then
  begin
    ModalResult := mrOk;
  end
  else
    MessageBox(Handle, 'Usuario o Password no encontrados, verifique por favor.', 'Advertencia', MB_OK+MB_ICONWARNING);
end;

procedure TFrmLogin.EdtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure TFrmLogin.EdtUsuarioExit(Sender: TObject);
begin
  if DmGlobal.ExisteUsuario(EdtUsuario.Text) then
  begin
    EdtPassword.SetFocus;
  end
  else
  begin
    if EdtUsuario.Text <> '' then
    begin
//      MessageBox(Handle, 'Usuario no encontrado, verifique por favor.', 'Advertencia', MB_OK+MB_ICONWARNING);
      MessageBox(0,PChar('El usuario ' + EdtUsuario.Text + ' no fué encontrado, verifique por favor.'),
        'Advertencia', mb_ok + mb_iconinformation);
      EdtUsuario.SelectAll;
    end;
  end;
end;

procedure TFrmLogin.EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var
  f: HRGN;
begin
  FrmLogin.Borderstyle := bsNone;
  f := CreateRoundRectRgn(
          0,            // x-coordinate of the region's upper-left corner
          0,            // y-coordinate of the region's upper-left corner
          clientwidth,  // x-coordinate of the region's lower-right corner
          clientheight, // y-coordinate of the region's lower-right corner
          40,           // height of ellipse for rounded corners
          40);          // width of ellipse for rounded corners
  SetWindowRgn(Handle,f,True);
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  EdtUsuario.SetFocus;
end;

procedure TFrmLogin.ImgSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.ImgVerPasswordMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  EdtPassword.Properties.EchoMode := eemNormal;
end;

procedure TFrmLogin.ImgVerPasswordMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  EdtPassword.Properties.EchoMode := eemPassword;
end;

end.
