function numGreater(lastIndex, num : integer; arr : array of integer):integer;
var
    i, count : integer;
begin
    count := 0;

    for i := 0 to lastIndex do
    begin
        if(arr[i] < num) then count := count + 1;
    end;

    numGreater := count;
end;

    