type
    matrix = array[0..9] of array[0..9] of real;

procedure readMatrix(var A : matrix);
var
    i, j : integer;
    entry : real;
begin
    for i := 0 to 9 do
        for j := 0 to 9 do
        begin
            read(entry);
            A[i][j] := entry;
        end;
end;

procedure printMatrix(A : matrix);
var
    i, j : integer;
begin
    for i := 0 to 9 do
    begin
        for j := 0 to 9 do
            write(A[i][j]:0:1, ' ');
        writeLn(); 
    end;
end;

procedure switchRows(var A : matrix; m, n : integer);
var
    i : integer;
    aux : real;
begin
    for i := 0 to 9 do
    begin
        aux := A[m][i];
        A[m][i] := A[n][i];
        A[n][i] := aux;
    end;
end;










