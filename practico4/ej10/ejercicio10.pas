program ejercicio10;

var
    inputNum, i, output : integer;
begin
    write('Ingrese un número: ');
    readLn(inputNum);

    output := 1;
    for i := inputNum downto 1 do output := output * i;

    writeLn('El factorial de ', inputNum:0, ' es ', output:0);
end.