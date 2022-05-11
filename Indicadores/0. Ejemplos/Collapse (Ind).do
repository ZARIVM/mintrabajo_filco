
** LLAMAR A LA BASE DE DATOS GRANDE

use "F:\OneDrive - Universidad de La Salle\1. Observatorio ML\1. Bases de Datos\1. GEIH\1. Stata\GEIH_2019.dta", clear

/* CRACION DE LA VARIABLES FUNADAMENTALES

	* Varaibles parametricas
		
		gen OC = .
			
			replace OC = 1 if p6240 == 1
			replace OC = 1 if p6250 == 1
			replace OC = 1 if p6260 == 1
			replace OC = 1 if p6270 == 1
		   
		label var OC "Personas Ocupadas"
		label define OC 1"Ocupados"
		label values OC OC
		
		
		gen DS = .
			
			replace DS = 1 if p6351 == 1

		label var DS "Personas Desocupadas"
		label define DS 1 "Personas Desocupadas"
		label values DS DS
		
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


		gen PEA =.
		
			replace PEA =1 if dsi==1
			replace PEA =1 if OC==1 
					
		lab var PEA  "Poblacion Economicamente Activa"
		label define PEA 1 "Personas Economicamente Activas"
		label values PEA PEA 

			
		gen PET =.						
		
			replace PET =1 if PEA ==1
			replace PET =1 if Inac==1

		lab var PET  "Poblacion Edad de Trabajar"
		label define PET 1 "Personas en Edad de Trabajar"
		label values PET PET
*/
	
	*- ESTE DEBERIA SER LAS LINEAS PARA LA CONSULTA DE LOS DATOS -*
	
	collapse (sum) PET OC  [iw=fex_c_2011], by (mes)
		
	    gen TO = (OC/PET)*100 
	
   	*- Formato de las variables 
	
	format TO %8.1f             // Formato para que que (##.#%) Solo un decimal
	format OC PET %12.3gc       // En millones
