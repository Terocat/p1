program pendulo;
const
	g = 9.8;
var
	length : real;
begin
	writeLn('Ingrese longitud...');
	readLn(length);
	writeLn((2 * pi * sqrt(length / g)):0:2);
end.
