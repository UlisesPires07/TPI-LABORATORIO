Algoritmo Dados
	//Elementos
	Definir jugadores, dado1, dado2, dado3, dado4, dado5, dado6, dado7, dado8 Como Entero;
	//Variables
	Definir total1, total2, total3, total4 Como Entero;
	//Condiciones
	Definir tiempo como real;
	Definir tirar Como Caracter;
	
	tiempo = 1;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Repetir
		Escribir "Ingrese la cantidad de jugadores.";
		Escribir " El maximo de jugadores es de 4 personas y el minimo de jugadores es de 2 personas.";
		Leer jugadores;
		Si (jugadores > 4) o (jugadores = 1) Entonces
			Escribir "Cantidad de jugadores invalida";
			Escribir "cantidad maxima de jugadores 4, cantidad minima 2";
		SiNo
			Escribir "Tenemos ", jugadores, " jugadores.";
		FinSi
	Hasta Que (jugadores <= 4) y (jugadores > 1)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Si jugadores == 2 Entonces
		Repetir
			Escribir "ES TURNO DEL PRIMER JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t" 
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado1 <- azar (6) + 1;
				Escribir "Ha salido el ", dado1;
				esperar tiempo segundos;
				dado2 <- azar (6) + 1;
				Escribir "Ha salido el ", dado2;
			FinSi
			total1 <- (dado1 + dado2);
			Escribir "El primer jugador tiene ", total1, " puntos";
			
			Escribir "ES TURNO DEL SEGUNDO JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado3 <- azar (6) + 1;
				Escribir "Ha salido el ", dado3;
				esperar tiempo segundos;
				dado4 <- azar (6) + 1;
				Escribir "Ha salido el ", dado4;
			FinSi
			total2 <- (dado3 + dado4);
			Escribir "El segundo jugador tiene ", total2, " puntos";
			
			Si total1 > total2 Entonces
				Escribir "GANA EL JUGADOR 1!";
			SiNo
				Escribir "GANA EL JUGADOR 2!";
			FinSi
		Hasta Que total1 <> total2
	FinSi
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	Si jugadores == 3 Entonces
		Repetir
			Escribir "ES TURNO DEL PRIMER JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado1 <- azar (6) + 1;
				Escribir "Ha salido el ", dado1;
				esperar tiempo segundos;
				dado2 <- azar (6) + 1;
				Escribir "Ha salido el ", dado2;
			FinSi
			total1 <- (dado1 + dado2);
			Escribir "El primer jugador tiene ", total1, " puntos";
			
			Escribir "ES TURNO DEL SEGUNDO JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado3 <- azar (6) + 1;
				Escribir "Ha salido el ", dado3;
				esperar tiempo segundos;
				dado4 <- azar (6) + 1;
				Escribir "Ha salido el ", dado4;
			FinSi
			total2 <- (dado3 + dado4);
			Escribir "El segundo jugador tiene ", total2, " puntos";
			
			Escribir "ES TURNO DEL TERCER JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado5 <- azar (6) + 1;
				Escribir "Ha salido el ", dado5;
				esperar tiempo segundos;
				dado6 <- azar (6) + 1;
				Escribir "Ha salido el ", dado6;
			FinSi
			total3 <- (dado5 + dado6);
			Escribir "El tercer jugador tiene ", total3, " puntos";
			
			Si (total1 > total2 y total1 > total3) Entonces
				Escribir "GANA EL JUGADOR 1!";
			FinSi
			Si (total2 > total1 y total2 > total3) Entonces
				Escribir "GANA EL JUGADOR 2!";
			FinSi
			Si (total3 > total1 y total3 > total2) Entonces
				Escribir "GANA EL JUGADOR 3!";
			FinSi
		Hasta Que (total1 <> total2 y total1 <> total3) o (total2 <> total3)
	FinSi
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	Si jugadores == 4 Entonces
		Repetir
			Escribir "ES TURNO DEL PRIMER JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado1 <- azar (6) + 1;
				Escribir "Ha salido el ", dado1;
				esperar tiempo segundos;
				dado2 <- azar (6) + 1;
				Escribir "Ha salido el ", dado2;
			FinSi
			total1 <- (dado1 + dado2);
			Escribir "El primer jugador tiene ", total1, " puntos";
			
			Escribir "ES TURNO DEL SEGUNDO JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado3 <- azar (6) + 1;
				Escribir "Ha salido el ", dado3;
				esperar tiempo segundos;
				dado4 <- azar (6) + 1;
				Escribir "Ha salido el ", dado4;
			FinSi
			total2 <- (dado3 + dado4);
			Escribir "El segundo jugador tiene ", total2, " puntos";
			
			Escribir "ES TURNO DEL TERCER JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado5 <- azar (6) + 1;
				Escribir "Ha salido el ", dado5;
				esperar tiempo segundos;
				dado6 <- azar (6) + 1;
				Escribir "Ha salido el ", dado6;
			FinSi
			total3 <- (dado5 + dado6);
			Escribir "El tercer jugador tiene ", total3, " puntos";
			
			Escribir "ES TURNO DEL CUARTO JUGADOR!";
			Repetir
				Escribir "Preciones la tecla [T] para tirar los dados!";
				leer tirar;
				tirar <- Minusculas(tirar);
			Hasta Que tirar == "t"
			Si tirar == "t" Entonces
				esperar tiempo segundos;
				dado7 <- azar (6) + 1;
				Escribir "Ha salido el ", dado7;
				esperar tiempo segundos;
				dado8 <- azar (6) + 1;
				Escribir "Ha salido el ", dado8;
			FinSi
			total4 <- (dado7 + dado8);
			Escribir "El cuarto jugador tiene ", total4, " puntos";
			
			Si (total1 > total2 y total1 > total2 y total1 > total3) Entonces
				Escribir "GANA EL JUGADOR 1!";
			FinSi
			Si (total2 > total1 y total2 > total3 y total3 > total4) Entonces
				Escribir "GANA EL JUGADOR 2!";
			FinSi
			Si (total3 > total1 y total3 > total2 y total3 > total4) Entonces
				Escribir "GANA EL JUGADOR 3!";
			FinSi
			si (total4 > total1 y total4 > total2 y total4 > total3) Entonces
				Escribir "GANA EL JUGADOR 4!";
			FinSi
		Hasta Que (total1 <> total2 y total1 <> total3 y total1 <> total4) o (total2 <> total3 y total2 <> total4) o (total3 <> total4)
	FinSi
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
FinAlgoritmo