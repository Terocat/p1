program ejercicio6;

var
    a, b, c, root1, root2 : real;
    quant : integer;

procedure roots(a, b, c : real; var root1, root2 : real; var quant : integer);
var
    delta : real;
begin
    delta := b*b - (4 * a * c);

    if(delta > 0) then
    begin
        root1 := (-b + sqrt(delta)) / (2 * a);
        root2 := (-b - sqrt(delta)) / (2 * a);
        quant := 2;
        exit;
    end;

    if(delta = 0) then
    begin
        quant := 1;
        root1 := -b / (2 * a);
        exit;
    end;

    quant := 0;
end;

begin
    write('Ingrese los coeficientes del polinómio: ');
    readLn(a, b, c);
    roots(a, b, c, root1, root2, quant);

    case quant of
        2: writeLn('Las raíces son: ', root1:0:2, ' ', root2:0:2);
        1: writeLn('Las raíces son: ', root1:0:2, ' ', '?');
        0: writeLn('Las raíces son: ', '?', ' ', '?');
    end;
end.







