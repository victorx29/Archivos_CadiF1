funcion	numpos<-numeroPositivo(msj)
	Repetir
		Mostrar msj
		leer num
		si num<0 entonces
			Mostrar "El numero debe ser positivo, intente nuevamente"
		FinSi
	Hasta Que num>0
	numpos=num
FinFuncion

Subproceso entradas(Precio Por Referencia, cantidad Por Referencia,topei,topes)
	
	Definir msj como caracter
	
	msj = "Ingrese la cantidad de sillas"
	cantidad = numeroPositivo(msj)
	

	Repetir
		
		msj = "Ingrese el precio de la silla"
		Precio = numeroPositivo(msj)
		
		Si precio<topei entonces
			Mostrar "El precio es Inferior al tope minimo"
		SiNo
			si precio>topes Entonces
				Mostrar "El precio supera el tope maximo"
			SiNo
				DentroRango=Verdadero
			FinSi
			
		FinSi
		
	Hasta Que DentroRango
	
FinSubProceso

SubProceso topes1(topeI por referencia, topeS por referencia)
	Repetir
		topeI=numeroPositivo("Ingrese el tope Inferior")
		topeS=numeropositivo("Ingrese el tope Superior")
		si topei>topes entonces
			Mostrar "El tope inferior debe ser menor al tope mayor"
		FinSi
	Hasta Que (topei<=topes)
	
FinSubProceso

Subproceso procesos(precio, cantidad)
	
	Subtotal=precio*cantidad
	total=Subtotal+(subtotal*0.16)
	Mostrar "SubTotal de la compra es:",subtotal
	Mostrar "Total de la compra es:",total
	
FinSubProceso

Algoritmo sin_titulo
	
	Mostrar "Sillas_Dios_Es_Mi_Camino.com"
	Mostrar ""
	topes1(topeI,topes)
	Mostrar "El tope Inferior es ",topei," y el tope superior es ",topes
	entradas(precio,cantidad,topei,topes)
	procesos(precio, cantidad)
	
	
	
FinAlgoritmo
