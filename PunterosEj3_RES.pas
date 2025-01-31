program PunterosEj3_RES;

type
    { Declara un tipo de registro llamado “nodo” con dos campos: un entero y un puntero a “nodo” }
    nodo = record
        valor: Integer;
        otro_nodo: ^nodo;
    end;

var
    { Declara una variable de tipo puntero a nodo }
    punteroNodo: ^nodo;

begin
    { Crea un nodo en memoria dinámica (heap) }
    new(punteroNodo);

    { Dale valor 100 al campo entero de este nodo }
    punteroNodo^.valor := 100;

    { Pon a nil el campo puntero del nodo }
    punteroNodo^.otro_nodo := NIL;

    { Pon ahora el puntero del nodo a apuntar al propio nodo }
    punteroNodo^.otro_nodo := punteroNodo;

    { En este punto hay dos instrucciones alternativas para liberar la memoria dinámica creada pero CUIDADO: 
      Debes elegir una u otra, pues si incluyes las dos estarás provocando un error al tratar de devolver
      2 veces la misma memoria!! }

    dispose(punteroNodo); { Alternativa 1: Liberar el nodo desde el puntero que lo reservó inicialmente}
    dispose(punteroNodo^.otro_nodo); { Alternativa 2: Liberar el nodo a través del campo "otro_nodo" del propio nodo }

    { Termina }
end.