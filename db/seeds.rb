#Registros a mano

city1 = City.create(idcity: 1, name_city: "Bogota")
city2 = City.create(idcity: 2, name_city: "Medellin")
city3 = City.create(idcity: 3, name_city: "Cali")
city4 = City.create(idcity: 4, name_city: "Barranquilla")
city5 = City.create(idcity: 5, name_city: "Cucuta")
   

store1 = Store.create(id_store:1, name_store:"bikeshop", address_store:"cra100",
         score_store:4, phonenum_store:1, celphone_store:1,city_id:1, email:"bs@u.com",
         password:"111" )

user1 = User.create( email:"ferg@gmail.com", password:"111111", password_confirmation:"111111",
        idUser:1, nameUser:"Fernando", surnameUser:"Perez", genderUser:"hombre", phonenumUser:1111,
        celphoneUser:1111, city_id:1 )

tech1 =  Technician.create( id_technical:1, NameTec:"Mariana", SurnameTec:"Suarez",
         typeworktec:"mantenimiento", costhourtec:20000, phonenumtec:1111,
         email:"marinn@gmail.com", password:"111111" )

tech2 =  Technician.create( id_technical:2, NameTec:"Pedro", SurnameTec:"Fernandez",
         typeworktec:"ensamblado", costhourtec:80000, phonenumtec:2222,
         email:"pedrof@outlook.com", password:"222222" )

tech3 =  Technician.create( id_technical:3, NameTec:"Nicolas", SurnameTec:"Enciso",
         typeworktec:"reparacion", costhourtec:50000, phonenumtec:3333,
         email:"nricardoe@gmail.com", password:"333333" )

tech4 =  Technician.create( id_technical:4, NameTec:"Juliana", SurnameTec:"Rojas",
         typeworktec:"mantenimiento", costhourtec:40000, phonenumtec:4444,
         email:"julirojas@gmail.com", password:"444444" )

tech5 =  Technician.create( id_technical:5, NameTec:"Atanael", SurnameTec:"Palacios",
         typeworktec:"ensamblado", costhourtec:45000, phonenumtec:5555,
         email:"atapala@yahoo.com", password:"555555" )

tech6 =  Technician.create( id_technical:6, NameTec:"Lina", SurnameTec:"Perez",
         typeworktec:"reparacion", costhourtec:75000, phonenumtec:6666,
         email:"linap@outlook.com", password:"666666" )

tech7 =  Technician.create( id_technical:7, NameTec:"Alejandro", SurnameTec:"Gomez",
         typeworktec:"ensamblado", costhourtec:39000, phonenumtec:7777,
         email:"alegom@yahoo.com", password:"777777" )

tech8 =  Technician.create( id_technical:8, NameTec:"Margarita", SurnameTec:"Martinez",
         typeworktec:"mantenimiento", costhourtec:25000, phonenumtec:8888,
         email:"marmarti@hotmail.com", password:"888888" )

tech9 =  Technician.create( id_technical:9, NameTec:"Armando", SurnameTec:"Casas",
         typeworktec:"reparacion", costhourtec:72000, phonenumtec:9999,
         email:"armacasa@hotmail.com", password:"999999" )

tech10 =  Technician.create( id_technical:10, NameTec:"Manuela", SurnameTec:"Rodriguez",
         typeworktec:"ensamblado", costhourtec:20000, phonenumtec:1010,
         email:"manurodri@aol.com", password:"101010" )

bici1 = Bicycle.create( id_bicy: 1, brand_bicy: "GW",
        material_bicy: "aluminio", components_bicy: "todo gw", price_bicy: 680000,
        usetype_bicy: "montana", description_bicy: "montana", store_id: 2)

bici2 = Bicycle.create( id_bicy: 2, brand_bicy: "Raleigh",
        material_bicy: "aluminio", components_bicy: "marco,rines", price_bicy: 700000,
        usetype_bicy: "montana", description_bicy: "montana", store_id: 2)

bici3 = Bicycle.create( id_bicy: 3, brand_bicy: "DeRosa",
        material_bicy: "fibraCarbono", components_bicy: "todo italia", price_bicy: 4700000,
        usetype_bicy: "ruta", description_bicy: "ruta italia", store_id: 3)

bici4 = Bicycle.create( id_bicy: 4, brand_bicy: "Raleigh",
        material_bicy: "acero", components_bicy: "marco,rines", price_bicy: 450000,
        usetype_bicy: "montana", description_bicy: "montana", store_id: 3)

bici5 = Bicycle.create( id_bicy: 5, brand_bicy: "GW",
        material_bicy: "aluminio", components_bicy: "grupo shimano", price_bicy: 700000,
        usetype_bicy: "ruta", description_bicy: "GW scorpion", store_id: 4)

bici6 = Bicycle.create( id_bicy: 6, brand_bicy: "specialized",
        material_bicy: "fibraCarbono", components_bicy: "todo sram", price_bicy: 1500000,
        usetype_bicy: "ruta", description_bicy: "ruta alto lvl", store_id: 4)

bici7 = Bicycle.create( id_bicy: 7, brand_bicy: "Trek",
        material_bicy: "fibraCarbono", components_bicy: "sram auto", price_bicy: 2100000,
        usetype_bicy: "ruta", description_bicy: "ruta alto lvl", store_id: 5)

bici8 = Bicycle.create( id_bicy: 8, brand_bicy: "specialized",
        material_bicy: "aluminio", components_bicy: "shimano", price_bicy: 750000,
        usetype_bicy: "montana", description_bicy: "mountain", store_id: 5)

bici9 = Bicycle.create( id_bicy: 9, brand_bicy: "GW",
        material_bicy: "acero", components_bicy: "shimano base", price_bicy: 450000,
        usetype_bicy: "montana", description_bicy: "mountain", store_id: 6)

bici10 = Bicycle.create( id_bicy: 10, brand_bicy: "Bianchi",
        material_bicy: "acero", components_bicy: "shimano base", price_bicy: 350000,
        usetype_bicy: "montana", description_bicy: "mountain", store_id: 6)

bici11 = Bicycle.create( id_bicy: 11, brand_bicy: "Giant",
        material_bicy: "acero", components_bicy: "shimano medio", price_bicy: 650000,
        usetype_bicy: "montana", description_bicy: "mountain", store_id: 7)

bici12 = Bicycle.create( id_bicy: 12, brand_bicy: "GW",
        material_bicy: "acero", components_bicy: "shimano base", price_bicy: 450000,
        usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 7)

bici13 = Bicycle.create( id_bicy: 13, brand_bicy: "Bianchi",
        material_bicy: "acero", components_bicy: "shimano base", price_bicy: 350000,
        usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 8)

bici14 = Bicycle.create( id_bicy: 14, brand_bicy: "Benelli",
        material_bicy: "acero", components_bicy: "shimano base", price_bicy: 390000,
        usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 8)        

bici15 = Bicycle.create( id_bicy: 15, brand_bicy: "DeRosa", #nuevos
        material_bicy: "fibraCarbono", components_bicy: "sram ultra", price_bicy: 20000000,
        usetype_bicy: "ruta", description_bicy: "ruta competencia", store_id: 9)

bici16 = Bicycle.create( id_bicy: 16, brand_bicy: "Specialized",
        material_bicy: "fibraCarbono", components_bicy: "shimano ultra", price_bicy: 9000000,
        usetype_bicy: "ruta", description_bicy: "ruta competencia", store_id: 9)

bici17 = Bicycle.create( id_bicy: 17, brand_bicy: "GW",
        material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 650000,
        usetype_bicy: "montana", description_bicy: "ciudad y urbana", store_id: 10)

bici18 = Bicycle.create( id_bicy: 18, brand_bicy: "Trek",
        material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 780000,
        usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)