program ejercicio5;

var
    inputNum, i : integer;

begin
    write('Ingrese un número: ');
    readLn(inputNum);

    for i := 1 to trunc(sqrt(inputNum)) do
    begin
        if(inputNum mod i <> 0) then continue;

        write(i:0, ' ');
        if(inputNum div i = i) then continue;
        write(inputNum div i:0, ' ');
    end;

    writeLn();
end.