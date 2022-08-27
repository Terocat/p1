program ejercicio9;

var
    squaresSum, avg, inputNum : real;
    n : integer;
begin
    write('Ingrese números reales: ');

    n := 0;
    avg := 0;
    squaresSum := 0;

    while(not EOLn) do
    begin
        read(inputNum);
        n := n + 1;

        avg := avg + inputNum;
        squaresSum := squaresSum + inputNum*inputNum;
    end;

    avg := avg / n;

    writeLn('La desviación estandar es: ', sqrt(squaresSum/n - avg*avg):0:2);
end.


