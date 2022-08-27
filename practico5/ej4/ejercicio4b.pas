program ejercicio4;

var
    min, max, inputNum : integer;

begin

    read(min);
    max := min;

    while(not EOLn()) do
    begin
        read(inputNum);
        if(inputNum > max) then max := inputNum;
        if(inputNum < min) then min := inputNum;
    end;

    writeLn('Máximo: ', max:0, ' Mínimo: ', min:0);
end.