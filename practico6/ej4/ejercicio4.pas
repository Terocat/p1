program ejercicio4;

var
    inputNum, i, j, primesDone : integer;
    isPrime : boolean;
begin
    write('Ingrese un numero: ');
    readLn(inputNum);

    primesDone := 0;
    i := 2;

    while(primesDone < inputNum) do
    begin
        (* check if i is prime *)
        j := 2;
        isPrime := true;
        while(j <= sqrt(i)) do
        begin
            isPrime := not (i mod j = 0);
            if(not isPrime) then break;

            j := j + 1;
        end;

        if(isPrime) then
        begin
            writeLn(primesDone + 1:0, ': Primo: ', i:0, ' Raíz cuadrada: ', sqrt(i):0:2);
            primesDone := primesDone + 1;
        end;

        i := i + 1;
    end;
end.