*- Calculo de indicador de Inactivos

		gen Inac = .
			
			replace Inac = 1 if p6240 == 5 
			replace Inac = 1 if p6300 == 2
			replace Inac = 1 if p6310 == 9 | p6310 == 10 | p6310 == 11 | p6310 == 12 | p6310 == 13
			replace Inac = 1 if p6330 == 2
			replace Inac = 1 if p6340 == 2
			replace Inac = 1 if p6351 == 2    

		label var Inac "Personas Inactivas"
		label define Inac 1 "Personas Inactivas"
		label values Inac Inac

/*
Variables : p6240 - p6300 - p6310 - p6330 - p6340 - p6351
Resultado : 1 para personas Inactivas

Operadores: (|) = Or  