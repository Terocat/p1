program ejercicio6;

var
    hour1, hour2, minutes1, minutes2 : real;
    hours, minutes : integer;

begin
    read(hour1, hour2);
    minutes1 := hour1 - trunc(hour1 / 100) * 100;
    minutes2 := hour2 - trunc(hour2 / 100) * 100;
    hour1 := trunc(hour1 / 100);
    hour2 := trunc(hour2 / 100);

    hours := trunc(hour1 + hour2);
    minutes := trunc(minutes1 + minutes2);

    write(hours div 24,' ');
    if(hours mod 24 + minutes div 60 < 10) then write(0:0);
    write(hours mod 24 + minutes div 60:0);
    if(minutes mod 60 < 10) then write(0:0);
    writeLn(minutes mod 60:0);
end.