program ejercicio7;

var
    inputNum, i : integer;
begin
    write('Ingrese un número entero: ');
    readLn(inputNum);
    for i := 2 to trunc(sqrt(inputNum)) do
    begin
        if(inputNum mod i = 0) then
        begin
            writeLn(inputNum:0, ' no es primo');
            exit();
        end;
    end;

    writeLn(inputNum:0, ' es primo');

end.