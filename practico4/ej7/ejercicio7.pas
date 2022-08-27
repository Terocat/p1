program ejercicio7;

var
    inputNum, i : integer;

begin
    write('Ingrese unos cuantos números 😎: ');
    
    while(not EOLn()) do 
    begin
        read(inputNum);

        for i := 1 to inputNum do write('*');
        writeLn();
    end;        
end.