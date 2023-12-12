Funcion generarLista(lista) 
	
	Para i = 1 Hasta 10 Hacer
		lista[i] = Azar(100);
		Si i = 1 Entonces
			Escribir Sin Saltar "Lista en orden original: [", lista[i], ", ";
		SiNo
			Si i = 10 Entonces
				Escribir Sin Saltar lista[i], "]";
				Escribir " " ;
			SiNo
				Escribir Sin Saltar lista[i], ", ";
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion ordenAscendente(lista, ascendente)
	
	Para i = 1 Hasta 10 Hacer
		Para j = 1 Hasta 9 Hacer
			Si lista[j] > lista[j+1] Entonces
				aux = lista[j];
				lista[j] = lista[j+1];
				lista[j+1] = aux;
			FinSi
		FinPara
	FinPara
	
	Para i = 1 Hasta 10 Hacer
		ascendente[i] = lista[i];
		Si i = 1 Entonces
			Escribir Sin Saltar "Lista en orden ascendente: [", ascendente[i], ", ";
		SiNo
			Si i = 10 Entonces
				Escribir Sin Saltar ascendente[i], "]";
				Escribir " " ;
			SiNo
				Escribir Sin Saltar ascendente[i], ", ";
			FinSi
		FinSi
	FinPara
	
FinFuncion

Funcion ordenDescendente(lista, descendente)
	
	Para i = 1 Hasta 10 Hacer
		Para j = 1 Hasta 9 Hacer
			Si lista[j] < lista[j+1] Entonces
				aux = lista[j];
				lista[j] = lista[j+1];
				lista[j+1] = aux;
			FinSi
		FinPara
	FinPara
	
	Para i = 1 Hasta 10 Hacer
		descendente[i] = lista [i];
		Si i = 1 Entonces
			Escribir Sin Saltar "Lista en orden descendente: [", descendente[i], ", ";
		SiNo
			Si i = 10 Entonces
				Escribir Sin Saltar descendente[i], "]";
				Escribir " " ;
			SiNo
				Escribir Sin Saltar descendente[i], ", ";
			FinSi
		FinSi
	FinPara
	
FinFuncion


Algoritmo Listaordenada
	
	Dimension original[10];
	Dimension listaAscendente[10];
	Dimension listaDescendente[10];
	generarLista(original);
	ordenAscendente(original, listaAscendente);
	ordenDescendente(original, listaDescendente);
	
FinAlgoritmo
