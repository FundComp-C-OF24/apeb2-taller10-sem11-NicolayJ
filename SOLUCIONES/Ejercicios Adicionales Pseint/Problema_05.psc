Algoritmo OperacionesMatriz
    Definir valorfil,valorcolum Como Entero
    Escribir "Ingrese la cantidad de filas y columnas de la matriz cuadrada:"
    Leer valorfil
	Leer valorcolum
    Dimension matrizA[valorfil, valorcolum]
    llenarMatriz(matrizA, valorfil, valorcolum)
    Escribir "Matriz Generada:"
    presentarMatriz(matrizA, valorfil, valorcolum)
    Definir suma, resta, multiplicacion Como Entero
    suma = sumarMatriz(matrizA, valorfil, valorcolum)
    resta = restarMatriz(matrizA, valorfil, valorcolum)
    multiplicacion = multiplicarMatriz(matrizA, valorfil, valorcolum)
    Escribir "La suma de los elementos de la matriz es:", suma
    Escribir "La resta de los elementos de la matriz es:", resta
    Escribir "La multiplicación de los elementos de la matriz es:", multiplicacion
FinAlgoritmo

SubProceso llenarMatriz(matriz, valorfil, valorcolum)
    Para i <- 0 Hasta valorfil-1 Con Paso 1 Hacer
        Para j <- 0 Hasta valorcolum-1 Con Paso 1 Hacer
            matriz[i, j] = Aleatorio(1, 9)
        FinPara
    FinPara
FinSubProceso

Funcion presentarMatriz(matriz, valorfil, valorcolum)
    Para i <- 0 Hasta valorfil-1 Con Paso 1 Hacer
        Para j <- 0 Hasta valorcolum-1 Con Paso 1 Hacer
            Escribir matriz[i, j], "  |  " Sin Saltar
        FinPara
        Escribir " "
    FinPara
FinFuncion

Funcion suma<-sumarMatriz(matriz, valorfil, valorcolum)
    Definir suma Como Entero
    suma = 0
    Para i <- 0 Hasta valorfil-1 Con Paso 1 Hacer
        Para j <- 0 Hasta valorcolum-1 Con Paso 1 Hacer
            suma = suma + matriz[i, j]
        FinPara
    FinPara
FinFuncion

Funcion resta<-restarMatriz(matriz, valorfil, valorcolum)
    Definir resta Como Entero
	
    Para i <- 0 Hasta valorfil-1 Con Paso 1 Hacer
        Para j <- 0 Hasta valorcolum-1 Con Paso 1 Hacer
            Si i = 0 Y j = 0 Entonces
                resta = matriz[i, j]
            Sino
                resta = resta - matriz[i, j]
            FinSi
        FinPara
    FinPara
FinFuncion


Funcion multiplicacion<-multiplicarMatriz(matriz, valorfil, valorcolum)
    Definir multiplicacion Como Entero
    multiplicacion = 1
	
    Para i <- 0 Hasta valorfil-1 Con Paso 1 Hacer
        Para j <- 0 Hasta valorcolum-1 Con Paso 1 Hacer
            multiplicacion = multiplicacion * matriz[i, j]
        FinPara
    FinPara
FinFuncion