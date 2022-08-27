program mailPrice;

const
    pricePerKg = 56;
    basePrice = 77;

var
    inputWeight, price, weightLeft : real;

begin
    write('Ingrese el peso del paquete: ');
    readLn(inputWeight);

    price := basePrice;
    weightLeft := inputWeight - 1;

    while(weightLeft > 0) do
    begin
        weightLeft := weightLeft - 1;
        price := price + pricePerKg;
    end;

    writeLn('Peso: ', inputWeight:0:2, ' Kg Precio: $', price:0:2);
end.