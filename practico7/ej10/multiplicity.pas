procedure multiplicity(num, factor: integer; var multiplicity, residue : integer);
begin
    multiplicity := 0;

    while(num mod factor = 0) do
    begin
        multiplicity := multiplicity + 1;
        num := num div factor; 
    end;

    residue := num;
end;

function isPrime(num : integer) : boolean;
var
    i : integer;
    res : boolean;
begin
    if(num = 1) then exit(false);

    res := true;

    for i := 2 to trunc(sqrt(num)) do
    begin
        if(num mod i = 0) then res := false;
    end;

    isPrime := res;
end;

