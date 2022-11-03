program ejercicio8;

const
    MaxDigits = 200;
type
    Digit = 0..9;
    Natural = 
        record
            digits : array[1..MaxDigits] of Digit;
            length : 0..MaxDigits;
        end;

procedure reverseNum(var n : Natural);
var
    i : integer;
    aux : Digit;
begin
    for i := 1 to trunc(n.length / 2) do
    begin
        aux := n.digits[i];
        n.digits[i] := n.digits[n.length + 1 - i];
        n.digits[n.length + 1 - i] := aux;
    end;
end;

procedure readNumber(var n : Natural);
var
    c : char;
    i : integer;
begin
    read(c);
    i := 0;
    while((ord(c) >= ord('0')) and (ord('9') >= ord(c))) do
    begin
        i := i + 1;
        n.digits[i] := ord(c) - ord('0');
        read(c);
    end;

    n.length := i;
    reverseNum(n);
end;

procedure clearNum(n : Natural);
var
    i : integer;
begin
    for i := (n.length + 1) to MaxDigits do
        n.digits[i] := 0;
end;

procedure add(n, m : Natural; var res : Natural);
var
    i, max, carry : integer;
begin
    max := n.length;
    if(m.length > n.length) then
        max := m.length;
    carry := 0;
    i := 1;    
    while((i <= max) or (carry > 0)) do
    begin
        res.digits[i] := (n.digits[i] + m.digits[i] + carry) mod 10;
        carry := (n.digits[i] + m.digits[i] + carry) div 10;
        res.length := i;
        i := i + 1;
    end;
end;


procedure printNumber(n : Natural);
var
    i : integer;
begin
    for i := n.length downto 1 do
        write(n.digits[i]:0);
end;

// main program

var
    n, m, res : Natural;

begin
    readNumber(n);
    readLn();
    readNumber(m);
    add(m,n,res);
    writeLn();
    printNumber(res);
    writeLn();
end.

















