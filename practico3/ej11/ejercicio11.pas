program ej11;
{$I pow.pas}

var
    digitsNum, i, inputNum, inputDigit, digit : integer;

begin
    write('Ingrese un número: ');
    readLn(inputNum);
    write('Ingrese un dígito: ');
    readLn(inputDigit);
    writeLn(inputNum:0);

    i := 0;
    while(inputNum div powInt(10, i) > 0) do
    begin
        i := i + 1;
        digitsNum := i;
    end;

    for i := digitsNum downto 1 do
    begin
        digit := trunc((inputNum - trunc(inputNum / powInt(10, i)) * powInt(10, i)) / powInt(10, i-1));
        if(digit = inputDigit) then write('+');
    end;

    writeLn();
end.