program ejercicio6;

var
    hours1D1, hours2D1, hours1D2, hours2D2,
    minutes1D1, minutes2D1, minutes1D2, minutes2D2 : char;
    hours, minutes : integer;

begin
    read(hours1D1, hours2D1, minutes1D1, minutes2D1);
    read(hours1D2); (* read the space between the times submitted *)
    read(hours1D2, hours2D2, minutes1D2, minutes2D2);
    
    hours := (ord(hours1D1) - ord('0')) * 10 + (ord(hours2D1) - ord('0')) +
             (ord(hours1D2) - ord('0')) * 10 + ord(hours2D2) - ord('0');

    minutes := (ord(minutes1D1) - ord('0')) * 10 + ord(minutes2D1) - ord('0') +
               (ord(minutes1D2) - ord('0')) * 10 + ord(minutes2D2) - ord('0');

    writeLn(hours div 24:1, ' ', hours mod 24 + minutes div 60:0, minutes mod 60:0);
end.