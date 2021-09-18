Funcion es_letra<-revisar_caracter(dato)
	letras="abcdefghijkmlopqrstuvwxyz"
	i=1
	long=longitud(letras)
	repetir
		subcaracter=subcadena(letras,i,i)
		es_letra=(subcaracter=dato)
		i=i+1
		
	Hasta Que i>long o es_letra 
	
FinFuncion

subproceso leer_nombre(nombre por referencia,invalidos Por Referencia, validos Por Referencia)
	
	Mostrar "Ingrese el nombre"
	leer nombre
	i=1
	long=Longitud(nombre)
	validos=0
	invalidos=0
	Repetir
		subnombre=Subcadena(nombre,i,i)
		es_letra=revisar_caracter(subnombre)
		si es_letra entonces
			validos=validos+1
		SiNo
			invalidos=invalidos+1
		FinSi
		i=i+1
	Hasta Que i>long
	
FinSubProceso

Algoritmo sin_titul
	leer_nombre(nombre,invalidos, validos)
	Mostrar "El nombre leido fue: " nombre
	Mostrar "y Tiene ",validos," caracter de tipo letra"
	Mostrar "y ",invalidos "distintos de letra"
FinAlgoritmo
