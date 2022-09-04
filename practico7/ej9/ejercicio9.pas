program ejercicio9;

var
    m, n : integer;

function areMultiples(m, n : integer) : boolean;
begin
    areMultiples := (m mod n = 0) or (n mod m = 0);
end;

begin
    write('Ingrese dos números: ');
    readLn(m, n);
    writeLn('Los numeros ingresados son multiplos: ', areMultiples(m, n));
end.