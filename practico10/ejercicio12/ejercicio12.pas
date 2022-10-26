program ejercicio12;

const
    CANT_LETRAS = 10;
    CANT_ARTICULOS = 32;
type
    TIdioma = (es, en, pt);
    TFecha = record
                dia : 1..31;
                mes : 1..12;
                anio : 2001..9999;
             end;
    TNombre = array[1..CANT_LETRAS] of char;
    TArticulo = record
                    nombre : TNombre;
                    idioma : TIdioma;
                    visitas : integer;
                    ultima_act : TFecha;
                end;
    Wikipedia = array[1..CANT_ARTICULOS] of TArticulo;

function esPosterior(f1, f2 : TFecha) : boolean;
var
	val1, val2 : integer;
begin
	val1 := f1.dia + f1.mes * 31 + (f1.anio - 2000) * 372;
	val2 := f2.dia + f2.mes * 31 + (f2.anio - 2000) * 372;
	
	esPosterior := (val1 > val2);
end;

procedure articuloMasReciente(wiki : Wikipedia; idioma : TIdioma; var art : TArticulo);
var
    i : integer;
    latest : TArticulo;
begin
    with latest do
    begin
        nombre := '';
        idioma := es;
        visitas := 0;
        ultima_act.dia := 1;
        ultima_act.mes := 1;
        ultima_act.anio := 2001;
    end;

    for i := 1 to CANT_ARTICULOS do
    begin
        if(wiki[i].idioma <> idioma) then continue;

        if(esPosterior(wiki[i].ultima_act, latest.ultima_act)) then 
            latest := wiki[i];
    end;

    art := latest;
end;

procedure printRecentArts(wiki : Wikipedia);
var
    latestArts : array[0..2] of TArticulo;
    i : integer;
begin
    for i := 1 to CANT_ARTICULOS do
    begin
        case wiki[i].idioma of
            es:
                begin
                    if(esPosterior(wiki[i].ultima_act, latestArts[0].ultima_act)) then
                        latestArts[0] := wiki[i];
                end;
            en:
                begin
                    if(esPosterior(wiki[i].ultima_act, latestArts[1].ultima_act)) then
                        latestArts[1] := wiki[i];
                end;
            pt:
                begin
                    if(esPosterior(wiki[i].ultima_act, latestArts[2].ultima_act)) then
                        latestArts[2] := wiki[i];
                end;
        end;
    end;

    for i := 0 to 2 do
    begin
        with latestArts[i] do
        begin
            writeLn('Nombre: ', nombre, 
            ' Idioma: ', ord(idioma), 
            ' Visitas: ', visitas, 
            ' Última actualización: ', 
            ultima_act.dia:0, '-', 
            ultima_act.mes:0, '-', 
            ultima_act.anio:0);
        end;
    end;
end;


begin
end.

















