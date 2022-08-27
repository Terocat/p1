program ej9;
{$I pow.pas}

var
    inputNum, digitsNum, i, digit : integer;
begin
    write('Ingrese un número: ');
    readLn(inputNum);

    i := 0;
    while(inputNum div powInt(10, i) > 0) do
    begin
        i := i + 1;
        digitsNum := i;
    end;

    for i := digitsNum downto 1 do
    begin
        digit := trunc((inputNum - trunc(inputNum / powInt(10, i)) * powInt(10, i)) / powInt(10, i-1));
        write(digit:0);
        if(((i - 1) mod 3 = 0) and ((i - 1) <> 0)) then write('.');
    end;

    writeLn();
end.
