program ejercicio11;
{$I computeImage.pas}

var
    m, n, max, min : integer;
begin
    write('Ingrese un valor para m: ');
    readLn(m);
    write('Ingrese un valor para n: ');
    readLn(n);

    max := computeImage(m);
    min := computeImage(n);

    for m := m to n do
    begin
        if(computeImage(m) > max) then max := computeImage(m);
        if(computeImage(m) < min) then min := computeImage(m);
    end;

    writeLn('El valor máximo para x en el entorno es ', max:0);
end.