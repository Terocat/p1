type
    matriz = array[0..2] of array[0..2] of integer;


procedure transpose(n : integer; inputMatrix : matriz; var outputMatrix : matriz);
var
    i, j : integer;
begin
    for i := 0 to n - 1 do
        for j := 0 to n - 1 do
        begin
            outputMatrix[i][j] := inputMatrix[j][i];
        end;
end;

procedure transposeB(n : integer; var matrix : matriz);
var
    i, j : integer;
begin
    for i := 0 to n - 1 do
        for j := 0 to n - 1 do
        begin
            matrix[i][j] := matrix[j][i];
        end;
end;

procedure logMatrix(n : integer; matrix : matriz);
var
    i, j : integer;
begin
    for i := 0 to n - 1 do
    begin
        for j := 0 to n - 1 do
        begin
            write(matrix[i][j]:0, ' ');
        end;
        writeLn();
    end;
end;

procedure readMatrix(n : integer; var A : matriz);
var
    i, j : integer;
    entry : integer;
begin
    for i := 0 to n - 1 do
        for j := 0 to n - 1  do
        begin
            read(entry);
            A[i][j] := entry;
        end;
end;
