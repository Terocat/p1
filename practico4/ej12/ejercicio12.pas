program ejercicio12;
{$I computeImage.pas}

var
    n, i, j, max : integer;
begin
    write('Ingrese un número: ');
    readLn(n);
    max := computeImage(-n, -n);

    for i := -n to n do
    begin
        for j := -n to n do
        begin
            if(computeImage(i, j) > max) then max := computeImage(i, j);
        end;
    end;

    writeLn('El valor máximo para x,y en el entorno ', -n:0, n:0, ' es ', max:0);
end.