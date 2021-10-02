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

SubProceso cargar_matriz(matriz,filas,col,apro por referencia,)
	para f=1 hasta filas
		Mostrar "Ingrese el nombre del estudiante ",f
		Leer 
		para c=1 hasta col Hacer
			msj="Ingrese nota N°"
			notik=ingresar_valido(msj,c,0,100)
			matriz[f,c]=notik
			si notik>=50 entonces
				apro=apro+1
			FinSi
			
			
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

subproceso buscar(Notas,fila,col,apro,nombres)
	
	Mostrar ""
	Mostrar "El porsentaje de alumnos aprobados es: " ,(apro/15)*100
	Mostrar ""
	
	filaI=ingresar_valido("Ingrese el Numero del alumno a buscar",i,1,5)
	f=1
	Repetir
		
		si filaI=f entonces	
			Mostrar "Notas del estudiante N°",filaI
			Mostrar "Nombre: ",nombres[filai]
			para c=1 hasta col hacer
				mostrar "Nota N°",c,": ",Notas[f,c]
			FinPara
			adminito=verdadero
		sino
			f=f+1
			
		fin si

		
	hasta que f>fila o adminito
	
	notita=calcular_promest(notas,filai)
	Mostrar ""
	Mostrar "El promedio del estudiante es: ", notita
	
	Mostrar ""
	total=estu_repro(notas,filai)
	Mostrar "El prosentaje de notas reprobadas es: ",total
	
FinSubProceso

subProceso Mostrar_promedios(matriz,filas,col,arreglo)
	para i=1 hasta filas
		Mostrar "estuduates " arreglo[i]
		suma=0
		para c=1 hasta col
			suma=suma+matriz[f,c]
		FinPara
		promedio=suma/3
		Mostrar "Promedio del estudiante es: " promedio
	FinPara
	
FinSubProceso

Funcion repro<-estu_repro(matriz,stu)
	
	cont=0
	Para c=1 hasta 3 hacer
		si matriz[stu,c]<50 entonces
			cont=cont+1
		FinSi
	FinPara
	 repro=(cont/3)*100
	
FinFuncion

Funcion prom_est<-calcular_promest(matriz,est)
	
	acum=0
	para c=1 hasta 3 hacer
		acum=acum+matriz[est,c]
	FinPara
	prom_est=acum/3
FinFuncion

Algoritmo sin_titulo
	
	dimension registro[5,3]
	Dimension  nombre[5]
	cargar_matriz(registro,5,3,notik)
	Mostrar_datos(registro,5,3)
	buscar(registro,5,3,notik)

FinAlgoritmo
