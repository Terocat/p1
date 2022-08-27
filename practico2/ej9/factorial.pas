function factorial(num : integer):integer;
begin
    if(num = 0) then exit(1);
    if(num <= 1) then exit(num);

    exit(num * factorial(num - 1));
end;