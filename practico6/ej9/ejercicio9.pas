program ejercicio8;

var
    m, n, i, j : integer;
    isPrime : boolean;

begin
    write('Ingrese m y n: ');
    readLn(m, n);
    write('Los primos entre gemelos ', m:0, ' y ', n:0, ' son: ');

    for i := m to n do
    begin
        isPrime := true;
        for j := 2 to trunc(sqrt(i)) do
        begin
            isPrime := not (i mod j = 0);
            if(not isPrime) then break;
        end;

        if(not isPrime) then continue;

        isPrime := true;
        for j := 2 to trunc(sqrt(i+2)) do
        begin
            isPrime := not ((i+2) mod j = 0);
            if(not isPrime) then break;
        end;

        if(isPrime) then writeLn(i:0, ' y ', i+2:0);
    end;

    writeLn();
end.