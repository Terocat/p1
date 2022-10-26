program ejercicio11;

type
    Complex = record
                re, im : real;
              end;
procedure complexSum(c1, c2 : Complex; var c3 : Complex);
begin
    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im;
end;

procedure complexProd(c1, c2 : Complex; var c3 : Complex);
begin
    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.im * c2.re + c2.im * c1.re;
end;

procedure complexRead(var c : Complex);
begin
    read(c.re, c.im);
end;

procedure complexPrint(c : Complex);
begin
    write(c.re:0:2);
    if(c.im > 0) then
        write(' + ', c.im:0:2, 'i')
    else if(c.im < 0) then
        write(' - ', c.im:0:2,'i');

    writeLn();
end;

// main program

var
    a, b, c : Complex;
begin
    write('Ingrese dos complejos: ');
    complexRead(a);
    complexRead(b);
    
    complexSum(a,b,c);
    writeLn('Suma: ');
    complexPrint(c);

    complexProd(a,b,c);
    writeLn('Producto: ');
    complexPrint(c);
end.








