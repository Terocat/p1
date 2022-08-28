program ejercicio8;

var
    m, n, i, j : integer;
    isPrime : boolean;

begin
    write('Ingrese m y n: ');
    readLn(m, n);
    write('Los primos entre ', m:0, ' y ', n:0, ' son: ');

    for i := m to n do
    begin
        isPrime := true;
        for j := 2 to trunc(sqrt(i)) do
        begin
            isPrime := not (i mod j = 0);
            if(not isPrime) then break;
        end;

        if(isPrime) then write(i:0, ' ');
    end;

    writeLn();
end.