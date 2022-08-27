program squareRoot;
{$I pow.pas}

var
    inputNum : real;

begin
    write('Ingrese un valor: ');
    readLn(inputNum);
    writeLn('Valor ingresado: ', inputNum:0:4);
    writeLn('Raíz cuadrada calculada: ', pow(inputNum, 0.5):0:4);
    writeLn('Sqrt predefinida: ', sqrt(inputNum):0:4);
end.