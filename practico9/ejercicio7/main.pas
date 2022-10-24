program ejercicio7;

const
    M = 2; {valor mayor estricto a 1}
    N = 1; {valor mayor estricto a 1}
    P = 1; {valor mayor estricto a 1}
type
    RangoM = 0..M;
    RangoN = 0..N;
    RangoP = 0..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;
var
    matrixMN : MatrizMN = ((1,2), (3,4), (5,6));
    matrixNP : MatrizNP = ((1,2), (3,4));
    matrixMP : MatrizMP;

{$I subPrograms.pas}
procedure multiplyMatrices(matrixA : MatrizMN; matrixB : MatrizNP; var outputMatrix : MatrizMP);
var
    i, j, k, entry : integer;
begin
    for i := 0 to M do
        for j := 0 to P do
        begin
            entry := 0;
            for k := 0 to N do
            begin
                entry := entry + matrixA[i][k] * matrixB[k][j];
                outputMatrix[i][j] := entry;
            end;            
        end;
end;

begin
    multiplyMatrices(matrixMN, matrixNP, matrixMP);
    logMatrix(M, P, matrixMP);
end.