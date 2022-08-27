program practico2;

var 
    a, b, c, d : char;
    r1, r2, result : real;
begin
    read(a, b, c, d);
    r1 := ord(a) -ord('0');
    r2 := (ord(c) -ord('0')) * 10 + (ord(d) - ord('0'));
    result := r1 + r2 / 100;
    writeLn('Valor ingresado: ', result:4:2);
end.