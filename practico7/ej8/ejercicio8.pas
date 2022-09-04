program ejercicio8;

var
    m, n, i : integer;

function isPrime(num : integer) : boolean;
var
    i : integer;
    res : boolean;
begin
    res := true;

    for i := 2 to trunc(sqrt(num)) do
    begin
        if(num mod i = 0) then res := false;
    end;

    isPrime := res;
end;

begin
    write('Ingerese dos número: ');
    readLn(m, n);

    for i := m to n do
    begin
        if(isPrime(i)) then write(i:0, ' ');
    end;

    writeLn();
end.