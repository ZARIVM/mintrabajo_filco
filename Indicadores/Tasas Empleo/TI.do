/*
------- LIEAMIENTOS PREVIOS ------------------------------------------

Nota: Depende de como collapse la informacion: Ej: Sexo, Mes, Trimestre
      Para la variables poblacionales el microdato de SUMA  

Comnado: collapse (sum) POB PET PET_No PEA OC DS Iniac [iw=fex_c_2011]

Estructura de la base resulado del collapse

          (Suma)      (Suma)     (Suma)
    Mes     PET        Inac        Ina
    1        #          #         Inac/PET 
    2        #          #         Inac/PET   
    3        #          #         Inac/PET   
    4        #          #         Inac/PET   

*/

*- calculo de la tasa de Ocupación -*

    gen TInac = Inac / PET
    format TInac %8.1f // Formato para que que (##.#%) Solo un decimal 

/*
Variables requisito procesamiento previo = OC (Ocupados) - PET (Perosnas en Edad de Trabajar)

Variables : TInac PET
Resultado : % porcentaje