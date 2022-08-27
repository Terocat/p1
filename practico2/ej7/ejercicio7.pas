program calculateError;

var
    measurement, realVal : real;

begin
    write('Ingrese medición y valor real: ');
    read(measurement, realVal);
    writeLn('Medición: ', measurement:0:4);
    writeLn('Valor verdadero: ', realVal:0:4);
    writeLn('Error relativo: ', abs(measurement - realVal) / realVal:0:4);
end.