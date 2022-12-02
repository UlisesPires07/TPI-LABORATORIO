Algoritmo tres_en_linea_dos
	Definir X,n,jugador Como Entero;
	Definir vector Como Caracter;
	Dimension vector[10];
	
	Escribir "BIENVENIDOS JUGADORES";
	Escribir "Vamos a jugar Tres en Línea, prepárense";
	
	Para x = 1 Hasta 9 Con Paso 1 Hacer
		vector(x) = " ";
	FinPara
	
	X = 1;
	jugador = azar(2)+1;
	
	Mientras x <= 6 Hacer
		Escribir "Ingresa una posición jugador: ",jugador;
		Escribir "7,8,9","   ",vector(7),",",vector(8),",",vector(9);
		Escribir "4,5,6","   ",vector(4),",",vector(5),",",vector(6);
		Escribir "1,2,3","   ",vector(1),",",vector(2),",",vector(3);
		Leer n;
		
		Si n > 0 y n < 10 Entonces
			Si jugador == 1 Entonces
				Si vector(n) == " " Entonces
					vector(n) = "X";
					jugador = 2;
					Si vector(1) == "X" Y vector(2) == "X" Y vector(3) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(4) == "X" Y vector(5) == "X" Y vector(6) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(7) == "X" Y vector(8) == "X" Y vector(9) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(1) == "X" Y vector(4) == "X" Y vector(7) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(2) == "X" Y vector(5) == "X" Y vector(8) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(2) == "X" Y vector(6) == "X" Y vector(9) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(1) == "X" Y vector(5) == "X" Y vector(9) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
					Si vector(3) == "X" Y vector(5) == "X" Y vector(7) == "X" Entonces
						Escribir "Felicitaiones jugador 1 has ganado";
						X = 9;
					FinSi
				SiNo
					Escribir "Jugador, la posición que intenta utilizar, se encuentra ocupada";
				FinSi
			SiNo
				Si vector(n) == " " Entonces
					vector(n) = "O";
					jugador = 1;
					Si vector(1) == "O" Y vector(2) == "O" Y vector(3) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(4) == "O" Y vector(5) == "O" Y vector(6) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(7) == "O" Y vector(8) == "O" Y vector(9) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(1) == "O" Y vector(4) == "O" Y vector(7) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(2) == "O" Y vector(5) == "O" Y vector(8) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(2) == "O" Y vector(6) == "O" Y vector(9) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(1) == "O" Y vector(5) == "O" Y vector(9) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
					Si vector(3) == "O" Y vector(5) == "O" Y vector(7) == "O" Entonces
						Escribir "Felicitaciones jugador 2, has ganado";
						X = 9;
					FinSi
				SiNo
					Escribir "Jugador, la posición que intenta utilizar, se encuentra ocupada";
				FinSi
			FinSi
		SiNo
			Escribir "Ingresa una posición correcta";
		FinSi
		X= X+1;
	FinMientras
	
	Escribir "7,8,9","   ",vector(7),",",vector(8),",",vector(9);
	Escribir "4,5,6","   ",vector(4),",",vector(5),",",vector(6);
	Escribir "1,2,3","   ",vector(1),",",vector(2),",",vector(3);
	Escribir "Jugadores, ¿volvemos a jugar?";
	
FinAlgoritmo
