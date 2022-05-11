*- Poblacion en edad de Trabajar (PET) -*
			
		gen PET =.						
		
			replace PET =1 if PEA ==1
			replace PET =1 if Inac==1

		lab var PET  "Poblacion Edad de Trabajar"
		label define PET 1 "Personas en Edad de Trabajar"
		label values PET PET

/*
Variables requisito procesamiento previo = PEA y Ini (ver do files complementarios)

Variables : PEA (Persoans Economicamente Activas) , Ini (Inactivos)
Resultado : 1 para Personas en edad de trabajar