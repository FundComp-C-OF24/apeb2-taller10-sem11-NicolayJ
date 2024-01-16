Algoritmo PlanillaLuz_PredioInmueble
	Definir opc Como Entero
	Definir valorKW, numKV, valorInmueb, predio Como Real
	Definir cedula, nombCli Como Cadena
	Escribir "Ingrese el nombre del usuario: "
	Leer nombCli
	Escribir "Ingrese la cedula del cliente: "
	Leer cedula
	Escribir "Ingrese la opcion que desea saber: "
	Escribir "1. Planilla de luz"
	Escribir "2. Predio de un bien inmueble"
	Leer opc
	Escribir "-----------------------------------"
	Si (opc == 1 )
		Escribir "Ingresar el valor del Kilovatio: "
		Leer valorKW
		Escribir "Ingrese el numero de Kilovatios gastados al mes: "
		Leer numKV
		valorPlanilla<-planillaLuz(valorKW, numKV)
		Escribir "Reporte"
		Escribir "Cliente ", nombCli, " con cedula ", cedula, " debe pagar el valor de $", valorPlanilla
	SiNo
		Si (opc == 2)
			Escribir "Ingresar el valor del Inmueble: "
			Leer valorInmueb
			predio<-calcPredio(valorInmueb)
			Escribir "Reporte"
			Escribir "Cliente ", nombCli, " con cedula ", cedula, " tiene un inmueble valorado en $", valorInmueb," y tiene que pagar de predio $", predio
		FinSi
	FinSi
FinAlgoritmo

SubProceso valorPlanilla<-planillaLuz(valorKW, numKV)
	valorPlanilla = valorKW * numKV
FinSubProceso

SubProceso predio<-calcPredio(valorInmueb)
	predio = valorInmueb * 0.02
FinSubProceso
	