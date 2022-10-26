program ejercicio6;

type
    TipoMes = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, setiembre, octubre, noviembre, diciembre);
    TipoMesRango = 1..12;

procedure printMonth(month : TipoMes);
begin
    case month of
        enero: writeLn('Enero');
        febrero: writeLn('Febrero');
        marzo: writeLn('Marzo');
        abril: writeLn('Abril');
        mayo: writeLn('Mayo');
        junio: writeLn('Junio');
        julio: writeLn('Julio');
        agosto: writeLn('Agosto');
        setiembre: writeLn('Setiembre');
        octubre: writeLn('Octubre');
        noviembre: writeLn('Noviembre');
        diciembre: writeLn('Diciembre');
    end;
end;

procedure readMonth(var month : TipoMes);
var
    m : TipoMesRango;
begin
    read(m);
    month := TipoMes(m-1);
end;

var
    month : TipoMes;

begin
    write('Ingrese un mes: ');
    readMonth(month);
    printMonth(month);
end.