
*- Calculo de indicor de Desocupación

gen DS = .
			
			replace DS = 1 if p6351 == 1

		label var DS "Personas Desocupadas"
		label define DS 1 "Personas Desocupadas"
		label values DS DS

/*
Variables : p6351 
Resultado : 1 para personas descupadas