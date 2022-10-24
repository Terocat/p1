program ejercicio8;

const
    N = 4; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [0..N] of Digito;
var
    digits : Digitos;
    i : integer;

procedure readArray(lastIndex : integer;  var arr : Digitos);
var
    i : integer;
begin
    for i := 0 to lastIndex do 
        read(arr[i]);
end;

function arrToNum(lastIndex : integer; arr : Digitos) : integer;
var
    i, res : integer;
begin
    res := 0;

    for i := lastIndex downto 0 do
        res := res + (ord(arr[lastIndex - i]) - ord('0')) * round(exp(i * ln(10)));

    arrToNum := res;
end;

begin
    for i := 0 to N do
        read(digits[i]);
    writeLn(arrToNum(N, digits));
end.
