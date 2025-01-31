program PunterosEj4_RES;

uses
    crt;

const
    MAX = 25;  { 1.a Declarar un array de MAX punteros a enteros }

type
   { 1.b Declarar un array de MAX punteros a enteros }
   tparray = array[0..MAX-1] of ^integer;

var
    { 1.c Declarar un array de MAX punteros a enteros }
    ptrArray: tparray;
    option: char; // Variable para la opción del menú
    i: integer;   // Variable para iterar en el bucle

{ 6.a Implementa una función que calcule el máximo número del array (debes comprobar
antes, pues puede que alguna posición no tenga un número y esté a NIL)}
function MaxArray(ptrArray: tparray): Integer;
begin
    // Implementar esta función
    WriteLn('No implementado todavía');
end;

{ 7.a Implementa una función que compute la suma de todos los enteros (de nuevo
asegúrate de no intentar sumar los que estén a NIL) }
function SumArray(ptrArray: tparray): Integer;
begin
    // Implementar esta función
    WriteLn('No implementado todavía');
end;

{ 3.a Implementa un procedimiento que muestre por pantalla el contenido de cada posición }
procedure PrintArray(ptrArray: tparray);
begin
    // Implementar este procedimiento
    WriteLn('No implementado todavía');
end;

{ 4.a Implementa un procedimiento que ponga a cero todos los números }
procedure ZeroArray(var ptrArray: tparray);
begin
    // Implementar este procedimiento
    WriteLn('No implementado todavía');
end;

{ 5. Implementa un subprograma que ponga todos los punteros que no lo estén, a NIL }
procedure NilArray(ptrArray: tparray);
begin
    // Implementar este procedimiento
    WriteLn('No implementado todavía');
end;

begin
    { 2. Crea un entero en cada una de las posiciones inicializado a un número aleatorio }
    randomize;
    for i:= 0 to MAX-1 do begin
        new(ptrArray[i]);
        ptrArray[i]^:= random(MAX*MAX);
    end;

    repeat
        clrScr;
        writeLn('1. Mostrar el contenido del array'); { 3.b }
        writeLn('2. Poner a cero todos los números del array'); { 4.b }
        writeLn('3. Poner a NIL todos los punteros'); { 5.b }
        writeLn('4. Maximo número del array'); { 6.b }
        writeLn('5. Suma de todos los números del array'); { 7.b }
        writeLn('0. Salir');
        write('Elija una opcion: ');
        readLn(option);

        case option of
            '1': PrintArray(ptrArray);
            '2': ZeroArray(ptrArray);
            '3': NilArray(ptrArray);
            '4': WriteLn('Máximo: ', MaxArray(ptrArray));
            '5': WriteLn('Suma: ', SumArray(ptrArray));
        end;
        writeLn('Pulsa una tecla para continuar...');
        readKey;
    until option = '0';
end.  