program ejercicio10;
{$I multiplicity.pas}

var
    inputNum, mult, residue, prevResidue, i : integer;

begin
    while(not EOLn) do
    begin
        read(inputNum);
        prevResidue := inputNum;
        write(inputNum:0, ' = ');

        if(isPrime(inputNum)) then
        begin
            writeLn(inputNum:0);
            continue;
        end;

        for i := 2 to trunc(sqrt(inputNum)) do
        begin
            if(not isPrime(i)) then continue;

            multiplicity(prevResidue, i, mult, residue);
            prevResidue := residue;

            if(mult = 0) then continue;

            write(i:0, '^', mult:0);
            if(prevResidue > 1) then write(' * ');
            
            if(isPrime(prevResidue)) then
            begin
                write(prevResidue:0);
                break;
            end;
        end;

        writeLn();    
    end;
    
end.