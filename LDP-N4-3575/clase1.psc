
funcion encontro<-buscar_pan(n,pan,panes)
	encontro=falso
	i=1
	Repetir
		
		encontro=(panes[i]=pan)
		si encontro entonces
			encontro=verdadero
		SiNo
			
			i=i+1
		FinSi
		
	Hasta Que encontro o i>n
	
FinFuncion

subproceso Registro(panes,cant)
	i=1
	Repetir
		
		mostrar "ingrese el tipo de pan N°",i
		leer tipo

		si buscar_pan(cant,tipo,panes)Entonces
			Mostrar "El pan ya se encuentra registrado"
			Mostrar ""
		SiNo
			panes[i]=tipo
			
			
			Mostrar "Se registro el pan en la posicion ", i
			Mostrar ""
			i=i+1
		FinSi
	
	Hasta Que i>cant
	
FinSubProceso


subproceso mostrarTodo(panes,cant)
	
	i=1
	Repetir
		
		mostrar "El Pan N°",i ," Se llama ", panes[i] 
		i=i+1
	Hasta Que i=cant
	
FinSubProceso

Algoritmo sin_titulo
	
	Mostrar "ingresar la cantidad de tipos de panes a registrar"
	leer cant
	Dimension panes[cant]
	
	Registro(panes,cant)
	mostrarTodo(panes,cant)
	
FinAlgoritmo
