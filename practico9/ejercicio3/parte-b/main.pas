program main;

var
    mainArr : array[0..10] of integer = (1,2,3,4,5,6,7,8,9,10,11);

function isOrdered(lastIndex : integer; arr : array of integer) : boolean;
var
    i : integer;
begin
    i := 1;
    while((i < lastIndex) and (arr[i] > arr[i - 1])) do i := i + 1;

    isOrdered := i = lastIndex;
end;

begin
    writeLn(isOrdered(11, mainArr));
end.