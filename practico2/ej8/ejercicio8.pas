program pseudoRandom;

var 
    inputNum : integer; (* char for enter = 13 *)
begin

    write('Ingrese un numero: ');
    readLn(inputNum);
    writeLn('Numero ingresado: ', inputNum:0);
    inputNum := inputNum * inputNum;
    writeLn('Cuadrado del numero: ', inputNum:0);
    inputNum := trunc((inputNum - trunc(inputNum / 1000) * 1000) / 10);
    writeLn('Siguiente número pseudorandom: ', inputNum:0);
end.