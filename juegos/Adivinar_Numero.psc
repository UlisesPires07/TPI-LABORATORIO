Algoritmo Adivinar_Numero
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
FinAlgoritmo
