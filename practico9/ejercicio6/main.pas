program ejercicio6;

{$I subPrograms.pas}

var
    matrix, transposeMatrix : matriz;
begin
    readMatrix(3, matrix);
    transposeB(3, matrix);
    logMatrix(3, matrix);
end.