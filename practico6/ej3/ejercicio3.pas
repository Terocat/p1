program ejercicio3;

var
    x, coefficient, image : real;

begin
    write('Ingrese x: ');
    readLn(x);
    write('Ingrese los coeficientes: ');

    image := 0;

    while(not EOLn()) do
    begin
        read(coefficient);
        image := (image + coefficient) * x;
    end;

    image := image / x;

    writeLn('El valor del polinomio evaluado en ', x:0:2, ' es ', image:0:2);
end.