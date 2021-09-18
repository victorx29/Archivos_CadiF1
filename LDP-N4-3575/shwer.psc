Funcion cantidad<-verifiacar_ceros(caract)
	
	zero="0"
	long_cad=Longitud(caract)
	i=1
	cantidad=0
	Repetir
		subc_caract=Subcadena(caract,i,i)
		es_cero=(subc_caract=zero)
		si es_cero entonces
			cantidad=cantidad+1
		SiNo
			//Mostrar "El caracter ",sub_caract "no es cero <0>"
		FinSi
		i=i+1
	Hasta Que i>long_cad
	
FinFuncion

Algoritmo sin_titulo
	
	Mostrar "ingrese una cadena"
	leer cadenita
	
	Mostrar "la cadena ",cadenita "tiene ", verifiacar_ceros(cadenita)	
FinAlgoritmo
