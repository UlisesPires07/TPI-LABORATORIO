
//////////////////////////////////////////////funcion menu eleccion de juego////////////////////////////////////////////////////////////////
Funcion fin_eleccion <- eleccion_de_juegos (respuesta)
	Definir fin_eleccion, eleccion  Como Caracter
	Escribir ""
	Escribir "Ingrese el numero del juego al que desee jugar."
	Escribir ""
	Escribir "1. Piedra, Papel o Tijera"
	Escribir "2. Lanzamiento de Dados"
	Escribir "3. Adivina el Numero"
	Escribir "4. Quiniela"
	Escribir "5. Ta - Te - Ti"
	Escribir "6. Black Jack"
	Leer respuesta
	Segun respuesta Hacer
		1:
			Escribir ""
			Escribir juego_1 ()
		2:
			Escribir ""
			Escribir juego_2 ()
		3:
			Escribir ""
			Escribir juego_3 ()
		4:
			Escribir ""
			Escribir juego_4 ()
		5:
			Escribir ""
			Escribir juego_5 ()
		6:
			Escribir ""
			Escribir juego_6 ()
		De Otro Modo:
			Escribir "No existe ningun juego con la opcion ingresada!"
	Fin Segun	
Fin Funcion
///////////////////////////////////////funcion piedra papel o tijera - juego 1////////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_1 ()
	Definir fin_juego Como Caracter
	Definir partida, user1, user2, respuesta Como Entero
	partida <- 1
	Mientras partida == 1 Hacer
		Escribir "Piedra, Papel o Tijera!"
		Escribir ""
		Escribir "Jugador 1 [1: Piedra, 2: Papel, 3: Tijera]"
		Leer user1
		Escribir ""
		Escribir "Jugador 2 [1: Piedra, 2: Papel, 3: Tijera]"
		Leer user2
		Escribir ""
		Repetir
			Si (user1 > 3 y user2 > 3) o (user1 > 3 y user2 <= 3) o (user2 > 3 y user1 <= 3) Entonces
				Escribir "Va de vuelta!"
				Escribir ""
				Escribir "Jugador 1 [1: Piedra, 2: Papel, 3: Tijera]"
				Leer user1
				Escribir ""
				Escribir "Jugador 2 [1: Piedra, 2: Papel, 3: Tijera]"
				Leer user2
				Escribir ""
			Fin Si
		Hasta Que user1 <= 3 y user2 <= 3
		Si user1 == 1 Entonces
			Escribir "El Jugador 1 ha hecho Piedra"
			Escribir ""
		FinSi
		Si user1 == 2 Entonces
			Escribir "El Jugador 1 ha hecho Papel"
			Escribir ""
		FinSi
		Si user1 == 3 Entonces
			Escribir "El Jugador 1 ha hecho Tijera"
			Escribir ""
		FinSi
		Si user2 == 1 Entonces
			Escribir "El Jugador 2 ha hecho Piedra"
			Escribir ""
		FinSi
		Si user2 == 2 Entonces
			Escribir "El Jugador 2 ha hecho Papel"
			Escribir ""
		FinSi
		Si user2 == 3 Entonces
			Escribir "El Jugador 2 ha hecho Tijera"
			Escribir ""
		FinSi
		Si user1 <> user2 Entonces
			Si (user1 == 1 y user2 == 3) o (user1 == 2 y user2 == 1) o (user1 == 3 y user2 == 2)  Entonces
				Escribir ""
				Escribir "GANA EL JUGADOR 1!"
				Escribir ""
				partida <- 0
			SiNo
				Si (user2 == 1 y user1 == 3) o (user2 == 2 y user1 == 1) o (user2 == 3 y user1 == 2)  Entonces
					Escribir "GANA EL JUGADOR 2!"
					Escribir ""
					partida <- 0
				Fin Si
			Fin Si
		SiNo
			Escribir "LOS JUGADORES HAN EMPATADO!"
			Escribir ""
		FinSi
	Fin Mientras
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_1 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta = 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
Fin Funcion
///////////////////////////////////////funcion Lanzamiento de Dados - juego 2////////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_2 ()
	Definir fin_juego Como Caracter
	// Elementos
	Definir jugadores,dado1,dado2,dado3,dado4,dado5,dado6,dado7,dado8,respuesta Como Entero
	// Variables
	Definir total1,total2,total3,total4 Como Entero
	// Condiciones
	Definir tiempo Como Real
	Definir tirar Como Caracter
	tiempo <- 1
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Repetir
		Escribir 'Ingrese la cantidad de jugadores.'
		Escribir ' El maximo de jugadores es de 4 personas y el minimo de jugadores es de 2 personas.'
		Leer jugadores
		Si (jugadores>4) O (jugadores=1) Entonces
			Escribir 'Cantidad de jugadores invalida'
			Escribir 'cantidad maxima de jugadores 4, cantidad minima 2'
		SiNo
			Escribir 'Tenemos ',jugadores,' jugadores.'
		FinSi
	Hasta Que (jugadores<=4) Y (jugadores>1)
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	Si jugadores==2 Entonces
		Repetir
			Escribir 'ES TURNO DEL PRIMER JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado1 <- azar(6)+1
				Escribir 'Ha salido el ',dado1
				esperar tiempo segundos
				dado2 <- azar(6)+1
				Escribir 'Ha salido el ',dado2
			FinSi
			total1 <- (dado1+dado2)
			Escribir 'El primer jugador tiene ',total1,' puntos'
			Escribir 'ES TURNO DEL SEGUNDO JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado3 <- azar(6)+1
				Escribir 'Ha salido el ',dado3
				esperar tiempo segundos
				dado4 <- azar(6)+1
				Escribir 'Ha salido el ',dado4
			FinSi
			total2 <- (dado3+dado4)
			Escribir 'El segundo jugador tiene ',total2,' puntos'
			Si total1>total2 Entonces
				Escribir 'GANA EL JUGADOR 1!'
			SiNo
				Escribir 'GANA EL JUGADOR 2!'
			FinSi
		Hasta Que total1<>total2
	FinSi
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	Si jugadores==3 Entonces
		Repetir
			Escribir 'ES TURNO DEL PRIMER JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado1 <- azar(6)+1
				Escribir 'Ha salido el ',dado1
				esperar tiempo segundos
				dado2 <- azar(6)+1
				Escribir 'Ha salido el ',dado2
			FinSi
			total1 <- (dado1+dado2)
			Escribir 'El primer jugador tiene ',total1,' puntos'
			Escribir 'ES TURNO DEL SEGUNDO JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado3 <- azar(6)+1
				Escribir 'Ha salido el ',dado3
				esperar tiempo segundos
				dado4 <- azar(6)+1
				Escribir 'Ha salido el ',dado4
			FinSi
			total2 <- (dado3+dado4)
			Escribir 'El segundo jugador tiene ',total2,' puntos'
			Escribir 'ES TURNO DEL TERCER JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado5 <- azar(6)+1
				Escribir 'Ha salido el ',dado5
				esperar tiempo segundos
				dado6 <- azar(6)+1
				Escribir 'Ha salido el ',dado6
			FinSi
			total3 <- (dado5+dado6)
			Escribir 'El tercer jugador tiene ',total3,' puntos'
			Si (total1>total2 Y total1>total3) Entonces
				Escribir 'GANA EL JUGADOR 1!'
			FinSi
			Si (total2>total1 Y total2>total3) Entonces
				Escribir 'GANA EL JUGADOR 2!'
			FinSi
			Si (total3>total1 Y total3>total2) Entonces
				Escribir 'GANA EL JUGADOR 3!'
			FinSi
		Hasta Que (total1<>total2 Y total1<>total3) O (total2<>total3)
	FinSi
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	Si jugadores==4 Entonces
		Repetir
			Escribir 'ES TURNO DEL PRIMER JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado1 <- azar(6)+1
				Escribir 'Ha salido el ',dado1
				esperar tiempo segundos
				dado2 <- azar(6)+1
				Escribir 'Ha salido el ',dado2
			FinSi
			total1 <- (dado1+dado2)
			Escribir 'El primer jugador tiene ',total1,' puntos'
			Escribir 'ES TURNO DEL SEGUNDO JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado3 <- azar(6)+1
				Escribir 'Ha salido el ',dado3
				esperar tiempo segundos
				dado4 <- azar(6)+1
				Escribir 'Ha salido el ',dado4
			FinSi
			total2 <- (dado3+dado4)
			Escribir 'El segundo jugador tiene ',total2,' puntos'
			Escribir 'ES TURNO DEL TERCER JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado5 <- azar(6)+1
				Escribir 'Ha salido el ',dado5
				esperar tiempo segundos
				dado6 <- azar(6)+1
				Escribir 'Ha salido el ',dado6
			FinSi
			total3 <- (dado5+dado6)
			Escribir 'El tercer jugador tiene ',total3,' puntos'
			Escribir 'ES TURNO DEL CUARTO JUGADOR!'
			Repetir
				Escribir 'Presione la tecla [T] para tirar los dados!'
				Leer tirar
				tirar <- Minusculas(tirar)
			Hasta Que tirar=='t'
			Si tirar=='t' Entonces
				esperar tiempo segundos
				dado7 <- azar(6)+1
				Escribir 'Ha salido el ',dado7
				esperar tiempo segundos
				dado8 <- azar(6)+1
				Escribir 'Ha salido el ',dado8
			FinSi
			total4 <- (dado7+dado8)
			Escribir 'El cuarto jugador tiene ',total4,' puntos'
			Si (total1>total2 Y total1>total2 Y total1>total3) Entonces
				Escribir 'GANA EL JUGADOR 1!'
			FinSi
			Si (total2>total1 Y total2>total3 Y total3>total4) Entonces
				Escribir 'GANA EL JUGADOR 2!'
			FinSi
			Si (total3>total1 Y total3>total2 Y total3>total4) Entonces
				Escribir 'GANA EL JUGADOR 3!'
			FinSi
			Si (total4>total1 Y total4>total2 Y total4>total3) Entonces
				Escribir 'GANA EL JUGADOR 4!'
			FinSi
		Hasta Que (total1<>total2 Y total1<>total3 Y total1<>total4) O (total2<>total3 Y total2<>total4) O (total3<>total4)
	FinSi
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_2 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta = 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
	
Fin Funcion
//////////////////////////////////////////////////////funcion Adivinar el Numero - juego_3 ///////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_3 ()
	Definir fin_juego Como Caracter
	Definir intentos, num_secreto, num_ingresado, respuesta Como Entero
    intentos <- 10
    num_secreto <- azar(100)+1
    Escribir "Adivine el Numero (de 1 a 100)"
    Leer num_ingresado
    Mientras num_secreto <> num_ingresado y intentos > 1 Hacer
		Si num_secreto > num_ingresado Entonces
            Escribir ""
			Escribir "Mas alto!"
        Sino 
			Escribir ""
            Escribir "Mas bajo!"
        Fin Si
        intentos <- intentos - 1
		Escribir ""
        Escribir "Le quedan ",intentos," intentos."
		Escribir "Intente de vuelta!"
        Leer num_ingresado
    Fin Mientras
    Si num_secreto = num_ingresado Entonces
		Escribir ""
        Escribir "Exacto! Usted adivino en ",11 - intentos," intentos."
		Escribir ""
    Sino
		Escribir ""
		Escribir "Lo sentimos, no pudiste adivinar!"
        Escribir "El numero era: ",num_secreto
		Escribir ""
    Fin Si
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_3 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta = 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
Fin Funcion
/////////////////////////////////////////////////funcion quini 6 juego 4////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_4 ()
	Definir fin_juego como caracter
	Definir Num, Num1, Num2, Num3, Num4, Num5, respuesta Como Entero;
	Definir A, B, C, D, E, F Como Entero;
	Definir Tiempo Como Real;
	Tiempo = 1;
	
	Escribir "Bienvenido al Quini 6";
	
	Repetir
		Escribir "Elije tus 6 numeros de la suerte!";
		Escribir "Estos deberan ser menor a 45";
		Leer A;
		Leer B;
		Leer C;
		Leer D;
		Leer E;
		Leer F;
	Hasta Que A <=45 y B <=45 y C <=45 y D <=45 y E <=45 y F <=45
	
	Repetir
		Num  = azar(45);
		Num1 = azar(45);
		Num2 = azar(45);
		Num3 = azar(45);
		Num4 = azar(45);
		Num5 = azar(45);
	Mientras Que Num == Num1 o Num == Num2 o Num == Num3 o Num == Num4 o Num == Num5 o Num1 == Num2 o Num1 == Num3 o Num1 == Num4 o Num1 == Num5 o Num2 == Num3 o Num2 == Num4 o Num2 == Num5 o Num3 == Num4 o Num3 == Num5 o Num4 == Num5       
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num;
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num1;
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num2;
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num3;
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num4;
	
	Esperar Tiempo segundos;
	escribir "Ha salido el ", Num5;
	
	escribir "Los numeros ganadores del Quini son:";
	escribir Num, " - ", Num1," - ", Num2," - ", Num3," - ", Num4, " - ", Num5;
	
	Si Num == A y Num1 == B y Num2 == C y Num3 == D y Num4 == E y Num5 == F entonces
		Escribir "Eres el ganador del gran pozo de 10 millones de dolares";
		Escribir "";
	SiNo
		Escribir "No te desanimes, mejor suerte la proxima!!!";
		Escribir "";
	FinSi
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_4 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta = 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
Fin Funcion
////////////////////////////////////////////////////////Juego Tres en Línea   JUEGO 5//////////////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_5 ()
	Definir X,n,jugador,respuesta Como Entero;
	Definir vector Como Caracter;
	Dimension vector[10];
	
	Escribir "BIENVENIDOS JUGADORES";
	Escribir "Vamos a jugar Tres en Línea!";
	
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
	escribir " "
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_5 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta = 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
Fin Funcion
//////////////////////////////////////////funcion juego black jack juego_6/////////////////////////////////////////////////////////////////////////////////
Funcion fin_juego <- juego_6 ()
	Definir A, B, C, E, F, puntaje_inicial, Carta, Crupier, respuesta como enteros;
	Definir tiempo como real;
	Definir S Como Caracter;
	
	escribir "Bienvenido al Black Jack";
	Escribir "Intenta llegar a 21 pero no te pases";
	
	A <- 0;
	B <- 1;
	C <- 0;
	tiempo = 1;
	
	Escribir "El Crupier te ha entregado 2 cartas";
	Esperar tiempo segundos;
	Repetir
		E <- Azar(11); 
	hasta Que E <> 0
	Escribir "Tienes ", E;
	Esperar tiempo segundos;
	Repetir
		F <- Azar(11); 
	hasta Que F <> 0
	Escribir "Tienes ", F;
	puntaje_inicial <- (E+F);
	Escribir "Tienes ", puntaje_inicial, " puntos";
	A <- puntaje_inicial;
	
	si puntaje_inicial == 21 Entonces
		Escribir "Tienes Black Jack";
		
	SiNo
		Repetir
			
			Escribir "Pedir Carta?";
			Escribir "[S] para pedir, [N] para plantarte";
			leer S;
			S <- Minusculas(S);
			
			Si S == "s"
				Esperar tiempo segundos;
				Repetir
					Carta <- Azar(11); 
				hasta Que Carta <> 0
				Escribir "Salio el ", Carta;
				A <- (A + Carta);
				Escribir "Tienes ", A," puntos";
			SiNo
				Escribir "Tienes ", A," puntos";
				B <- (B-1);
			FinSi
			
		Hasta Que A == 21 o A > 21 o B == 0 
		
		si A > 21 entonces
			escribir "Te pasaste de 21";
		FinSi
		
		Repetir
			Esperar tiempo segundos;
			Repetir
				Crupier <- Azar(11); 
			hasta Que Crupier <> 0
			Escribir "El crupier saco un ", Crupier;
			C <- (C + Crupier);
			si C <= 21 entonces 
				Escribir "El crupier tiene ", C," puntos.";
			SiNo
				Escribir "El crupier tiene ", C," puntos.";
			FinSi
			
		Hasta Que C = 18 o C = 19 o C = 20 o C = 21 o C > 21;
		
		Si (A > C y A <= 21) o (C > 21) Entonces
			Escribir "Has ganado";
			escribir "";
		SiNo
			escribir "Has perdido";
			escribir "";
		FinSi
	FinSi
	Escribir "¿Desea jugar de nuevo o volver al menu de juegos? Ingrese el numero de la opcion que desee."
	Escribir ""
	Escribir "1. Jugar de nuevo"
	Escribir "2. Volver al menu de juegos"
	Escribir "3. Salir"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir ""
		escribir juego_6 ()
	Fin si
	Si respuesta = 2 Entonces
		escribir eleccion_de_juegos(respuesta)
	Fin Si
	Si respuesta >= 3 Entonces
		Escribir ""
		Escribir "Esperamos que te hayas divertido! Hasta pronto!"
	Fin Si
Fin Funcion

////////////////////////////////////////////////////////////pantalla principal///////////////////////////////////////////////////////////////////////////
Algoritmo principal
	Definir respuesta como entero
	Escribir "¿Quieres jugar? Ingrese el numero de la opcion que desee."
	Escribir "1. Si"
	Escribir "2. No"
	Leer respuesta
	Si respuesta = 1 entonces
		Escribir eleccion_de_juegos(respuesta)
	SiNo
		Escribir "Esperamos verte pronto!"
	FinSi
FinAlgoritmo