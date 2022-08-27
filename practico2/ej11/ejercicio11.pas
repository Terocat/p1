program base8;
{$I pow.pas}

var
    inputNum, base10, digit, i : integer;
begin
    base10 := 0;
    write('Ingrese un número en base 8: ');
    readLn(inputNum);

    for i := 0 to inputNum do
    begin
        digit := trunc((inputNum - trunc(inputNum / powInt(10, i+1)) * powInt(10, i+1)) / powInt(10, i));
        if(digit = 0) then break;

        base10 := base10 + digit * powInt(8, i);
    end;

    writeLn('Octal: ', inputNum:0, ' Decimal: ', base10:0);
end.