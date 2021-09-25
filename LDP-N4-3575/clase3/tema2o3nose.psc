subproceso ingresamiento(nombres,notas1,edad,sexo,prom Por Referencia)
	prom=0
	para i=1 hasta 5 hacer
		Mostrar ""
		Mostrar "ingrese el nombre del estudiante ",i
		leer nom
		Mostrar ""
		nombres[i]=nom
		notas1[i]=ingresar_valido("Ingrese la nota 1 del estudiante,",nom,0,20)
		mostrar ""
		edad[i]=ingresar_valido("Ingrese la edad del estudiante",nom,15,70)
		prom=prom+edad[i]
		sexo[i]=sexos("Ingrese el sexo de nacimiento #inclusivos")
	FinPara
	prom=prom/5
	
FinSubProceso

Funcion sex<-sexos(msj)
	repetir
		admitido=falso
		Mostrar msj
		Leer sex
		sex=mayusculas(sex)
		si (sex="F") o (sex="M") entonces
			sex=sex
			admitido=Verdadero
		sino
			Mostrar "El sexo ingresado, es incorrecto"
		FinSi
	Hasta Que admitido
FinFuncion

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

subproceso Salidas(nombres,notas1,edad,sexo,prom)
	Limpiar Pantalla
	Para i=1 hasta 5 hacer
		Mostrar ""
		Mostrar "Status de estudiante N°",i		
		Mostrar "Nombre: ", nombres[i]
		Mostrar "Nota 1: ",notas1[i]
		Mostrar "Edad: ", edad[i]
		mostrar "Sexo de nacimiento: ",sexo[i]
	FinPara
	
	para i=1 hasta 5 hacer
		si edad[i]>prom y sexo[i]="F" entonces
		nom=nombres[i]
		eda=edad[i]
		fin si
	FinPara
	
	Mostrar ""
	Mostrar "Femenina con mayor edad es:"
	Mostrar "Nombre: ",nom
	Mostrar "Edad:",eda
	Mostrar "Promedio de edades: ",prom
	
	
	
	
FinSubProceso

Algoritmo sin_titulo
	Dimension nombres[5]
	Dimension notas1[5]
	Dimension sexo[5]
	Dimension edad[5]
	
	ingresamiento(nombres,notas1,edad,sexo,prom)
	Salidas(nombres,notas1,edad,sexo,prom)
	
FinAlgoritmo
