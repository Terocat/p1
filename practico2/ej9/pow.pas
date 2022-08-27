function pow(base, exponent : real):real;
begin
    if(base = 0) then exit(0);
    exit(exp(exponent * ln(base)));
end;