program ejercicio9;


const
    N = 4;
    M = 10;
type
    MatrixN = array[1..N] of array[1..N] of integer;
    ArrMatrix = array[1..M] of integer;
procedure matrixToArr(matrix : MatrixN; var arr : array of integer); 
var
    i, j, k : integer;
begin
    k := 1;

    for i := 1 to N do
        for j := i to N do
        begin
        writeLn(k);
            arr[k] := matrix[i][j];
            k := k + 1;
        end;
end;

{$I subPrograms.pas}
    
// main program

var
    matrix : MatrixN;
    arr : ArrMatrix;
begin
    readMatrixN(N, matrix);
    matrixToArr(matrix, arr);
    logArray(M, arr);
end.
 