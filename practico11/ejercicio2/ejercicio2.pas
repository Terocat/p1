program ejercicio3;

const
    MAX_PEOPLE = 10;
    MAX_STRING_LENGTH = 100;
type
    String = 
        record
            str : array[1..MAX_STRING_LENGTH] of char;
            length : 0..MAX_STRING_LENGTH;
        end;

    Date = 
        record
            day : 1..31;
            month : 1..12;
            year : 1..maxint;
        end;

    Person = 
        record
            name : String;
            birthDate : Date;
            fIndex, mIndex : 0..MAX_PEOPLE;
        end;
    Family =
        record
            people : array[1..MAX_PEOPLE] of Person;
            last : 1..MAX_PEOPLE;
        end;

function compareStr(str1, str2 : String) : boolean;
var
    i : integer;
begin
    i := 0;
    if(str1.length = str2.length) then
    begin
        i := 1;

        while((i <= str1.length) and (str1.str[i] = str2.str[i])) do
            i := i + 1;
    end;

    compareStr := (i > str1.length);
end;

procedure readStr(var s : String; length : integer);
var
    i : integer;
begin
    i := 1;
    while((i <= length)) do
    begin
        read(s.str[i]);
        i := i + 1;
    end;

    s.length := length;
end;

procedure printStr(s : String);
var
    i : integer;
begin
    for i := 1 to s.length do
        write(s.str[i]);
    writeLn();
end;

procedure printDate(d : Date);
begin
    writeLn(d.day:0, '/',d.month:0, '/', d.year:0);
end;

procedure printParents(name : String; family : Family);
var
    i : integer;
    p : Person;
begin
    i := 1;

    while((i <= family.last) and not compareStr(name, family.people[i].name)) do
        i := i + 1;
    writeLn(i);
    if(i <= family.last) then // found name
    begin
        p := family.people[i];

        with family.people[p.fIndex] do
        begin
            writeLn('Padre: ');
            writeLn('   Nombre: ', name.str);
            write('   Fecha de nacimiento: ');
            printDate(birthDate);
        end;

        with family.people[p.mIndex] do
        begin
            writeLn('Madre: ');
            writeLn('   Nombre: ', name.str);
            write('   Fecha de nacimiento: ');
            printDate(birthDate);
        end;
    end;

end;

procedure readFamily(var f : Family; n : integer);
var
    i : integer;
begin
    for i := 1 to n do
    begin
        with f.people[i] do
        begin
            readStr(name, 4);
            readLn(birthDate.day, birthDate.month, birthDate.year, fIndex, mIndex);
            //writeLn(name.str, birthDate.day, birthDate.month, birthDate.year, fIndex, mIndex);
        end;
    end;

    f.last := n;
end;

// main program

var
    s : String;
    f : Family;
    c : integer;
begin
    readFamily(f, 3);
    printParents(f.people[1].name, f);
end.














