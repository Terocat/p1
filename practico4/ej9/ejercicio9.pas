program ejercicio9;

var
    base, exponent, output, i : integer;
begin
    write('Ingrese la base: ');
    readLn(base);
    write('Ingrese el exponente: ');
    readLn(exponent);

    output := 1;

    for i := 1 to exponent do  output := output * base;

    writeLn(base:0, ' elevado a la ', exponent:0, ' es ', output:0);
end.