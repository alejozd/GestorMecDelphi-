program Imperio;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntTiposDocumentos in 'UntTiposDocumentos.pas' {FrmTiposDocumentos},
  UntDmGlobal in 'UntDmGlobal.pas' {DmGlobal: TDataModule},
  UntCiuadesDep in 'UntCiuadesDep.pas' {FrmCiudadesDep},
  UntVehiculos in 'UntVehiculos.pas' {FrmVehiculos},
  UntBodegas in 'UntBodegas.pas' {FrmBodegas},
  UntEmpleados in 'UntEmpleados.pas' {FrmEmpleados},
  UntCargos in 'UntCargos.pas' {FrmCargos},
  UntClientes in 'UntClientes.pas' {FrmClientes},
  UntProductos in 'UntProductos.pas' {FrmProductos},
  UntOrdenTrabajo in 'UntOrdenTrabajo.pas' {FrmOrdenTrabajo},
  UntListaClientes in 'UntListaClientes.pas' {FrmListaClientes},
  UntListaProductos in 'UntListaProductos.pas' {FrmListaProductos},
  UntConsDocumentos in 'UntConsDocumentos.pas' {FrmConsDocumentos},
  UntProveedores in 'UntProveedores.pas' {FrmProveedores},
  UntEntradas in 'UntEntradas.pas' {FrmEntradas},
  UntListaProveedores in 'UntListaProveedores.pas' {FrmListaProveedores},
  UntListaProdEnt in 'UntListaProdEnt.pas' {FrmListaProdEnt},
  UntMovInventario in 'UntMovInventario.pas' {FrmMovInventario},
  UntDmImprimirDoc in 'UntDmImprimirDoc.pas' {DmImprimirDoc: TDataModule},
  UntGruposInv in 'UntGruposInv.pas' {FrmGruposInv},
  UntConsDocsEntradas in 'UntConsDocsEntradas.pas' {FrmConsDocsEntradas},
  UntAnularDocumentos in 'UntAnularDocumentos.pas' {FrmAnularDocumentos},
  UntCartillas in 'UntCartillas.pas' {FrmCartillas},
  UntConsVentasXDia in 'UntConsVentasXDia.pas' {FrmConsVentasXDia},
  UntConsVentas in 'UntConsVentas.pas' {FrmConsVentas},
  UntConsMarcas in 'UntConsMarcas.pas' {FrmConsMarcas},
  UntConsOrdenesFinalizar in 'UntConsOrdenesFinalizar.pas' {FrmConsOrdenesFinalizar},
  UntConsMasVendidos in 'UntConsMasVendidos.pas' {FrmConsMasVendidos},
  UntConsInventario in 'UntConsInventario.pas' {FrmConsInventario},
  UntConsStockInv in 'UntConsStockInv.pas' {FrmConsStockInv},
  UntHistorialCli in 'UntHistorialCli.pas' {FrmHistorialCli},
  UntUtilidades in 'UntUtilidades.pas' {FrmUtilidades},
  UntUsuarios in 'UntUsuarios.pas' {FrmUsuarios},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  Vcl.Themes,
  Vcl.Styles,
  UntNomina in 'UntNomina.pas' {FrmNomina};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestion de Serviteca';
  Application.CreateForm(TDmGlobal, DmGlobal);
  Application.Run;
end.
