*- Calculo de la Poblacion de Economicamente Activa (PEA) -*
			
		gen PEA =.
		
			replace PEA =1 if DS==1
			replace PEA =1 if OC==1 
					
		lab var PEA  "Poblacion Economicamente Activa"
		label define PEA 1 "Personas Economicamente Activas"
		label values PEA PEA 

/*
Variables requisito procesamiento previo = OC (Ocupados) y DS (Descopados) (ver do files complementarios)

Variables : OC DS
Resultado : 1 para Personas Economicamente Activas