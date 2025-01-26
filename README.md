# Ejercicios de Punteros con Pascal

## Ejercicio 1 (Nivel básico)

Sigue la siguiente secuencia de ejecución escribiendo código Pascal y a la vez dibuja en un 
papel lo que ocurre tras ejecutar cada instrucción [Nivel básico]: 
 
1. Declara variable entera (x) 
2. Declara una variable de tipo puntero a entero (p_ent) 
3. Da el valor 100 a x 
4. Crea un entero dinámicamente con p_ent y dale el valor que tiene actualmente x 
5. Imprime por pantalla el valor contenido en el entero al que apunta p_ent 
6. Crea con new un nuevo entero dinámicamente 
7. Imprime por pantalla el valor contenido en el entero al que apunta p_ent 
8. Pon el puntero p_ent a apuntar a x 
9. Súmale 100 al entero apuntado por el puntero p_ent 
10.  Imprime por pantalla el valor de x y también del entero al que apunta p_ent 
11.  Pon el puntero p_ent a NIL 
12.  Libera la memoria asociada al nuevo entero 
13.  Suma 100 a x pero sin usar x en la operación de suma (solo usando p_ent) 
14.  Muestra por pantalla que son iguales  
15.  Libera toda la memoria asociada a p_ent y termina


## Ejercicio 2 (Nivel básico)

Sigue la siguiente secuencia de ejecución escribiendo código Pascal y a la vez dibuja en un 
papel lo que ocurre tras ejecutar cada instrucción [Nivel básico]: 
 
1. Crea un array de 3 enteros V e inicialízalo con números aleatorios.  
2. Muestra sus valores por pantalla 
3. Declara un puntero a entero p y ponlo a apuntar a la primera posición del array 
4. Pon el valor 100 en el entero apuntado por p 
5. Muestra los valores del array “V” por pantalla 
6. Recorre con p todas las posiciones del array para ponerlas todas a cero  
(Nota: puedes sumar 1 a p para pasar a la siguiente)


## Ejercicio 3 (Nivel medio)

Sigue la siguiente secuencia de ejecución escribiendo código Pascal y a la vez dibuja en un 
papel lo que ocurre tras ejecutar cada instrucción: 
 
1. Declara un tipo de registro llamado “nodo” con dos campos: un entero y un puntero a 
“nodo”. 
2. Declara una variable de tipo puntero a nodo 
3. Crea un nodo en memoria dinámica (heap) 
4. Dale valor 100 al campo entero de este nodo 
5. Pon a nil el campo puntero del nodo 
6. Pon ahora el puntero del nodo a apuntar al propio nodo 
7. En este punto hay dos instrucciones alternativas para liberar la memoria dinámica 
creada: identifícalas y escríbelas. Dibuja cómo quedarían las cosas tras cada una de 
ellas.  
8. Termina 


## Ejercicio 4 (Nivel medio)

Sigue la siguiente secuencia de ejecución escribiendo código Pascal y a la vez dibuja en un 
papel lo que ocurre tras ejecutar cada instrucción: 


1. Declarar un array de MAX punteros a enteros 
2. Crea un entero en cada una de las posiciones inicializado a un número aleatorio 
3. Implementa un procedimiento que muestre por pantalla el contenido de cada posición  
4. Implementa un procedimiento que ponga a cero todos los números
5. Implementa un subprograma que ponga todos los punteros que no lo estén, a NIL 
6. Implementa una función que calcule el máximo número del array (debes comprobar  antes, pues puede que alguna posición no tenga un número y esté a NIL) 
7. Implementa una función que compute la suma de todos los enteros (de nuevo 
asegúrate de no intentar sumar los que estén a NIL)


## Ejercicio 5 (Nivel medio)



1. Declara un tipo coordenada_3D para puntos con coordenadas x,y,z
2. Declara un array de MAX punteros a coordenadas_3D
3. Crea una coordenada_3D en cada una de las posiciones inicializado todas las  coordenadas con números aleatorios
4. Implementa un subprograma que libere la memoria asignada a una posición  
5. Implementa un procedimiento que sume todas las x  
6. Implementa un subprograma que permita añadir una coordenada en la primera  posición libre del array
7. Implementa un subprograma que calcule la máxima coordenada y (debes comprobar  antes, pues puede que alguna posición no tenga coordenada y esté a NIL)



## Ejercicio 6 (Nivel avanzado)

Vamos a hacer un simulador de "Isla de la Tentación" en Pascal. Para ello, sigue los siguientes pasos:

1. Genera un registro de tipo  "Participante" con los campos: nombre (texto), edad (entero), rol (tentador, pareja) y otroParticipante (puntero a Participante)
2. Crea un array de MAX punteros a Participante
3. Crea un procedimiento que cree un participante con nombre, edad y rol. Otro participante será nil.
4. Crea un procedimiento que asigne una pareja a un participante, recibirá dos parámetros, los dos participantes
5. Crea un procedimiento aud inicialice la isla de las tentaciones. Por cada 2 parejas, habrá un tentador. 
6. Crea un procedimiento que muestre por pantalla la isla de las tentaciones de la siguiente manera:
            - Nombre: XXXX
            - Edad: XX
            - Rol: Pareja/Tentador
            - Pareja: XXXX --> si tuviera pareja
            - Infiel --> si su rol fuese pareja, pero no la tiene
            - Tentó a: XXXX --> si fuese tentador y ahora tiene pareja

7. Crea un procedimiento que simule una ronda de tentación. En cada ronda, se seleccionará una pareja y un tentador: 
    - Se seleccionará al azar (50/50) quién de los dos será tentado. 
    - Se determinará si la pareja es infiel o no (25/75). 
    - Se actualizarán los datos. Si ha sido infiel, perderán su pareja. El tentador, tendrá una nueva pareja.

8. Genera un programa que le pregunte al usuario si quiere jugar una ronda más o no. Si el usuario decide que sí, se realizará una ronda más. Si decide que no, se mostrará el estado final de la isla de las tentaciones.
