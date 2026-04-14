var
  Temp         : real;
  DigitA,DigitB: integer;
  Ams          : string;
  Ac           : string;
  NumStr       : TStringList;

function xIntToLletras(Numero:LongInt):String;
 
  function xxIntToLletras(Valor:LongInt):String;  
  var 
   Centena, Decena, Unidad, Doble: LongInt;
   Linea: String;

   aUnidad : array[1..15] of string =
     ['UN','DOS','TRES','CUATRO','CINCO','SEIS',
      'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
      'TRECE','CATORCE','QUINCE'];       
   aCentena: array[1..9]  of string =
     ['CIENTO','DOSCIENTOS','TRESCIENTOS',
      'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
      'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS'];  
   aDecena : array[1..9]  of string =
    ['DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
     'SESENTA','SETENTA','OCHENTA','NOVENTA'];      
  
  begin 
   if valor=100 then Linea:=' CIEN '
   else begin 
     Linea:='';
     Centena := Valor div 100;
     Doble   := Valor - (Centena*100);
     Decena  := (Valor div 10) - (Centena*10);
     Unidad  := Valor - (Decena*10) - (Centena*100);
 
     if Centena>0 then Linea := Linea + Acentena[centena - 1]+' ';
 
     if Doble>0 then begin 
       if Doble=20 then Linea := Linea +' VEINTE '
         else begin 
          if doble<16 then Linea := Linea + aUnidad[Doble - 1]
            else begin 
                 Linea := Linea +' '+ Adecena[Decena - 1];
                 if (Decena>2) and (Unidad<>0) then Linea := Linea+' Y ';
                 if Unidad>0 then Linea := Linea + aUnidad[Unidad - 1];
            end; 
         end; 
     end; 
   end; 
   Result := Linea;
  end; 
 
var 
   Millones,Miles,Unidades: Longint;
   Linea : String;
begin 
  {Inicializamos el string que contendrá las letras según el valor
  numérico}
  if numero=0 then 
    Linea := 'CERO'
  else if numero<0 then 
    Linea := 'MENOS '  
  else if numero=1 then 
  begin 
    Linea := 'UN';
    //xIntToLletras := Linea;
    Result := Linea;                        
    exit;  
  end 
  else if numero>1 then 
    Linea := '';    
 
  {Determinamos el Nº de millones, miles y unidades de numero en
  positivo}
  //Numero   := Abs(Numero);
  Numero   := Numero;      
  Millones := numero div 1000000;
  Miles     := (numero - (Millones*1000000)) div 1000;
  Unidades  := numero - ((Millones*1000000)+(Miles*1000));
 
  {Vamos poniendo en el string las cadenas de los números(llamando
  a subfuncion)}
  if Millones=1 then Linea:= Linea + ' UN MILLON '
  else if Millones>1 then Linea := Linea + xxIntToLletras(Millones)
                                   + ' MILLONES ';
 
  if Miles =1 then Linea:= Linea + ' MIL '
  else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+
                                ' MIL ';
 
  if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);
 
  //xIntToLletras := Linea;
  Result := Linea + ' pesos mcte.';      
end;

procedure txtMontoLetrasOnBeforePrint(Sender: TfrxComponent);
begin
  txtMontoLetras.text := xIntToLletras(frxEncabezadoOTM_VR_TOTAL.value);  
end;

begin

end.