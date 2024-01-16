Algoritmo PromediosCualitativos
	Definir param1, param2, param3, param4, prom Como Real
	Definir cualit Como Cadena
	Escribir "Ingrese la nota del parametro 1: "
	Leer param1
	Escribir "Ingrese la nota del parametro 2: "
	Leer param2
	Escribir "Ingrese la nota del parametro 3: "
	Leer param3
	Escribir "Ingrese la nota del parametro 4: "
	Leer param4
	Escribir "El promedio cualitativo es: ", califiCuali(param1,param2,param3,param4,cualit)
FinAlgoritmo

Funcion cualit<-califiCuali(param1,param2,param3,param4,cualit)
	prom = (param1 + param2 + param3 + param4) / 4	
	Si(prom <= 5)
		cualit = "Regular"
	SiNo
		Si(prom <= 8)
			cualit = "Bueno"
		SiNo
			Si(prom <= 9)
				cualit = "Muy bueno"
			SiNo
				cualit = "Sobresaliente"
			FinSi
		FinSi
	FinSi
FinFuncion
	