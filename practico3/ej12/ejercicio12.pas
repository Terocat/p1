program baskhara;

var
    a, b, c, delta, x1, x2 : real;
    isComplex : boolean;

begin
    write('Ingrese los coeficientes de la ecuación: ');
    readLn(a, b, c);

    delta := (c * c) - 4 * a * b;
    isComplex := delta < 0;

    if(isComplex) then
    begin
        writeLn('x1 = ', -b:0:1, ' + ', sqrt(abs(delta)):0:1, 'i');
        writeLn('x2 = ', -b:0:1, ' - ', sqrt(abs(delta)):0:1, 'i');
        exit();
    end;

    x1 := (-b + sqrt(delta));
    x2 := (-b - sqrt(delta));

    write('x1 = ', x1:0:2);
    write(' x2 = ', x2:0:2);

    writeLn();
end.