program ejercicio4;

var
    inputNum, sum, numCount : integer;

begin
    sum := 0;
    read(inputNum);

    while(inputNum >= 0) do
    begin
        numCount := numCount + 1;
        sum := sum + inputNum;

        read(inputNum);
    end;

    writeLn('Promedio: ', trunc(sum / numCount):0, ' Suma: ', sum:0);
end.