program ejercicio6;

var
    inputNum, greatestNum, smallestNum : integer;
begin
    write('Ingrese unos cuantos números: ');    

    read(inputNum);
    greatestNum := inputNum;
    smallestNum := inputNum;

    while(not EOLn()) do
    begin
        read(inputNum);
        if(inputNum > greatestNum) then greatestNum := inputNum;
        if(inputNum < smallestNum) then smallestNum := inputNum;
    end;

    writeLn('El número más grande es: ', greatestNum:0);
    writeLn('El número más chico es: ', smallestNum:0);
end.