program ejercicio5;
{$I subPrograms.pas}

var
    str1 : array[0..2] of char;
    str2 : array[0..10] of char;

begin
    write('Escriba la subStr: ');
    readString(2, str1);
    writeLn();
    write('Escriba la str: ');
    readString(10, str2);
    writeLn(subStrIndex(2, 10, str1, str2):0);
end.