Algoritmo ParesImpares_01
	Definir matrizA, matrizB, matrizC, valorfil, valorcolum Como Entero
	Definir prom Como Real
	valorfil = 3
	valorcolum = 3
	Dimension matrizA[valorfil, valorcolum]
	Dimension matrizB[valorfil, valorcolum]
	Dimension matrizC[valorfil, valorcolum]
	llenarMatriz(matrizA, valorfil, valorcolum)
	Escribir "Matriz Generada:"
	presentarMatriz(matrizA, valorfil, valorcolum)
	Escribir "--------------------------------------"
	Escribir "Los pares de la matriz son:"
	llenarPares(matrizA, matrizB, valorfil, valorcolum)
	presentarMatriz(matrizB, valorfil, valorcolum)
	Escribir "Los impares de la matriz son:"
	llenarImpares(matrizA, matrizC, valorfil, valorcolum)
	presentarMatriz(matrizC, valorfil, valorcolum)
	presentarPromedio(matrizA, valorfil, valorcolum, promedio)
	Escribir "El promedio de los valores de la matriz es: ", promedio
FinAlgoritmo

SubProceso llenarMatriz (matrizA, valorfil, valorcolum)
	Para i<-0 Hasta valorfil-1 Con Paso 1 Hacer
		Para j<-0 Hasta valorcolum-1 Con Paso 1 Hacer
			matrizA[i,j] = Aleatorio(1,100)
		Fin Para
	Fin Para
FinSubProceso

Funcion presentarMatriz (matrizA, valorfil, valorcolum)
	Para i<-0 Hasta valorfil-1 Con Paso 1 Hacer
		Para j<-0 Hasta valorcolum-1 Con Paso 1 Hacer
			Escribir matrizA[i,j], "  |  " Sin Saltar
		Fin Para
		Escribir " "
	Fin Para
FinFuncion

Funcion llenarPares (matrizA, matrizB, valorfil, valorcolum)
	Para i<-0 Hasta valorfil-1 Con Paso 1 Hacer
		Para j<-0 Hasta valorcolum-1 Con Paso 1 Hacer
			Si (matrizA[i,j] MOD 2) == 0 Entonces
				matrizB[i,j] = matrizA[i,j]
			SiNo
				matrizB[i,j] = 0
			Fin Si
		Fin Para
	Fin Para
FinFuncion

Funcion llenarImpares (matrizA, matrizC, valorfil, valorcolum)
	Para i<-0 Hasta valorfil-1 Con Paso 1 Hacer
		Para j<-0 Hasta valorcolum-1 Con Paso 1 Hacer
			Si (matrizA[i,j] MOD 2) <> 0 Entonces
				matrizC[i,j] = matrizA[i,j]
			SiNo
				matrizC[i,j] = 0
			Fin Si
		Fin Para
	Fin Para
FinFuncion

Funcion presentarPromedio (matrizA, valorfil, valorcolum, promedio Por Referencia)
	Definir sum Como Entero
	Para i<-0 Hasta valorfil-1 Con Paso 1 Hacer
		Para j<-0 Hasta valorcolum-1 Con Paso 1 Hacer
			sum = sum + matrizA[i,j]
		Fin Para
	Fin Para
	promedio = sum/(valorfil*valorcolum)
FinFuncion

