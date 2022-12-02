Algoritmo Quini_Final
	Definir Num, Num1, Num2, Num3, Num4, Num5 Como Entero;
	Definir A, B, C, D, E, F Como Entero;
	Definir Tiempo Como Real;
	Tiempo = 1;
	
	Escribir "Bienvenido al Quini6 de Velikko22";
	
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
	escribir "Ah salido el ", Num;
	
	Esperar Tiempo segundos;
	escribir "Ah salido el ", Num1;
	
	Esperar Tiempo segundos;
	escribir "Ah salido el ", Num2;
	
	Esperar Tiempo segundos;
	escribir "Ah salido el ", Num3;
	
	Esperar Tiempo segundos;
	escribir "Ah salido el ", Num4;
	
	Esperar Tiempo segundos;
	escribir "Ah salido el ", Num5;
	
	escribir "Los numeros ganadores del Quini son:";
	escribir Num, " - ", Num1," - ", Num2," - ", Num3," - ", Num4, " - ", Num5;
	
	Si Num == A y Num1 == B y Num2 == C y Num3 == D y Num4 == E y Num5 == F entonces
		Escribir "Eres el ganador del gran pozo de 10 millones de VelikDoralres :D";
	SiNo
		Escribir "No te desanimes, mejor suerte la proxima!!!";
	FinSi
	
FinAlgoritmo