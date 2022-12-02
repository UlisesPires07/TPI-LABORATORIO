Algoritmo Black_Jack
	Definir A, B, C, E, F, puntaje_inicial, Carta, Crupier como enteros;
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
		SiNo
			escribir "Has perdido";
		FinSi
	FinSi
finAlgoritmo