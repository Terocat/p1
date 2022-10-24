program ejercicio4;
{$I subPrograms.pas}

var
    M : matrix;
    i, j : integer;

begin
    writeLn('Ingrese matriz de 10x10: ');
    readMatrix(M);
    write('Ingrese filas a intercambiar: ');
    readLn(i, j);
    if((i < 10) and (j < 10) and (i >= 0) and (j >= 0)) then
    begin
        switchRows(M, i, j);
        writeLn();
        printMatrix(M);
    end else writeLn('Error: valores ingresados fuera del rango permitido.')
end.
