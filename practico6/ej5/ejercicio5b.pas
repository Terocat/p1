program ejercicio5b;

var
    inputNum, i : integer;

begin

    write('Ingrese un número: ');
    readLn(inputNum);
    writeLn('Secuencia de cuadrados: ');

    for i := 1 to trunc(inputNum / 2) + 1 do write(i*i:0, ' ');
    writeLn();

end.