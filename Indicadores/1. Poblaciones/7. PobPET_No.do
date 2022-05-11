*- Poblacion en NO edad de Trabajar (PET) -*
			
		gen PET_No = .
		
			replace PET_No = 1 if PET !=1
			
		lab var PET_No " NO Poblacion Edad de Trabajar	"
		label define PET_No 1 "Personas que NO estan Edad de Trabajar"
		label values PET_No PET_No

/*
Variables requisito procesamiento previo = PET
Variables : PET (Personas en edad de trabajar)
Resultado : 1 para Personas que NO estan en edad de trabajar

Operador: (!=) = No es  