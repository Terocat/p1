program ejercicio7;

var
    x1, y1, x2, y2 : real;

function distance(x1, y1, x2, y2 : real) : real;
begin
    distance := sqrt(sqr(x1 - x2) + sqr(y1 - y2));
end;

begin
    write('Ingrese las coordenadas del primer punto: ');
    readLn(x1, y1);
    write('Ingrese las coordenadas del segundo punto: ');
    readLn(x2, y2);
    writeLn('La distancia entre ellos es: ', distance(x1, y1, x2, y2):0:2);
end.
