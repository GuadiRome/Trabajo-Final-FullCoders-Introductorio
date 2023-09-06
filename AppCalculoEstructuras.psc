Algoritmo AppCalculoEstructuras
	Definir op1, op2 Como Entero
	Definir Tadm_a, E_a, Qadm_a Como Entero
	Definir Tadm_m, E_m, Qadm_m Como Entero
	Definir fadm_a, fadm_m, q, P, L, A, Ix, Wx, RAB, Mmax, T, Qmax, fmax Como Real
	Tadm_a <- 1400
	E_a <- 2100000
	Qadm_a <- 900
	fadm_a <- 4
	Tadm_m <- 80
	E_m <- 100000
	Qadm_m <- 12
	fadm_m <- 3
	
	Escribir "+-------------------------------------------------------------------------+"
	Escribir "|                     �Bienvenvenido a E-Calc!                            |"
	Escribir "| Este pseudoc�digo muestra el funcionamiento del sistema de verificaci�n |"
	escribir "|  de estructuras arquitect�nicas de acero y de madera para dar una idea  |"
	Escribir "|             de las opciones del men� y datos de carga.                  |"
	Escribir "+-------------------------------------------------------------------------+"
	
	
	Repetir
		
		Escribir "Indique el material que desea verificar:"
		//En versi�n final, incluir un men� previo para seleccionar si desea calcular o verificar una estructura.
		Escribir "+-------------------+"
		Escribir "|     1. Acero      |"
		Escribir "+-------------------+"
		Escribir "+-------------------+"
		Escribir "|    2. Madera      |"
		Escribir "+-------------------+"
		//En versi�n final, incluir una opci�n de Ayuda para resolver dudas de los usuarios respecto al uso de la app.
		//Tambi�n incluir las tablas de perfiles met�licos y piezas de madera para consultar.
		Escribir "Para salir de la aplicaci�n, presione 0."
		Leer op1
		
		Si op1 = 1 Entonces
			//En versi�n final, incluir un men� donde seleccionar entre predimensionado de vigas y columnas.
			//Actualmente solo est� disponible el predimensionado de vigas.
			Escribir "+-------------------------------+"
			Escribir "| Ingrese los siguientes datos: |"
			Escribir "+-------------------------------+"
			Escribir "Carga distribuida (kg/m):"
			Escribir "(Si no tiene, ingresar 0)"
			Leer q
			Mostrar q, "kg/m"
			Escribir " "
			Escribir "Carga puntual (kg):"
			Escribir "(Si no tiene, ingresar 0)"
			Leer P
			Mostrar P, "kg"
			Escribir " "
			Escribir "Luz entre apoyos (m):"
			Leer L
			Mostrar L, "m"
			Escribir " "
			Escribir "�rea de corte (cm2):"
			Leer A
			Mostrar A, "cm2"
			Escribir " "
			Escribir "Momento de inercia Ix (cm4):"
			Leer Ix
			Mostrar Ix, "cm4"
			Escribir " "
			Escribir "M�dulo resistente Wx (cm3):"
			Leer Wx
			Mostrar Wx, "cm3"
			Escribir " "
			
			RAB = ((q * L) / 2) + (P / 2)
			Escribir "+-----------+"
			Escribir "| RA = RB = |  ", RAB, "kg"
			Escribir "+-----------+"
			//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Escribir " "
			
			Mmax = ((q * (L ^ 2)) / 8) + ((P * L) / 4)
			Escribir "+-------------------------+"
			Escribir "| Momento m�ximo (Mmax) = |  ", Mmax, "kgm"
			Escribir "+-------------------------+"
			//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Escribir " "
			
			T = (Mmax * 100) / Wx
			Escribir "+-----------+"
			Escribir "| Tensi�n = |  ", T, "kg/cm2"
			Escribir "+-----------+"
			//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Si T <= Tadm_a Entonces
				Escribir "La tensi�n verifica."
				Escribir " "
			Sino
				Escribir "La tensi�n no verifica. Intenta con otro perfil."
				Escribir " "
				//En versi�n final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
			FinSi
			
			Qmax = RAB / A
			Escribir "+-----------------------+"
			Escribir "| Corte m�ximo (Qmax) = |  ", Qmax, "kg/cm2"
			Escribir "+-----------------------+"
			//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Si Qmax <= Qadm_a Entonces
				Escribir "El corte m�ximo verifica."
				Escribir " "
			Sino
				Escribir "El corte m�ximo no verifica. Intenta con otro perfil."
				Escribir " "
				//En versi�n final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
			FinSi
			
			fmax = ((5 / 38400) * ((q * ((L*100) ^ 4)) / (E_a * Ix))) + ((P * ((L*100) ^ 3)) / (4800 * E_a * Ix))
			Escribir "+------------------------+"
			Escribir "| Flecha m�xima (fmax) = |  ", fmax, "cm"
			Escribir "+------------------------+"
			//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
			fadm_a = L / fadm_a
			Si fmax <= fadm_a Entonces
				Escribir "La flecha m�xima verifica."
				Escribir " "
			Sino
				Escribir "La flecha m�xima no verifica. Intenta con otro perfil."
				Escribir " "
				//En versi�n final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
			FinSi
			
		Sino Si op1 = 2 Entonces
				Escribir "+-------------------------------+"
				Escribir "| Ingrese los siguientes datos: |"
				Escribir "+-------------------------------+"
				Escribir "Carga distribuida (kg/m):"
				Escribir "(Si no tiene, ingresar 0)"
				Leer q
				Mostrar q, "kg/m"
				Escribir " "
				Escribir "Carga puntual (kg):"
				Escribir "(Si no tiene, ingresar 0)"
				Leer P
				Mostrar P, "kg"
				Escribir " "
				Escribir "Luz entre apoyos (m):"
				Leer L
				Mostrar L, "m"
				Escribir " "
				Escribir "�rea de la escuadr�a (cm2):"
				Leer A
				Mostrar A, "cm2"
				Escribir " "
				Escribir "Momento de inercia Ix (cm4):"
				Leer Ix
				Mostrar Ix, "cm4"
				Escribir " "
				Escribir "M�dulo resistente Wx (cm3):"
				Leer Wx
				Mostrar Wx, "cm3"
				Escribir " "
				
				RAB = ((q * L) / 2) + (P / 2)
				Escribir "+-----------+"
				Escribir "| RA = RB = |  ", RAB, "kg"
				Escribir "+-----------+"
				//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Escribir " "
				
				Mmax = ((q * (L ^ 2)) / 8) + ((P * L) / 4)
				Escribir "+-------------------------+"
				Escribir "| Momento m�ximo (Mmax) = |  ", Mmax, "kgm"
				Escribir "+-------------------------+"
				//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Escribir " "
				
				T = Mmax / Wx
				Escribir "+-----------+"
				Escribir "| Tensi�n = |  ", T, "kg/cm2"
				Escribir "+-----------+"
				//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Si T <= Tadm_m Entonces
					Escribir "La tensi�n verifica."
					Escribir " "
				Sino
					Escribir "La tensi�n no verifica. Intenta con otra escuadr�a."
					Escribir " "
					//En versi�n final, tener la posibilidad de ofrecerle al usuario la escuadr�a que necesita.
				FinSi
				
				Qmax = (3 / 2) * (RAB / A)
				Escribir "+-----------------------+"
				Escribir "| Corte m�ximo (Qmax) = |  ", Qmax, "kg/cm2"
				Escribir "+-----------------------+"
				//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Si Qmax <= Qadm_m Entonces
					Escribir "El corte m�ximo verifica."
					Escribir " "
				Sino
					Escribir "El corte m�ximo no verifica. Intenta con otra escuadr�a."
					Escribir " "
					//En versi�n final, tener la posibilidad de ofrecerle al usuario la escuadr�a que necesita.
				FinSi
				
				fmax = ((5 / 38400) * ((q * ((L*100) ^ 4)) / (E_m * Ix))) + ((P * ((L*100) ^ 3)) / (4800 * E_m * Ix))
				Escribir "+------------------------+"
				Escribir "| Flecha m�xima (fmax) = |  ", fmax, "cm"
				Escribir "+------------------------+"
				//En versi�n final, reducir los decimales que se muestran a solo 2 despues de la coma.
				fadm_m = L / fadm_m
				Si fmax <= fadm_m Entonces
					Escribir "La flecha m�xima verifica."
					Escribir " "
				Sino
					Escribir "La flecha m�xima no verifica. Intenta con otra escuadr�a."
					Escribir " "
					//En versi�n final, tener la posibilidad de ofrecerle al usuario la escuadr�a que necesita.
				FinSi
				
			SiNo Si op1 <> 0
					Escribir "La opci�n ingresada no es correcta. Por favor, ingrese el n�mero correspondiente a la opci�n que desea."
					Escribir " "
				FinSi
				
			FinSi
		FinSi
		
		op2 = 0
		
		Mientras (op1 <> 0 y op2 <> 1 y op2 <> 2) Hacer
			Escribir "�Desea realizar otra operaci�n?"
			Escribir "+---------------+"
			Escribir "|     1. Si     |"
			Escribir "+---------------+"
			Escribir "+---------------+"
			Escribir "|     2. No     |"
			Escribir "+---------------+"
			Leer op2
			
			Si op2 <= 0 o op2 >= 3 Entonces
				Escribir "La opci�n ingresada no es correcta. Por favor, ingrese el n�mero correspondiente a la opci�n que desea."
				Escribir " "
			FinSi
		Fin Mientras
		
	Hasta Que op1 = 0 o op2 = 2
	Escribir " "
	Escribir "+-------------------------------------+"
	Escribir "|     �Gracias por usar E-Calc!       |"
	Escribir "+-------------------------------------+"
FinAlgoritmo
