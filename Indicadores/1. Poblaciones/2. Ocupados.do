
*- Calculo de indicador de Ocupación

		gen OC = .
			
			replace OC = 1 if p6240 == 1
			replace OC = 1 if p6250 == 1
			replace OC = 1 if p6260 == 1
			replace OC = 1 if p6270 == 1
		   
		label var OC "Personas Ocupadas"
		label define OC 1"Ocupados"
		label values OC OC

/*
Variables : p6240 - p6250 - p6260 - p6270
Resultado : 1 para personas Ocupadas