program ejercicio5;

var
    inputNum, i : integer;

begin

    write('Ingrese un número: ');
    readLn(inputNum);
    writeLn('Secuencia de cuadrados: ');

    i := 1;

    while(i*i - (i-1)*(i-1) <= inputNum) do
    begin
        write(i*i:0, ' ');

        i := i + 1;
    end;
    writeLn(i*i:0);
end.