program ejercicio8;

var
    inputChar : char;
    inputNum, i : integer;
begin
    write('Ingrese un carácter: ');
    readLn(inputChar);
    write('Ingrese un número: ');
    readLn(inputNum);

    for inputNum := inputNum downto 0 do
    begin
        for i := 1 to inputNum do write(inputChar);
        writeLn();
    end;
end.