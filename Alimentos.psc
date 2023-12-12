Algoritmo alimentos
	
	
	Escribir "Elija el producto que desea";
	Escribir "A ------- $270";
	Escribir "B ------- $340";
	Escribir "C ------- $390";
	Leer producto;
	
	Escribir "Ingrese monedas:";
	Definir valorProducto Como Entero;
	
	Segun producto Hacer
		"A":
			Repetir
				Leer moneda;
				Si moneda = 10 o moneda = 50 o moneda = 100 Entonces
					valorProducto = valorProducto + moneda;
					vuelto = valorProducto - 270;
				SiNo
					Escribir "La moneda no es válida (solo monedas de 10, 50 y 100)";
				FinSi
			Hasta Que valorProducto >= 270;
		"B":
			Repetir
				Leer moneda;
				Si moneda = 10 o moneda = 50 o moneda = 100 Entonces
					valorProducto = valorProducto + moneda;
					vuelto = valorProducto - 340;
				SiNo
					Escribir "La moneda no es válida (solo monedas de 10, 50 y 100)";
				FinSi
			Hasta Que valorProducto >= 340;
		"C":
			Repetir
				Leer moneda;
				Si moneda = 10 o moneda = 50 o moneda = 100 Entonces
					valorProducto = valorProducto + moneda;
					vuelto = valorProducto - 390;
				SiNo
					Escribir "La moneda no es válida (solo monedas de 10, 50 y 100)";
				FinSi
			Hasta Que valorProducto >= 390;
	FinSegun
	
	Escribir "Su vuelto: ";
	
	Si vuelto = 0 Entonces
		Escribir "0";
	SiNo
		Mientras trunc(vuelto/100) > 0 Hacer
			Escribir "100";
			vuelto = vuelto - 100;
		FinMientras
		Mientras trunc(vuelto/50) > 0 Hacer
			Escribir "50";
			vuelto = vuelto - 50;
		FinMientras
		Mientras trunc(vuelto/10) > 0 Hacer
			Escribir "10";
			vuelto = vuelto - 10;
		FinMientras
	FinSi
	
FinAlgoritmo


Funcion vuelto <- vueltos(valorProducto)
	
FinFuncion
	