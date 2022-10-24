procedure logMatrix(m,n : integer; matrix : MatrizMP);
var
    i, j : integer;
begin
    for i := 0 to m do
    begin
        for j := 0 to n do
        begin
            write(matrix[i][j]:0, ' ');
        end;
        writeLn();
    end;
end;

(*procedure readMatrix(m,n : integer; var A : array of array of integer);
var
    i, j : integer;
    entry : integer;
begin
    for i := 0 to m do
        for j := 0 to n  do
        begin
            read(entry);
            A[i][j] := entry;
        end;
end;*)