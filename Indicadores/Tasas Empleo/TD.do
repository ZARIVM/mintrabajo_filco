/*
------- LIEAMIENTOS PREVIOS ------------------------------------------

Nota: Depende de como collapse la informacion: Ej: Sexo, Mes, Trimestre
      Para la variables poblacionales el microdato de SUMA  

Comnado: collapse (sum) POB PET PET_No PEA OC DS Iniac by (mes) [iw=fex_c_2011]

Estructura de la base resulado del collapse

          (Suma)      (Suma)     (Suma)
    Mes     PEA         DS         TD
    1        #          #         DS/PEA 
    2        #          #         DS/PEA   
    3        #          #         DS/PEA   
    4        #          #         DS/PEA   

*/

*- variables en mayuscula no son requerimiento es a modo ilutrativo

*- calculo de la tasa de DSupación -*

    gen TD = DS/ PEA
    format TD %8.1f // Formato para que que (##.#%) Solo un decimal 

/*
Variables requisito prDSesamiento previo = DS (Desocupado) - PEA (Perosnas en Econo. Activa)

Variables : DS y PEA
Resultado : % porcentaje