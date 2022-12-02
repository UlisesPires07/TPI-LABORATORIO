Algoritmo Piedra_Papepl_Tijera
	Definir partida,user1,user2 Como Entero
	partida <- 1
	Mientras partida==1 Hacer
		Escribir 'Piedra, Papel o Tijera!'
		Escribir ''
		Escribir 'Jugador 1 [1: Piedra, 2: Papel, 3: Tijera]'
		Leer user1
		Escribir ''
		Escribir 'Jugador 2 [1: Piedra, 2: Papel, 3: Tijera]'
		Leer user2
		Escribir ''
		Repetir
			Si (user1>3 Y user2>3) O (user1>3 Y user2<=3) O (user2>3 Y user1<=3) Entonces
				Escribir 'Va de vuelta!'
				Escribir ''
				Escribir 'Jugador 1 [1: Piedra, 2: Papel, 3: Tijera]'
				Leer user1
				Escribir ''
				Escribir 'Jugador 2 [1: Piedra, 2: Papel, 3: Tijera]'
				Leer user2
				Escribir ''
			FinSi
		Hasta Que user1<=3 Y user2<=3
		Si user1==1 Entonces
			Escribir 'El Jugador 1 ha hecho Piedra'
			Escribir ''
		FinSi
		Si user1==2 Entonces
			Escribir 'El Jugador 1 ha hecho Papel'
			Escribir ''
		FinSi
		Si user1==3 Entonces
			Escribir 'El Jugador 1 ha hecho Tijera'
			Escribir ''
		FinSi
		Si user2==1 Entonces
			Escribir 'El Jugador 2 ha hecho Piedra'
			Escribir ''
		FinSi
		Si user2==2 Entonces
			Escribir 'El Jugador 2 ha hecho Papel'
			Escribir ''
		FinSi
		Si user2==3 Entonces
			Escribir 'El Jugador 2 ha hecho Tijera'
			Escribir ''
		FinSi
		Si user1<>user2 Entonces
			Si (user1==1 Y user2==3) O (user1==2 Y user2==1) O (user1==3 Y user2==2) Entonces
				Escribir ''
				Escribir 'GANA EL JUGADOR 1!'
				Escribir ''
				partida <- 0
			SiNo
				Si (user2==1 Y user1==3) O (user2==2 Y user1==1) O (user2==3 Y user1==2) Entonces
					Escribir 'GANA EL JUGADOR 2!'
					Escribir ''
					partida <- 0
				FinSi
			FinSi
		SiNo
			Escribir 'LOS JUGADORES HAN EMPATADO!'
			Escribir ''
		FinSi
	FinMientras
FinAlgoritmo
