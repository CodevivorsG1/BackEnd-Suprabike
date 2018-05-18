from random import randint

marcas = ["gw", "derosa", "specialized", "trek", "giant", "benelli", "bianchi",
         "raleigh"]

material = ["acero", "aluminio", "fibracarbono"]

componente = ["shimano", "sram"]

tipouso = ["urbana", "montana", "ruta"]

for i in range(26, 200):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0, len(material)-1)
    componenterand = randint(0, len(componente)-1)
    tipousorand = randint(0, len(tipouso)-1)

    salida = "bici"+str(i)+" = Bicycle.create( id_bicy:"+str(i)
    salida1 = ", brand_bicy: "+'"'+str(marcas[marcasrand])+'"'
    salida2 = ",material_bicy: "+'"'+str(material[materialrand])+'"'
    salida3 = ", components_bicy:"+'"'+str(componente[componenterand])+'"'
    salida4 = ", price_bicy:"+str(randint(100000,40000000))
    salida5 = ",usetype_bicy: "+'"'+str(tipouso[tipousorand])+'"'
    salida6 = ", description_bicy: "+'"'+str(tipouso[tipousorand])+'"'
    salida7 = ", store_id: "+str(randint(1, 10))

    total = salida+salida1+salida2+salida3+salida4+salida5+salida6+salida7+")"

    print(total)
    
    



