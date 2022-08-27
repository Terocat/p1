program ejercicio2;

var
    searchChar, currentChar : char;
    count : integer;
    isNewWord : boolean;

begin
    write('Letra: ');
    readLn(searchChar);
    write('Oración: ');

    count := 0;
    isNewWord := true;

    while(not EOLn()) do
    begin
        read(currentChar);
        if((currentChar = searchChar) and isNewWord = true) then count := count + 1;

        isNewWord := currentChar = ' ';
    end;

    writeLn('La oración tiene ', count:0, ' palabras que comienzan con ', searchChar);
end.
