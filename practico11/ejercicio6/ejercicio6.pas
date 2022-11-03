program ejercicio6;

const 
    X = 10;
    Y = 10;

type
    Err = (divErr, resErr, argErr);
    Nerr = 
        record
            case isError : boolean of
                true: (
                    value : 0..maxint
                );
                false: (
                    error : Err
                );
        end;
    MErr = (sizeErr);
    MNerr = 
        record
            case isError : boolean of
                false: (
                    entries : array[1..X] of array[1..Y] of Nerr;
                    m, n : integer;
                );  
                true : (
                    error : MErr;
                );
        end;

procedure readMatrix(var matrix : MNerr);
var
    m, n, i, j : integer;
begin
    matrix.isError := false;
    write('Ingrese m y n: ' );
    read(m, n);
    matrix.m := m;
    matrix.n := n;

    for i := 1 to m do
        for j := 1 to n do
        begin
            with matrix.entries[i][j] do
            begin
                isError := false;
                read(value);
            end;
        end;
end;

procedure printMatrix(matrix : MNerr);
var
    i, j : integer;
begin
    if(matrix.isError) then 
    begin
        writeLn('Tried to print error matrix');
        exit();
    end;

    for i := 1 to matrix.m do
    begin
        for j := 1 to matrix.n do
            write(matrix.entries[i][j].value:0, ' ');
        writeLn();
    end;
end;

procedure matrixProd(matrixA, matrixB : MNerr; var resMatrix : MNerr);
var
    i, j, k, entry : integer;
begin
    if((not matrixA.isError) and (not matrixB.isError) and (matrixA.n = matrixB.m)) then
    begin
        resMatrix.m := matrixA.m;
        resMatrix.n := matrixB.n;
        for i := 1 to resMatrix.m do
            for j := 1 to resMatrix.n do
            begin
                resMatrix.entries[i][j].isError := false;
                entry := 0;
                for k := 1 to matrixA.n do
                    entry := entry + matrixA.entries[i][k].value * matrixB.entries[k][j].value;
                resMatrix.entries[i][j].value := entry;
            end;
    end
    else
    begin
        resMatrix.isError := true;
    end; 
end;

// main program
var
    matrixA, matrixB, resMatrix : MNerr;
begin
    readMatrix(matrixA);
    readMatrix(matrixB);
    matrixProd(matrixA, matrixB, resMatrix);
    writeLn();
    printMatrix(resMatrix);
end.
