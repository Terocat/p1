program ejercicio5;

type
    Err = (diverr, reserr, argerr);
    Nerr = 
        record
            case isError : boolean of
                true: (
                    value : 0..maxint
                );
                false: (
                    error : Err
                );
        end;
procedure division(a,b : Nerr; var res : Nerr);
begin
    if((not a.isError) and (not b.isError) and (b.value <> 0)) then
        res := a div b;
    
    if((not a.isError) and (b.value = 0)) then
    begin
        res.isError := true;
        res.error := diverr;
    end;

    if((a.isError) or (b.isError)) then
    begin
        res.isError := true;
        res.error := argerr;
    end;
end;

procedure resta(a,b : Nerr; var res : Nerr);
begin
    if((not a.isError) and (not b.isError) and (b >= a)) then
        res := a - b;
    
    if((not a.isError) and (not b.isError) and (b < a)) then
    begin
        res.isError := true;
        res.error := reserr;
    end;

    if((a.isError) or (b.isError)) then
    begin
        res.isError := true;
        res.error := argerr;
    end;
end;

procedure suma(a,b : Nerr; var res : Nerr);
begin
    if((not a.isError) and (not b.isError)) then
        res := a + b;
    
    if((a.isError) or (b.isError)) then
    begin
        res.isError := true;
        res.error := argerr;
    end;
end;

procedure producto(a,b : Nerr; var res : Nerr);
begin
    if((not a.isError) and (not b.isError)) then
        res := a * b;
    
    if((a.isError) or (b.isError)) then
    begin
        res.isError := true;
        res.error := argerr;
    end;
end;

var
    a, b, c : Nerr;
begin
    a.isError := false;
    b.isError := false;
    c.isError := false;
    readLn(a.value, b.value);
end.
