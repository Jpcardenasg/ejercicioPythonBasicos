Algoritmo Dolar
	
	Escribir "Ingrese el número de días que desea registrar";
	Leer dias;
	
	Dimension valorDolar[dias];
	Dimension alzas[dias];
	
	Para i = 1 Hasta dias Hacer
		Escribir "Ingrese el valor del dolar para el día: ", i;
		Leer dolardia;
		valorDolar[i] = dolardia;
	FinPara
	
	Limpiar Pantalla;
	
	Para i = 1 Hasta dias Hacer
		Escribir "Dia ", i, " : ", valorDolar[i];
	FinPara
	
	alzaDolar(valorDolar, dias, alzas);
	ordenAlzas(alzas, dias);
	
FinAlgoritmo

Funcion alzaDolar(valorDolar, dias, alzas)
	Para i = 1 Hasta dias Hacer
		Si dias = 1 Entonces
			alzas[1] = 0;
		SiNo
			Si i <> dias Entonces
				alzas[i] = valorDolar[i+1] - valorDolar[i];
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion ordenAlzas(alzas, dias)
	Para i = 1 Hasta dias  Con Paso 1 Hacer
		Para j = 1 Hasta dias - 1 Con Paso 1 Hacer
			Si alzas[j] < alzas[j+1] Entonces
				aux = alzas[j];
				alzas[j] = alzas[j+1];
				alzas[j+1] = aux;
			FinSi
		FinPara
	FinPara
	
	Si alzas[1] = 0 y dias <> 1 Entonces
		Escribir "No hubo alzas";
	SiNo
		Escribir "La mayor alza fue de ", alzas[1], " dolares";
	FinSi
	
FinFuncion

