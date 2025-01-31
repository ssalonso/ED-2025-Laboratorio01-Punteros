program PunterosEj2_RES;

uses
    SysUtils;

type
    tarray = array[0..2] of integer;

procedure mostrar_array(a: tarray);
begin
    for i := 0 to 2 do
        writeLn('V[', i, '] = ', a[i]);
    writeln;
end;

var
    V: tarray;
    p: ^integer;
    i: integer;

begin
    { Crea un array de 3 enteros V e inicialízalo con números aleatorios. }
    randomize;
    for i := 0 to 2 do
        V[i] := random(100);

    { Muestra sus valores por pantalla }
    writeLn('Valores iniciales del array:');
    mostrar_array(V);

    { Declara un puntero a entero p y ponlo a apuntar a la primera posición del array }
    p := @V[0];

    { Pon el valor 100 en el entero apuntado por p }
    p^ := 100;

    { Muestra los valores del array “V” por pantalla }
    writeLn('Valores del array después de asignar 100 a la primera posición:');
    mostrar_array(V);

    { Recorre con p todas las posiciones del array para ponerlas todas a cero }
    for i := 0 to 2 do begin
        p^ := 0;
        p := p + 1;         // Mueve el puntero al siguiente entero del array
    end;

    { Muestra los valores del array “V” por pantalla }
    writeLn('Valores del array después de poner todas las posiciones a cero:');
    mostrar_array(V);
end.