Algoritmo sin_titulo
	Dimension arreglo[10]
	tamano=10
	para i=1 Hasta 10
		Mostrar "Ingrese el numero a registrar en la posicion" i
		leer arreglo[i]
		
	FinPara
	
	Limpiar Pantalla
	Mostrar ""
	Mostrar "Elementos cargados..."
	
	para i=1 hasta tamano
		Mostrar "Posicion ",i,": ", arreglo[i]
		
	FinPara
	
	para i=1 hasta tamano-1
		Para j=1 Hasta tamano-1
			si arreglo[j]>arreglo[j+1] Entonces
				aux=arreglo[j]
				arreglo[j]=arreglo[j+1]
				arreglo[j+1]=aux
			FinSi
		FinPara
	FinPara
	
	Mostrar 'arreglo ordenado'
	
	para i=1 hasta 10 Hacer
		Mostrar "posicion " i ": " arreglo[i]
	FinPara
	Mostrar ""
FinAlgoritmo
