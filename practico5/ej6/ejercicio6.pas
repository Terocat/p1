program ejercicio6;

var
    prevLetter, currentLetter : char;

begin
    write('Ingrese un texto: ');
    read(currentLetter);

    write('Las consonantes y vocales duplicadas son: ');

    while(not EOLn() and not EOF()) do 
    begin
        prevLetter := currentLetter;
        read(currentLetter);
        if(prevLetter = currentLetter) then write(currentLetter, currentLetter, ' ');
    end;

    writeLn();
end.