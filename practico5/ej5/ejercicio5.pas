program ejercicio5;

var
    initialVal, operationAmount : real;
    operation : char;
begin
    
    readLn(initialVal);
    read(operation);

    while(operation <> 'X') do
    begin
        readLn(operationAmount);

        if(operation = 'D') then initialVal := initialVal + operationAmount; 
        if(operation = 'R') then initialVal := initialVal - operationAmount; 

        read(operation);
    end;

    writeLn('El saldo final es: ', initialVal:0:2);
end.