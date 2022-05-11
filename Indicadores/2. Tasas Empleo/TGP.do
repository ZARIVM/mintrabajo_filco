/*
------- LIEAMIENTOS PREVIOS ------------------------------------------
Nota: Depende de como collapse la informacion: Ej: Sexo, Mes, Trimestre
      Para la variables poblacionales el microdato de SUMA  

Comnado: collapse (sum) POB PET PET_No PEA OC DS Iniac [iw=fex_c_2011]

Estructura de la base resulado del collapse

          (Suma)      (Suma)     (Suma)
    Mes     PET         PEA        TGP
    1        #          #        PET/PEA 
    2        #          #        PET/PEA   
    3        #          #        PET/PEA   
    4        #          #        PET/PEA   

*/

*- variables en mayuscula no son requerimiento es a modo ilutrativo

*- calculo de la tasa dePETupación -*

    gen TGP = PET/ PEA
    format TGP %8.1f // Formato para que que (##.#%) Solo un decimal 

/*
Variables requisito pPETesamiento previo = PET (Pob. Edad Trab) - PEA (Perosnas en Econo. Activa)

Variables :PET y PEA
Resultado : % porcentaje