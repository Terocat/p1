program ejercicio2;

var
    searchLetter, currentChar, prevChar : char;
    count : integer;

begin
    write('Letra: ');
    readLn(searchLetter);
    write('Oración: ');

    count := 0;
    read(currentChar);

    while(not EOLn()) do
    begin
        prevChar := currentChar;
        read(currentChar);

        if(((currentChar = ' ') or (currentChar = '.')) and (prevChar = searchLetter)) then count := count + 1;
    end;

    writeLn('La oración tiene ', count:0, ' palabras que terminan con ', searchLetter);
end.
