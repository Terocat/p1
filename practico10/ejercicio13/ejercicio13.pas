program ejercicio13;

const
    CANT_SALONES = 4;
    MAX_PIZARRONES = 4;

type
    TSalon = record
                asientos : integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : boolean;
             end;
    TFacultad = array[1..CANT_SALONES] of TSalon;

procedure printRooms(facu : TFacultad);
var
    i : integer;
begin
    for i := 1 to CANT_SALONES do
    begin
        write(i:0, ' - #asientos: ', facu[i].asientos:3, 
                ' #pizarrones: ', facu[i].pizarrones:3,
                ' con proyector: ');
        if(facu[i].hayProyector) then
            writeLn('si')
        else writeLn('no');
    end;
end;

procedure readFacu(var facu : TFacultad);
var
    i, aux : integer;
begin
    for i := 1 to CANT_SALONES do
    begin
        read(facu[i].asientos, facu[i].pizarrones);
        readLn(aux);
        facu[i].hayProyector := boolean(aux);
    end;
end;

procedure salonMasAsientos(facu : TFacultad; var ind, maxSeats : integer);
var
    i : integer;
begin
    maxSeats := 0;

    for i := 1 to CANT_SALONES do
    begin
        if(facu[i].asientos > maxSeats) then
        begin
            maxSeats := facu[i].asientos;
            ind := i;
        end;
    end;
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var
    i : integer;
begin
    i := 1;

    while((i <= CANT_SALONES) and (facu[i].asientos > 0)) do
        i := i + 1;

    if(i > CANT_SALONES) then 
        primerSalonSinAsientos := 0
    else primerSalonSinAsientos := i;       
end;

// main program

var
    facu : TFacultad;
    seats, i : integer;
begin
    readFacu(facu);
    printRooms(facu);
    salonMasAsientos(facu, i, seats);
    writeLn(i:0, ' ', seats:0);
    i := primerSalonSinAsientos(facu);
    writeLn('primer salon sin asientos: ', i:0);
end.



















