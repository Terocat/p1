program ejercicio1;

var
    a, b, aux : integer;

begin
    write('Ingrese dos números: ');
    readLn(a, b);
    aux := a;

    if(a > b) then
    begin
        a := b;
        b := aux;
    end;

    while(b mod a > 0) do
    begin
        aux := a;
        a := b mod a;
        b := aux;
    end;

    writeLn('El MCD es: ', a:0);
end.