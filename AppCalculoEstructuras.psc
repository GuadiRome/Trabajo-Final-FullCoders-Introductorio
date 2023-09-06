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
	Escribir "|                     ¡Bienvenvenido a E-Calc!                            |"
	Escribir "| Este pseudocódigo muestra el funcionamiento del sistema de verificación |"
	escribir "|  de estructuras arquitectónicas de acero y de madera para dar una idea  |"
	Escribir "|             de las opciones del menú y datos de carga.                  |"
	Escribir "+-------------------------------------------------------------------------+"
	
	
	Repetir
		
		Escribir "Indique el material que desea verificar:"
		//En versión final, incluir un menú previo para seleccionar si desea calcular o verificar una estructura.
		Escribir "+-------------------+"
		Escribir "|     1. Acero      |"
		Escribir "+-------------------+"
		Escribir "+-------------------+"
		Escribir "|    2. Madera      |"
		Escribir "+-------------------+"
		//En versión final, incluir una opción de Ayuda para resolver dudas de los usuarios respecto al uso de la app.
		//También incluir las tablas de perfiles metálicos y piezas de madera para consultar.
		Escribir "Para salir de la aplicación, presione 0."
		Leer op1
		
		Si op1 = 1 Entonces
			//En versión final, incluir un menú donde seleccionar entre predimensionado de vigas y columnas.
			//Actualmente solo está disponible el predimensionado de vigas.
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
			Escribir "Área de corte (cm2):"
			Leer A
			Mostrar A, "cm2"
			Escribir " "
			Escribir "Momento de inercia Ix (cm4):"
			Leer Ix
			Mostrar Ix, "cm4"
			Escribir " "
			Escribir "Módulo resistente Wx (cm3):"
			Leer Wx
			Mostrar Wx, "cm3"
			Escribir " "
			
			RAB = ((q * L) / 2) + (P / 2)
			Escribir "+-----------+"
			Escribir "| RA = RB = |  ", RAB, "kg"
			Escribir "+-----------+"
			//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Escribir " "
			
			Mmax = ((q * (L ^ 2)) / 8) + ((P * L) / 4)
			Escribir "+-------------------------+"
			Escribir "| Momento máximo (Mmax) = |  ", Mmax, "kgm"
			Escribir "+-------------------------+"
			//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Escribir " "
			
			T = (Mmax * 100) / Wx
			Escribir "+-----------+"
			Escribir "| Tensión = |  ", T, "kg/cm2"
			Escribir "+-----------+"
			//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Si T <= Tadm_a Entonces
				Escribir "La tensión verifica."
				Escribir " "
			Sino
				Escribir "La tensión no verifica. Intenta con otro perfil."
				Escribir " "
				//En versión final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
			FinSi
			
			Qmax = RAB / A
			Escribir "+-----------------------+"
			Escribir "| Corte máximo (Qmax) = |  ", Qmax, "kg/cm2"
			Escribir "+-----------------------+"
			//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
			Si Qmax <= Qadm_a Entonces
				Escribir "El corte máximo verifica."
				Escribir " "
			Sino
				Escribir "El corte máximo no verifica. Intenta con otro perfil."
				Escribir " "
				//En versión final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
			FinSi
			
			fmax = ((5 / 38400) * ((q * ((L*100) ^ 4)) / (E_a * Ix))) + ((P * ((L*100) ^ 3)) / (4800 * E_a * Ix))
			Escribir "+------------------------+"
			Escribir "| Flecha máxima (fmax) = |  ", fmax, "cm"
			Escribir "+------------------------+"
			//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
			fadm_a = L / fadm_a
			Si fmax <= fadm_a Entonces
				Escribir "La flecha máxima verifica."
				Escribir " "
			Sino
				Escribir "La flecha máxima no verifica. Intenta con otro perfil."
				Escribir " "
				//En versión final, tener la posibilidad de ofrecerle al usuario el perfil que necesita.
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
				Escribir "Área de la escuadría (cm2):"
				Leer A
				Mostrar A, "cm2"
				Escribir " "
				Escribir "Momento de inercia Ix (cm4):"
				Leer Ix
				Mostrar Ix, "cm4"
				Escribir " "
				Escribir "Módulo resistente Wx (cm3):"
				Leer Wx
				Mostrar Wx, "cm3"
				Escribir " "
				
				RAB = ((q * L) / 2) + (P / 2)
				Escribir "+-----------+"
				Escribir "| RA = RB = |  ", RAB, "kg"
				Escribir "+-----------+"
				//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Escribir " "
				
				Mmax = ((q * (L ^ 2)) / 8) + ((P * L) / 4)
				Escribir "+-------------------------+"
				Escribir "| Momento máximo (Mmax) = |  ", Mmax, "kgm"
				Escribir "+-------------------------+"
				//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Escribir " "
				
				T = Mmax / Wx
				Escribir "+-----------+"
				Escribir "| Tensión = |  ", T, "kg/cm2"
				Escribir "+-----------+"
				//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Si T <= Tadm_m Entonces
					Escribir "La tensión verifica."
					Escribir " "
				Sino
					Escribir "La tensión no verifica. Intenta con otra escuadría."
					Escribir " "
					//En versión final, tener la posibilidad de ofrecerle al usuario la escuadría que necesita.
				FinSi
				
				Qmax = (3 / 2) * (RAB / A)
				Escribir "+-----------------------+"
				Escribir "| Corte máximo (Qmax) = |  ", Qmax, "kg/cm2"
				Escribir "+-----------------------+"
				//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
				Si Qmax <= Qadm_m Entonces
					Escribir "El corte máximo verifica."
					Escribir " "
				Sino
					Escribir "El corte máximo no verifica. Intenta con otra escuadría."
					Escribir " "
					//En versión final, tener la posibilidad de ofrecerle al usuario la escuadría que necesita.
				FinSi
				
				fmax = ((5 / 38400) * ((q * ((L*100) ^ 4)) / (E_m * Ix))) + ((P * ((L*100) ^ 3)) / (4800 * E_m * Ix))
				Escribir "+------------------------+"
				Escribir "| Flecha máxima (fmax) = |  ", fmax, "cm"
				Escribir "+------------------------+"
				//En versión final, reducir los decimales que se muestran a solo 2 despues de la coma.
				fadm_m = L / fadm_m
				Si fmax <= fadm_m Entonces
					Escribir "La flecha máxima verifica."
					Escribir " "
				Sino
					Escribir "La flecha máxima no verifica. Intenta con otra escuadría."
					Escribir " "
					//En versión final, tener la posibilidad de ofrecerle al usuario la escuadría que necesita.
				FinSi
				
			SiNo Si op1 <> 0
					Escribir "La opción ingresada no es correcta. Por favor, ingrese el número correspondiente a la opción que desea."
					Escribir " "
				FinSi
				
			FinSi
		FinSi
		
		op2 = 0
		
		Mientras (op1 <> 0 y op2 <> 1 y op2 <> 2) Hacer
			Escribir "¿Desea realizar otra operación?"
			Escribir "+---------------+"
			Escribir "|     1. Si     |"
			Escribir "+---------------+"
			Escribir "+---------------+"
			Escribir "|     2. No     |"
			Escribir "+---------------+"
			Leer op2
			
			Si op2 <= 0 o op2 >= 3 Entonces
				Escribir "La opción ingresada no es correcta. Por favor, ingrese el número correspondiente a la opción que desea."
				Escribir " "
			FinSi
		Fin Mientras
		
	Hasta Que op1 = 0 o op2 = 2
	Escribir " "
	Escribir "+-------------------------------------+"
	Escribir "|     ¡Gracias por usar E-Calc!       |"
	Escribir "+-------------------------------------+"
FinAlgoritmo
