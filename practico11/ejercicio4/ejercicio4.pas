program ejercicio5;

type
    RootsType = (complexRoots, realRoots);
    ComplexRoot = 
        record
            im, re : real;
        end;

    Roots = 
        record
            case types : RootsType of
                realRoots: (r1, r2: real);
                complexRoots: (c1, c2 : ComplexRoot); 
            end;
procedure getRoots(a,b,c : real; var r : Roots);
var
    disc : real;
begin
    disc := b*b - 4*a*c;

    if(disc >= 0) then
    begin
        r.types := realRoots;
        r.r1 := (a + sqrt(disc)) / 2*a;
        r.r2 := (a - sqrt(disc)) / 2*a;
    end
    else
        begin
            r.types := complexRoots;
            r.c1.re := a;
            r.c2.re := a;

            r.c1.im := sqrt(abs(disc));
            r.c2.im := -sqrt(abs(disc));
        end;
end;

procedure printRoots(r : Roots);
begin
    if(r.types = realRoots) then
        writeLn(r.r1:0:2, ' ', r.r2:0:2)
    else
        writeLn(r.c1.re:0:2, ' + ', r.c1.im:0:2, 'i ', r.c2.re:0:2, ' ', r.c2.im:0:2, 'i');
end;

// main program

var
    r : Roots;
    a,b,c : real;
begin
    read(a,b,c);
    getRoots(a,b,c, r);
    printRoots(r);
end.













