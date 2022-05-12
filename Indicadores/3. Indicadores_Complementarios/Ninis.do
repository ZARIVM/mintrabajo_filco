
*------- Calculo de los NINIS ---------------------------------------*
		
		gen ninis = .
		replace ninis = 1 if (DS == 1 | Inac == 1) & p6170==2

/*
Variables requisito procesamiento previo =  DS Inac p6170
Variables : DS (Desempleos) - Inac (Inactivos) - p6170 (Si estudia) 
Resultado : 1 para jovenes ninis

Operador: (|) = No es  - (&) adicion
