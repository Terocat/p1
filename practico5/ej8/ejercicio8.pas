program ejercicio8;

var
    operation : char;
    a, result : integer;
begin
    read(result);

    while(not EOLn) do
    begin
        read(operation, a);

        case operation of
            '*': result := result * a;
            '+': result := result + a;
            '-': result := result - a;
            '/': result := result div a;
        end;
    end;

    writeLn(result:0);     
end.
