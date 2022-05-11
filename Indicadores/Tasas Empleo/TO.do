/*
------- LIEAMIENTOS PREVIOS ------------------------------------------

Nota: Depende de como collapse la informacion: Ej: Sexo, Mes, Trimestre
      Para la variables poblacionales el microdato de SUMA  

Comnado: collapse (sum) POB PET PET_No PEA OC DS Iniac [iw=fex_c_2011]

Estructura de la base resulado del collapse

          (Suma)      (Suma)     (Suma)
    Mes     PET         OC         TO
    1        #          #         OC/PET 
    2        #          #         OC/PET   
    3        #          #         OC/PET   
    4        #          #         OC/PET   

*/

*- variables en mayuscula no son requerimiento es a modo ilutrativo

*- calculo de la tasa de Ocupación -*

    gen TO = OC/PET
    format TO %8.1f // Formato para que que (##.#%) Solo un decimal 

/*
Variables requisito procesamiento previo = OC (Ocupados) - PET (Perosnas en Edad de Trabajar)

Variables : OC y PET
Resultado : % porcentaje

    