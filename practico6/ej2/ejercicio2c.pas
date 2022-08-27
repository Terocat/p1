program ejercicio2c;

var
    currentChar, searchChar : char;
    count : integer;

begin
    write('Letra: ');
    readLn(searchChar);
    write('Oración: ');

    count := 0;

    while(not EOLn()) do
    begin
        read(currentChar);    

        if(currentChar = searchChar) then
        begin
            count := count + 1;    

            while(not(currentChar = ' ') and not EOLn) do read(currentChar);
        end;
    end;

    writeLn('La oración tiene ', count:0, ' palabras que contienen la letra ', searchChar);

end.