Algoritmo AreasDeFiguras
	Definir opcNum Como Entero
	Definir lado, baseTri, alturaTri, baseRec, alturaRec, areaTotal Como Real
	areaTotal=0
	Escribir "Escoga la opcion a calcular: "
	Escribir "1. Area de un Cuadrado"
	Escribir "2. Area de un Triangulo"
	Escribir "3. Area de un Rectangulo"
	Leer opcNum
	Escribir "--------------------------"
	Si (opcNum ==1)
		Escribir "Ingrese el lado del cuadrado: "
		Leer lado
		areaTotal<-areaCuadrado(lado)
		Escribir "El area del cuadrado es: ", areaTotal
	SiNo
		Si (opcNum ==2)
			Escribir "Ingrese la base del triangulo: "
			Leer baseTri
			Escribir "Ingrese la altura del triangulo: "
			Leer alturaTri
			areaTotal<-areaTriangulo(baseTri, alturaTri)
			Escribir "El area del triangulo es: ", areaTotal
		SiNo
			Si(opcNum ==3)
				Escribir "Ingrese la base del rectangulo: "
				Leer baseRec
				Escribir "Ingrese la altura del rectangulo: "
				Leer alturaRec
				areaTotal<-areaRectangulo(baseRec, alturaRec)
				Escribir "El area del rectangulo es: ", areaTotal
			SiNo
				Escribir "El rango de opciones es de 1 al 3 ingrese nuevamente"
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

SubProceso areaTotal<-areaCuadrado(lado)
	areaTotal = lado * lado
FinSubProceso

SubProceso areaTotal<-areaTriangulo(baseTri, alturaTri)
	areaTotal= (baseTri * alturaTri) / 2
FinSubProceso

SubProceso areaTotal<-areaRectangulo(baseRec, alturaRec)
	areaTotal = baseRec * alturaRec
FinSubProceso

