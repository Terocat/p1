program ejercicio10;

var
    inputNum, i, q : integer;
begin
    write('Ingrese un número: ');
    readLn(inputNum);

    i := 0;
    q := inputNum;

    while(q mod 2 = 0) do
    begin
        q := q div 2;
        i := i + 1;
    end;

    writeLn(inputNum:0, ' = 2^', i:0, ' * ', q:0);
end.