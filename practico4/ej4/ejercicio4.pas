program ejercicio4;

var
    a, b, n : integer;

begin
    read(a, b, n);
    writeLn('a = ', a:0, ' b = ', b:0, ' n = ', n:0);

    for a := a to b do
    begin
        if(a mod n = 0) then write(a:0, ' ');
    end;

    writeLn();
end.