function pow(base, exponent : real):real;
begin
    if(base = 0) then exit(0);
    exit(exp(exponent * ln(base)));
end;

function powInt(base, exponent : integer):integer;
begin
    if(base = 0) then exit(0);
    exit(trunc(exp(exponent * ln(base))));
end;