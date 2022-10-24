procedure logString(lastIndex : integer; str : array of char);
var
    i : integer;
begin
    for i := 0 to lastIndex do
        write(str[i]);
    writeLn();
end;

function subStrIndex(lastIndex1, lastIndex2 : integer; str1, str2 : array of char) : integer;
var
    isSubStr : boolean;
    i, j : integer;
begin
    (*logString(lastIndex1, str1);
    logString(lastIndex2, str2);*)
    for i := 0 to (lastIndex2 - lastIndex1) do
    begin
        isSubStr := true;
        for j := i to (i + lastIndex1) do 
            if(not(str1[j - i] = str2[j])) then
            begin
                isSubStr := false;
                break;
            end;
        if(isSubStr) then exit(i);
    end;

    exit(-1);
end;

procedure readString(lastIndex : integer; var str : array of char);
var
    i : integer;
begin
    i := 0;

    while((not EOLn) and (i <= lastIndex)) do
    begin
        read(str[i]);
        i := i + 1;
    end;
    readLn(); 
end;
