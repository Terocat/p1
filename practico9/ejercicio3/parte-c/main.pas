program main;

var
    mainArr : array[0..10] of integer = (1,2,3,4,55,6,7,8,9,10,11);
    maxValue, position : integer;

procedure maxValuePos(lastIndex : integer; arr : array of integer; var pos, maxVal : integer);
var
    i : integer;
begin
    maxVal := 0;
    for i := 0 to lastIndex do
    begin
        if(arr[i] > maxVal) then
        begin
            maxVal := arr[i];
            pos := i;
        end;
    end;
end;

begin
    maxValuePos(10, mainArr, maxValue, position);
    writeLn(maxValue:0, position:3);
end.