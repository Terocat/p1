program main;
{$I numGreater.pas}

const lastIndex = 10;

var
    arr : array[0..10] of integer = (0, 2, 5, 6, 34, -3, 1, 2, 23, 5, 1);
    inputNum : integer;

begin
    write('Ingerese un número: ');
    readLn(inputNum);

    writeLn(numGreater(10, inputNum, arr):0);
end.
