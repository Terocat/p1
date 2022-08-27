program exponential;
{$I factorial.pas}
{$I pow.pas}

var
    inputNum, sum : real;
    i : integer;
begin
    sum := 1;
    write('Ingrese un número: ');
    readLn(inputNum);

    for i := 1 to 4 do
    begin
        sum := sum + pow(inputNum, i) / factorial(i);
    end;

    writeLn('Valor ingresado: ', inputNum:0:4);
    writeLn('Suma de los cinco términos: ', sum:0:4);
    writeLn('Valor de exp: ', exp(inputNum):0:4);
end.