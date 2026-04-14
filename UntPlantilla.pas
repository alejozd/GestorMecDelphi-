unit UntPlantilla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MidasLib;

type
  TFrmPlantilla = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlantilla: TFrmPlantilla;

implementation

{$R *.dfm}

{ TFrmPlantilla }

class function TFrmPlantilla.Execute: Boolean;
var
  FrmPlantilla: TFrmPlantilla;
begin
  FrmPlantilla := TFrmPlantilla.Create(nil);
  try
    Result := FrmPlantilla.ShowModal = mrOk;
  finally
    FrmPlantilla.Free;
  end;
end;

procedure TFrmPlantilla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmPlantilla := nil;
end;

end.
