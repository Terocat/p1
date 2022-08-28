program ejercicio7;

var
    m, n, aux, i, j : integer;

begin
    write('Ingrese m y n: ');
    readLn(m, n);
    if(m > n) then
    begin
        aux := m;
        m := n;
        n := aux;
    end;

    for i := m to n do
    begin
        writeLn('>>> Tabla ', i:0, ' <<<');

        for j := 1 to 10 do
        begin
            writeLn(j:0,'*',i:0, ' = ', i*j:0);
        end;
    end;
end.