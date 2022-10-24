
procedure logArray(m : integer; arr : array of integer);
var
    i : integer;
begin
    for i := 1 to m do
        write(arr[i]:0,' ');
    writeLn();
end;

procedure readMatrixN(n : integer; var matrix : MatrixN);
var
    i, j : integer;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(matrix[i][j]);
end;