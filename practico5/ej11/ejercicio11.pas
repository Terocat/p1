program ejercicio11;

var
    base, inputNum, aux, i : integer;
begin
    write('Ingrese número: ');
    readLn(inputNum);
    write('Ingrese base: ');
    readLn(base);

    aux := base;
    i := 0;

    while(aux <= inputNum) do
    begin
        aux := aux * base;
        i := i + 1;        
    end;

    writeLn('Resultado: ', i:0);
end.