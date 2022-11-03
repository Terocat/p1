program ejerciccio9;

const
    MAX_FACTORS = 100;

type
    Factor = 
        record
            value : 0..maxint;
            exponent : 1..maxint;
        end;
    Decomp = 
        record
            factors : array[1..MAX_FACTORS] of Factor;
            length : 0..MAX_FACTORS;
        end;

procedure getMultiplicity(var multiplicity, remainder : integer; n, divisor : integer); // gets multiplicity and
var                                                            // stores remainder to n
    i : integer;
begin
    i := 0;
    while((n mod divisor) = 0) do
    begin
        n := n div divisor;
        i := i + 1;
    end;

    multiplicity := i;
    remainder := n;
end;

function isPrime(n : integer) : boolean;
var
    i : integer;
begin
    for i := 2 to trunc(sqrt(n)) do
        if(n mod i = 0) then
            exit(false);

    exit(true);
end;

procedure getPrimeDecomp(n : integer; var d : Decomp);
var
    i, multiplicity, j, remainder : integer;
begin
    if(isPrime(n) or (n = 0)) then
    begin
        d.factors[1].value := n;
        d.factors[1].exponent := 1;
        d.length := 1;
    end
    else
    begin
        j := 0;
        for i := 2 to trunc(sqrt(n)) do
        begin
            if(isPrime(i) and (n mod i = 0)) then
            begin
                j := j + 1;
                getMultiplicity(multiplicity, remainder, n, i);
                d.factors[j].value := i;
                d.factors[j].exponent := multiplicity;
                n := remainder;

                if(isPrime(n)) then
                begin
                    j := j + 1;
                    d.factors[j].value := n;
                    d.factors[j].exponent := 1;
                    break;  
                end;
            end;          
        end;

        d.length := j;  
    end;
end;

procedure printDecomp(d : Decomp);
var
    i : integer;
begin
    for i := 1 to d.length do
    begin
        write(d.factors[i].value:0, '^', d.factors[i].exponent:0);
        if(i <> d.length) then
            write(' * ');
    end;
    writeLn();
end;

// main program
var
    n : integer;
    d : Decomp;
begin
    readLn(n);
    getPrimeDecomp(n, d);
    printDecomp(d);
end.