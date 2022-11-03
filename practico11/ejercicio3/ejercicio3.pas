program ejercicio4;

const
    MAX_LENGTH = 100;

type
    String =
        record
            chars : array[1..MAX_LENGTH] of char;
            length : 0..MAX_LENGTH;
        end;

procedure readStr(var str : String);
var
    i : integer;
    c : char;
begin
    i := 0;
    read(c);

    while((c <> '.') and (i < MAX_LENGTH)) do
    begin
        i := i + 1;
        str.chars[i] := c;
        read(c);
    end;

    str.length := i;
end;

function numOccurrences(s : String; c : char) : integer;
var
    i, count : integer;
begin
    count := 0;
    for i := 1 to s.length do
    begin
        count := count + ord(c = s.chars[i]);
    end;

    numOccurrences := count;
end;

function containsVowel(s : String) : boolean;
var
    i : integer;
begin
    i := 1;
    while((i <= s.length) and (s.chars[i] <> 'a') and (s.chars[i] <> 'e') 
    and (s.chars[i] <> 'i') and (s.chars[i] <> 'o') and (s.chars[i] <> 'u')) do
        i := i + 1;
    containsVowel := (i <= s.length);
end;

// main program
var
    s : String;
begin
    readStr(s);
    writeLn(numOccurrences(s,'a'), containsVowel(s));    
end.