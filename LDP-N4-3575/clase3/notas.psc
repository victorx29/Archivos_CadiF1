funcion num<-ingresar_valido(msj,msj2,min,max)
	i=1
	Repetir
		Mostrar msj,msj2
		leer num
		si num<min o num>max entonces
			Mostrar ""
			Mostrar "Dato invalido, intente de nuevo"
			Mostrar ""
		FinSi
	Hasta Que num>=min y num<=max
FinFuncion

SubProceso cargar_matriz(matriz,filas,col)
	para f=1 hasta filas
		Mostrar "Ingrese la informacion del estudiante ",f
		para c=1 hasta col Hacer
			msj="Ingrese nota N°"
			matriz[f,c]=ingresar_valido(msj,c,0,100)
			
		FinPara
	FinPara
FinSubProceso

SubAlgoritmo Mostrar_datos(Notas,filas,col)
	Para f=1 hasta filas
		Mostrar ""
		Mostrar "Estudiante N°",F
		para c=1 hasta col hacer
			mostrar "Nota N°",f,": ",Notas[f,c]
		FinPara
	FinPara
FinSubAlgoritmo

subproceso buscar(Notas,fila,col)
	
	filaI=ingresar_valido("Ingrese el Numero del alumno a buscar",i,1,5)
	f=1
	Repetir
		
		si filaI=f entonces	
			Mostrar "Notas del estudiante N°",filaI
			para c=1 hasta col hacer
				mostrar "Nota N°",c,": ",Notas[f,c]
			FinPara
			adminito=verdadero
		sino
			f=f+1
			
		fin si

		
	hasta que f>fila o adminito
	
FinSubProceso

Algoritmo sin_titulo
	
	dimension registro[5,3]
	cargar_matriz(registro,5,3)
	Mostrar_datos(registro,5,3)
	buscar(registro,5,3)

FinAlgoritmo
