subproceso ingresamiento(nombres,notas1,notas2,acumulacion)
	
	para i=1 hasta 5 hacer
		Mostrar ""
		Mostrar "ingrese el nombre del estudiante ",i
		leer nom
		Mostrar ""
		nombres[i]=nom
		notas1[i]=ingresar_valido("Ingrese la nota 1 del estudiante,",nom)
		mostrar ""
		notas2[i]=ingresar_valido("Ingrese la nota 2 del estudiante,",nom)
		acumulacion[i]=notas1[i]+notas2[i]
	FinPara
	
	
FinSubProceso

funcion num<-ingresar_valido(msj,msj2)
	i=1
	Repetir
		Mostrar msj,msj2
		leer num
		si num<0 o num>20 entonces
			Mostrar ""
			Mostrar "Dato fuera de rango, intente de nuevo"
			Mostrar ""
		FinSi
	Hasta Que num>=0 y num<=20
FinFuncion

subproceso Salidas(nombres,notas1,notas2,acumulacion)
	
	Para i=1 hasta 5 hacer
		Mostrar ""
		Mostrar "Status de estudiante N°",i		
		Mostrar "Nombre: ", nombres[i]
		Mostrar "Nota 1: ",notas1[i]
		Mostrar "Nota 2: ",notas2[i]
		Mostrar "Total de notas: ", acumulacion[i]
	FinPara
	
FinSubProceso
Algoritmo sin_titulo
	Dimension nombres[5]
	Dimension notas1[5]
	Dimension notas2[5]
	Dimension acumulacion[5]
	
	ingresamiento(nombres,notas1,notas2,acumulacion)
	Salidas(nombres,notas1,notas2,acumulacion)
	
	
FinAlgoritmo
