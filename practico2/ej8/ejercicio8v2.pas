program pseudoRandom;
uses Crt;

var 
    inputNum : integer; (* char for enter = 13 *)
begin

    write('Ingrese un numero: ');
    readLn(inputNum);
    writeLn('Numero ingresado: ', inputNum:0);
    inputNum := inputNum * inputNum;
    writeLn('Cuadrado del numero: ', inputNum:0);

    while(readKey = #13) do
    begin
        inputNum := trunc((inputNum - trunc(inputNum / 1000) * 1000) / 10);
        writeLn('Siguiente numero pseudorandom: ', inputNum:0);
        writeLn('Presione enter para imprimir el siguiente...');
        inputNum := inputNum * inputNum;
    end;
end.