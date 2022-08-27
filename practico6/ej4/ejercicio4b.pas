program ejercicio4b;

var
    inputNum, i, j, primesDone : integer;
    isPrime : boolean;

begin
    write('Ingrese un numero: ');
    readLn(inputNum);

    for i := 2 to maxint do
    begin
        (* check if i is prime *)
        isPrime := true;

        for j := 2 to trunc(sqrt(i)) do
        begin
            isPrime := not (i mod j = 0);
            if(not isPrime) then break;
        end;

        if(not isPrime) then continue;

        writeLn(primesDone + 1:0, ': Primo: ', i:0, ' Raíz cuadrada: ', sqrt(i):0:2);
        primesDone := primesDone + 1;
        if(primesDone >= inputNum) then break;
    end;
end.