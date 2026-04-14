unit UntAnularDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, dxCustomTileControl,
  cxClasses, dxTileControl, cxPC, cxContainer, cxEdit, cxLabel, dxTileBar,
  Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxGroupBox,
  cxRadioGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxButtonEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Datasnap.Provider,
  Datasnap.DBClient, cxCurrencyEdit, cxMemo, IBX.IBUpdateSQL, IBX.IBSQL, MidasLib;

type
  TFrmAnularDocumentos = class(TForm)
    pgAnular: TcxPageControl;
    TabOpAnular: TcxTabSheet;
    pnlDetalle: TPanel;
    cxLabel1: TcxLabel;
    DateIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    DateFin: TcxDateEdit;
    BtnBuscar: TcxButton;
    GrdTiposDocs: TcxGrid;
    TvlTiposDocs: TcxGridDBTableView;
    TvlTiposDocsModificar: TcxGridDBColumn;
    LvlTiposDocs: TcxGridLevel;
    QryOrdenes: TIBQuery;
    TraAnular: TIBTransaction;
    QryOrdenesOTM_CODI: TIntegerField;
    QryOrdenesOTM_CLASE_DOC: TSmallintField;
    QryOrdenesOTM_NUME: TIntegerField;
    QryOrdenesCLI_CODI: TIntegerField;
    QryOrdenesOTM_FECHA: TDateTimeField;
    QryOrdenesVXC_CODI: TIntegerField;
    QryOrdenesOTM_KILOM: TIBStringField;
    QryOrdenesOTM_OBSERV: TIBStringField;
    QryOrdenesOTM_SUBT: TIBBCDField;
    QryOrdenesOTM_VR_IVA: TIBBCDField;
    QryOrdenesOTM_VR_DESC: TIBBCDField;
    QryOrdenesOTM_VR_TOTAL: TIBBCDField;
    QryOrdenesFP_CODI: TIntegerField;
    QryOrdenesOTM_ESTADO: TIntegerField;
    QryOrdenesOTM_FECHA_VENCE: TDateTimeField;
    QryOrdenesOTM_ANULADO: TIntegerField;
    CdsOrdenes: TClientDataSet;
    DspOrdenes: TDataSetProvider;
    CdsOrdenesOTM_CODI: TIntegerField;
    CdsOrdenesOTM_CLASE_DOC: TSmallintField;
    CdsOrdenesOTM_NUME: TIntegerField;
    CdsOrdenesCLI_CODI: TIntegerField;
    CdsOrdenesOTM_FECHA: TDateTimeField;
    CdsOrdenesVXC_CODI: TIntegerField;
    CdsOrdenesOTM_KILOM: TWideStringField;
    CdsOrdenesOTM_OBSERV: TWideStringField;
    CdsOrdenesOTM_SUBT: TBCDField;
    CdsOrdenesOTM_VR_IVA: TBCDField;
    CdsOrdenesOTM_VR_DESC: TBCDField;
    CdsOrdenesOTM_VR_TOTAL: TBCDField;
    CdsOrdenesFP_CODI: TIntegerField;
    CdsOrdenesOTM_ESTADO: TIntegerField;
    CdsOrdenesOTM_FECHA_VENCE: TDateTimeField;
    CdsOrdenesOTM_ANULADO: TIntegerField;
    DtsOrdenes: TDataSource;
    TvlTiposDocsOTM_CLASE_DOC: TcxGridDBColumn;
    TvlTiposDocsOTM_NUME: TcxGridDBColumn;
    TvlTiposDocsOTM_FECHA: TcxGridDBColumn;
    TvlTiposDocsOTM_VR_TOTAL: TcxGridDBColumn;
    TvlTiposDocsOTM_ESTADO: TcxGridDBColumn;
    TvlTiposDocsOTM_ANULADO: TcxGridDBColumn;
    TvlTiposDocsCLI_NOMBRE: TcxGridDBColumn;
    GrbDatosAnular: TcxGroupBox;
    MemDescAnular: TcxMemo;
    BtnAnular: TcxButton;
    UpdAnularDoc: TIBUpdateSQL;
    SqlInsertar: TIBSQL;
    tabDocumentos: TcxTabSheet;
    pnlMaestroDoc: TPanel;
    pnlDetalleDoc: TPanel;
    pnlBotones: TPanel;
    BtnVolver: TcxButton;
    cxButton1: TcxButton;
    GridEncabezado: TcxGrid;
    TvEncabezado: TcxGridDBTableView;
    LvlEncabezado: TcxGridLevel;
    GrdiDetalle: TcxGrid;
    TvDetalle: TcxGridDBTableView;
    LvlDetalle: TcxGridLevel;
    QryDoan: TIBQuery;
    QryDoanDOAN_CODI: TIntegerField;
    QryDoanDOAN_CLASEDOC: TIntegerField;
    QryDoanDOAN_DOC_CODI: TIntegerField;
    QryDoanDOAN_DOC_NUME: TIntegerField;
    QryDoanDOAN_MOTIVO: TIBStringField;
    CdsDoan: TClientDataSet;
    DtpDoan: TDataSetProvider;
    DtsDoan: TDataSource;
    CdsDoanDOAN_CODI: TIntegerField;
    CdsDoanDOAN_CLASEDOC: TIntegerField;
    CdsDoanDOAN_DOC_CODI: TIntegerField;
    CdsDoanDOAN_DOC_NUME: TIntegerField;
    CdsDoanDOAN_MOTIVO: TWideStringField;
    TvEncabezadoDOAN_CLASEDOC: TcxGridDBColumn;
    TvEncabezadoDOAN_DOC_NUME: TcxGridDBColumn;
    TvEncabezadoDOAN_MOTIVO: TcxGridDBColumn;
    QryDoanCLI_NOMBRE: TIBStringField;
    QryDoanOTM_FECHA: TDateTimeField;
    QryDoanOTM_VR_TOTAL: TIBBCDField;
    CdsDoanCLI_NOMBRE: TWideStringField;
    CdsDoanOTM_FECHA: TDateTimeField;
    CdsDoanOTM_VR_TOTAL: TBCDField;
    TvEncabezadoCLI_NOMBRE: TcxGridDBColumn;
    TvEncabezadoOTM_FECHA: TcxGridDBColumn;
    TvEncabezadoOTM_VR_TOTAL: TcxGridDBColumn;
    QryDoanDet: TIBQuery;
    CdsDoanDet: TClientDataSet;
    DspDoanDet: TDataSetProvider;
    DtsDoanDet: TDataSource;
    QryDoanDetOTM_CODI: TIntegerField;
    QryDoanDetOTD_CANT: TIBBCDField;
    QryDoanDetOTD_PRECIO: TIBBCDField;
    QryDoanDetOTD_VR_TOTAL: TIBBCDField;
    QryDoanDetPRO_NOMBRE: TIBStringField;
    QryDoanDetBOD_NOMBRE: TIBStringField;
    CdsDoanDetOTM_CODI: TIntegerField;
    CdsDoanDetOTD_CANT: TBCDField;
    CdsDoanDetOTD_PRECIO: TBCDField;
    CdsDoanDetOTD_VR_TOTAL: TBCDField;
    CdsDoanDetPRO_NOMBRE: TWideStringField;
    CdsDoanDetBOD_NOMBRE: TWideStringField;
    TvDetalleOTM_CODI: TcxGridDBColumn;
    TvDetalleOTD_CANT: TcxGridDBColumn;
    TvDetalleOTD_PRECIO: TcxGridDBColumn;
    TvDetalleOTD_VR_TOTAL: TcxGridDBColumn;
    TvDetallePRO_NOMBRE: TcxGridDBColumn;
    TvDetalleBOD_NOMBRE: TcxGridDBColumn;
    QryProductosDet: TIBQuery;
    QryProductosDetOTD_CONT: TIntegerField;
    QryProductosDetPR_CODI: TIntegerField;
    QryProductosDetBOD_CODI: TIntegerField;
    QryOrdenesCLI_NOMBRE: TIBStringField;
    CdsOrdenesCLI_NOMBRE: TWideStringField;
    procedure BtnBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TvlTiposDocsOTM_CLASE_DOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvlTiposDocsOTM_ESTADOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure TvlTiposDocsOTM_ANULADOGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure BtnAnularClick(Sender: TObject);
    procedure MemDescAnularPropertiesChange(Sender: TObject);
    procedure CdsOrdenesAfterScroll(DataSet: TDataSet);
    procedure BtnVolverClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure TvEncabezadoDOAN_CLASEDOCGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormShow(Sender: TObject);
    procedure CdsDoanAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    class function Execute: Boolean; { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAnularDocumentos: TFrmAnularDocumentos;

implementation

{$R *.dfm}

uses UntDmGlobal;

class function TFrmAnularDocumentos.Execute: Boolean;
var
  FrmAnularDocumentos: TFrmAnularDocumentos;
begin
  FrmAnularDocumentos := TFrmAnularDocumentos.Create(nil);
  try
    Result := FrmAnularDocumentos.ShowModal = mrOk;
  finally
    FrmAnularDocumentos.Free;
  end;
end;

procedure TFrmAnularDocumentos.BtnAnularClick(Sender: TObject);
begin
  try
    if MemDescAnular.Text = '' then
    begin
      MessageBox(Handle, 'Es necesario el motivo de la anulación.', 'Advertencia', MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if(MessageBox(Handle, '¿Desea anular el documento.?' , 'Confirmacion', MB_YESNO+mb_ICONQUESTION)=IDYES) then
      begin
        //Actualizar Valores y campo Anulado en Orden
        CdsOrdenes.Edit;
        CdsOrdenesOTM_ANULADO.AsInteger := 1;
        CdsOrdenesOTM_SUBT.AsFloat := 0;
        CdsOrdenesOTM_VR_IVA.AsFloat := 0;
        CdsOrdenesOTM_VR_DESC.AsFloat := 0;
        CdsOrdenesOTM_VR_TOTAL.AsFloat := 0;
        CdsOrdenes.Post;
        //Insertar en la tabla DOANULADOS
        SqlInsertar.Close;
        SqlInsertar.SQL.Clear;
        SqlInsertar.SQL.Add('INSERT INTO doanulados (doan_codi, doan_clasedoc, doan_doc_codi, ');
        SqlInsertar.SQL.Add(' doan_doc_nume, doan_motivo, doan_fecha_sistema)');
        SqlInsertar.SQL.Add('  values(:doan_codi, :doan_clasedoc, :doan_doc_codi, ');
        SqlInsertar.SQL.Add(' :doan_doc_nume, :doan_motivo, :doan_fecha_sistema)');
        SqlInsertar.ParamByName('doan_codi').AsInteger := DmGlobal.GetConsecutivo('DOANULADOS', 'DOAN_CODI');
        SqlInsertar.ParamByName('doan_clasedoc').AsInteger := CdsOrdenesOTM_CLASE_DOC.AsInteger;
        SqlInsertar.ParamByName('doan_doc_codi').AsInteger := CdsOrdenesOTM_CODI.AsInteger;
        SqlInsertar.ParamByName('doan_doc_nume').AsInteger := CdsOrdenesOTM_NUME.AsInteger;
        SqlInsertar.ParamByName('doan_motivo').AsString := MemDescAnular.Text;
        SqlInsertar.ParamByName('doan_fecha_sistema').AsDateTime := Now;
        SqlInsertar.ExecQuery;
        //actualizar datos detalle orden
        SqlInsertar.Close;
        SqlInsertar.SQL.Clear;
        SqlInsertar.SQL.Add('UPDATE ordentid  SET otd_cant = 0, otd_precio = 0, otd_sbtotal = 0,');
        SqlInsertar.SQL.Add('otd_vr_iva = 0, otd_vr_dsc = 0, otd_vr_total = 0');
        SqlInsertar.SQL.Add('WHERE OTM_CODI = :OTM_CODI');
        SqlInsertar.ParamByName('OTM_CODI').AsInteger := CdsOrdenesOTM_CODI.AsInteger;
        SqlInsertar.ExecQuery;
        //Se actualiza el movimiento
        SqlInsertar.Close;
        SqlInsertar.SQL.Clear;
        SqlInsertar.SQL.Add('UPDATE movinventario SET mvi_cantidad = 0');
        SqlInsertar.SQL.Add('WHERE mvi_clase_docu = 1 AND mvi_docu_codi = :mvi_docu_codi AND mvi_num_docu = :mvi_num_docu');
        SqlInsertar.ParamByName('mvi_docu_codi').AsInteger := CdsOrdenesOTM_CODI.AsInteger;
        SqlInsertar.ParamByName('mvi_num_docu').AsInteger := CdsOrdenesOTM_NUME.AsInteger;
        SqlInsertar.ExecQuery;
        CdsOrdenes.ApplyUpdates(0);
        SqlInsertar.Transaction.CommitRetaining;
        MemDescAnular.Lines.Clear;
        //Recalcular Saldo para cada producto  --Seria bueno sacarla al DMGLOBAL o hacer SP
        if not TraAnular.Active then
          TraAnular.StartTransaction;
        QryProductosDet.Close;
        QryProductosDet.ParamByName('otm_codi').AsInteger := CdsOrdenesOTM_CODI.AsInteger;
        QryProductosDet.Open;
        QryProductosDet.First;
        while not QryProductosDet.Eof do
        begin
          SqlInsertar.Close;
          SqlInsertar.SQL.Clear;
          SqlInsertar.SQL.Add('update stock s set s.st_cantidad = ( ');
          SqlInsertar.SQL.Add('SELECT SUM(mvi_cantidad) QT FROM movinventario ');
          SqlInsertar.SQL.Add('WHERE pro_codi = :pro_codi and bod_codi = bod_codi) ');
          SqlInsertar.SQL.Add('where s.pro_codi = :pro_codi and s.bod_codi = :bod_codi ');
          SqlInsertar.ParamByName('pro_codi').AsInteger := QryProductosDetPR_CODI.AsInteger;
          SqlInsertar.ParamByName('bod_codi').AsInteger := QryProductosDetBOD_CODI.AsInteger;
          SqlInsertar.ExecQuery;
          QryProductosDet.Next
        end;
        SqlInsertar.Transaction.CommitRetaining;
        MessageBox(Handle, 'Documento anulado con éxito.', 'Información', MB_OK+MB_ICONINFORMATION);
      end;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create('Error al guardar el registro. ' + e.Message);
    end;
  end;
end;

procedure TFrmAnularDocumentos.BtnBuscarClick(Sender: TObject);
begin
  if DateFin.Date > DateIni.Date then
  begin
  QryOrdenes.Close;
  QryOrdenes.ParamByName('FECHAINI').AsDate := DateIni.Date;
  QryOrdenes.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  CdsOrdenes.Open;
  end
  else
  begin
    MessageBox(Handle, 'La fecha inicial es mayor que la fecha final.', 'Advertencia', MB_OK+MB_ICONWARNING);
  end;
end;

procedure TFrmAnularDocumentos.BtnVolverClick(Sender: TObject);
begin
  pgAnular.ActivePage := TabOpAnular;
end;

procedure TFrmAnularDocumentos.CdsDoanAfterScroll(DataSet: TDataSet);
begin
  QryDoanDet.Close;
  QryDoanDet.ParamByName('OTM_CODI').AsInteger := CdsDoanDOAN_DOC_CODI.AsInteger;
  CdsDoanDet.Open;
end;

procedure TFrmAnularDocumentos.CdsOrdenesAfterScroll(DataSet: TDataSet);
begin
  if CdsOrdenesOTM_ANULADO.AsInteger = 0 then
  begin
    GrbDatosAnular.Enabled := True;
  end
  else
  begin
    GrbDatosAnular.Enabled := False;
  end;
end;

procedure TFrmAnularDocumentos.cxButton1Click(Sender: TObject);
begin
  QryDoan.Close;
  QryDoan.SQL.Clear;
  QryDoan.SQL.Add('SELECT a.*, c.cli_nombre, m.otm_fecha, m.otm_vr_total ');
  QryDoan.SQL.Add('FROM doanulados a ');
  QryDoan.SQL.Add('inner join ordentim m on m.otm_codi = a.doan_doc_codi ');
  QryDoan.SQL.Add('inner join clientes c on c.cli_codi = m.cli_codi ');
  QryDoan.SQL.Add('where m.otm_fecha between :fechaini and :fechafin');
  QryDoan.ParamByName('FECHAINI').AsDate := DateIni.Date;
  QryDoan.ParamByName('FECHAFIN').AsDate := DateFin.Date;
  CdsDoan.Open;
  pgAnular.ActivePage := tabDocumentos;
end;

procedure TFrmAnularDocumentos.FormActivate(Sender: TObject);
begin
  DateIni.Date := Now;
  DateFin.Date := Now;
end;

procedure TFrmAnularDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmAnularDocumentos := nil;
end;

procedure TFrmAnularDocumentos.FormShow(Sender: TObject);
begin
  pgAnular.ActivePage := TabOpAnular;
end;

procedure TFrmAnularDocumentos.MemDescAnularPropertiesChange(Sender: TObject);
begin
  if MemDescAnular.Text <> '' then
    BtnAnular.Enabled := True
  else
    BtnAnular.Enabled := False;
end;

procedure TFrmAnularDocumentos.TvEncabezadoDOAN_CLASEDOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvEncabezado.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvEncabezado.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlTiposDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvEncabezadoDOAN_CLASEDOC.Index];
  end;
  if AText = '0' then
    AText := 'Orden'
  else if AText = '1' then
    AText := 'Factura';
end;

procedure TFrmAnularDocumentos.TvlTiposDocsOTM_ANULADOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlTiposDocs.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlTiposDocs.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlTiposDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvlTiposDocsOTM_ANULADO.Index];
  end;
  if AText = '0' then
    AText := 'No'
  else if AText = '1' then
    AText := 'Si';
end;

procedure TFrmAnularDocumentos.TvlTiposDocsOTM_CLASE_DOCGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlTiposDocs.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlTiposDocs.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlTiposDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvlTiposDocsOTM_CLASE_DOC.Index];
  end;
  if AText = '0' then
    AText := 'Orden'
  else if AText = '1' then
    AText := 'Factura';
end;

procedure TFrmAnularDocumentos.TvlTiposDocsOTM_ESTADOGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AGroupIndex: Integer;
  AList: TList;
begin
  if ARecord is TcxGridGroupRow then
  begin
    AList := TList.Create;
    AGroupIndex := TvlTiposDocs.DataController.Groups.DataGroupIndexByRowIndex[ARecord.Index];
    TvlTiposDocs.DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
    AText := TvlTiposDocs.DataController.DisplayTexts[Integer(AList.Items[0]), TvlTiposDocsOTM_ESTADO.Index];
  end;
  if AText = '0' then
    AText := 'En Proceso'
  else if AText = '1' then
    AText := 'Aplicado';
end;

end.
