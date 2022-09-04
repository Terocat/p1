program ejercicio5;

var
    a, b, c : integer;

procedure shift(var a, b, c : integer);

var 
    aux : integer;

begin
    aux := a;
    a := c;
    c := b;
    b := aux;
end;

begin
    write('Ingrese 3 números: ');
    readLn(a, b, c);
    shift(a, b, c);
    writeLn('El corrimiento es: ', a:0, ' ', b:0, ' ', c:0);
end.