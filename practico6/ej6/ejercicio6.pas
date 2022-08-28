program ejercicio6;

var
    advert, sales : integer;

begin
    write('Ingrese el gasto inicial en publicidad: ');
    readLn(advert);
    sales := 20;

    writeLn('Gasto en publicidad', 'Ventas':15, 'Profit':15);

    while((sales * 30 - advert - 100) > 0) do
    begin
        writeLn(advert, sales:20, sales * 30 - advert - 100:20);

        advert := advert * 2;
        sales := sales + sales div 2;
    end;
end.