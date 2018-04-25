require 'faker' 
#Registros a mano

#Registros a mano

#10 registros technician
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
    typeworktec:"mantenimiento", costhourtec:39000, phonenumtec:7777,
    email:"alegom@yahoo.com", password:"777777" )

tech8 =  Technician.create( id_technical:8, NameTec:"Margarita", SurnameTec:"Martinez",
    typeworktec:"ensamblado", costhourtec:25000, phonenumtec:8888,
    email:"marmarti@hotmail.com", password:"888888" )

tech9 =  Technician.create( id_technical:9, NameTec:"Armando", SurnameTec:"Casas",
    typeworktec:"reparacion", costhourtec:72000, phonenumtec:9999,
    email:"armacasa@hotmail.com", password:"999999" )

tech10 =  Technician.create( id_technical:10, NameTec:"Manuela", SurnameTec:"Rodriguez",
    typeworktec:"mantenimiento", costhourtec:20000, phonenumtec:1010,
    email:"manurodri@aol.com", password:"101010" )


#10 transactions

tran1 = Transaction.create(date_transaction:"25/05/2016",type_transaction:"mantenimiento",
   total_transaction:50000,technician_id:1, user_id:1)

tran2 = Transaction.create(date_transaction:"12/11/2015",type_transaction:"ensamblado",
   total_transaction:75000,technician_id:2, user_id:2)

tran3 = Transaction.create(date_transaction:"09/02/2017",type_transaction:"reparacion",
   total_transaction:25000,technician_id:3, user_id:3)

tran4 = Transaction.create(date_transaction:"17/09/2014",type_transaction:"mantenimiento",
   total_transaction:90000,technician_id:4, user_id:4)

tran5 = Transaction.create(date_transaction:"12/10/2016",type_transaction:"ensamblado",
   total_transaction:85000,technician_id:5, user_id:5)

tran6 = Transaction.create(date_transaction:"18/05/2015",type_transaction:"reparacion",
   total_transaction:65000,store_id:1, user_id:6)

tran7 = Transaction.create(date_transaction:"19/12/2017",type_transaction:"mantenimiento",
   total_transaction:50000,store_id:2, user_id:7)

tran8 = Transaction.create(date_transaction:"13/08/2017",type_transaction:"ensamblado",
   total_transaction:35000,store_id:3, user_id:8)

tran9 = Transaction.create(date_transaction:"11/11/2014",type_transaction:"reparacion",
   total_transaction:45000,store_id:4, user_id:9)

tran10 = Transaction.create(date_transaction:"02/13/2015",type_transaction:"mantenimiento",
   total_transaction:60000,store_id:10, user_id:10)

#25 registros usuarios
user1 = User.create( email:"ferg@gmail.com", password:"111111", password_confirmation:"111111",
   idUser:1, nameUser:"Fernando", surnameUser:"Perez", genderUser:"hombre", phonenumUser:1111,
   celphoneUser:1111, city_id:1 )

user2 = User.create( email:"julque@gmail.com", password:"222222", password_confirmation:"222222",
   idUser:2, nameUser:"Juliana", surnameUser:"Quevedo", genderUser:"mujer", phonenumUser:2222,
   celphoneUser:2222, city_id:1 )

user3 = User.create( email:"estemur@yahoo.com", password:"333333", password_confirmation:"333333",
   idUser:3, nameUser:"Esteban", surnameUser:"Murcia", genderUser:"hombre", phonenumUser:3333,
   celphoneUser:3333, city_id:1 )

user4 = User.create( email:"sarar@gmail.com", password:"444444", password_confirmation:"444444",
   idUser:4, nameUser:"Sara", surnameUser:"Ramirez", genderUser:"mujer", phonenumUser:4444,
   celphoneUser:4444, city_id:1 )

user5 = User.create( email:"serher@gmail.com", password:"555555", password_confirmation:"555555",
   idUser:5, nameUser:"Sergio", surnameUser:"Hernandez", genderUser:"hombre", phonenumUser:5555,
   celphoneUser:5555, city_id:1 )

user6 = User.create( email:"juaber@hotmail.com", password:"666666", password_confirmation:"666666",
   idUser:6, nameUser:"Juana", surnameUser:"Bermudez", genderUser:"mujer", phonenumUser:6666,
   celphoneUser:6666, city_id:2 )

user7 = User.create( email:"pedcas@hotmail.com", password:"777777", password_confirmation:"777777",
   idUser:7, nameUser:"Pedro", surnameUser:"Castro", genderUser:"hombre", phonenumUser:7777,
   celphoneUser:7777, city_id:2 )

user8 = User.create( email:"masaenz@hotmail.com", password:"888888", password_confirmation:"888888",
   idUser:8, nameUser:"Maria", surnameUser:"Saenz", genderUser:"mujer", phonenumUser:8888,
   celphoneUser:8888, city_id:2 )

user9 = User.create( email:"jorod@hotmail.com", password:"999999", password_confirmation:"999999",
   idUser:9, nameUser:"Joaquin", surnameUser:"Rodriguez", genderUser:"hombre", phonenumUser:9999,
   celphoneUser:9999, city_id:2 )

user10 = User.create( email:"camimar@hotmail.com", password:"101010", password_confirmation:"101010",
   idUser:10, nameUser:"Camila", surnameUser:"Martinez", genderUser:"mujer", phonenumUser:1010,
   celphoneUser:1010, city_id:2 )

user11 = User.create( email:"sebgom@yahoo.com", password:"111111", password_confirmation:"111111",
   idUser:11, nameUser:"Sebastian", surnameUser:"Gomez", genderUser:"hombre", phonenumUser:1111,
   celphoneUser:1111, city_id:3 )

user12 = User.create( email:"dapine@yahoo.com", password:"121212", password_confirmation:"121212",
   idUser:12, nameUser:"Daniela", surnameUser:"Pineda", genderUser:"mujer", phonenumUser:1212,
   celphoneUser:1212, city_id:3 )

user13 = User.create( email:"jortor@yahoo.com", password:"131313", password_confirmation:"131313",
   idUser:13, nameUser:"Jorge", surnameUser:"Torres", genderUser:"hombre", phonenumUser:1313,
   celphoneUser:1313, city_id:3 )

user14 = User.create( email:"camvil@yahoo.com", password:"141414", password_confirmation:"141414",
   idUser:14, nameUser:"Camila", surnameUser:"Villegas", genderUser:"mujer", phonenumUser:1414,
   celphoneUser:1414, city_id:3 )

user15 = User.create( email:"juancaal@yahoo.com", password:"151515", password_confirmation:"151515",
   idUser:15, nameUser:"Juan Carlos", surnameUser:"Alvarez", genderUser:"hombre", phonenumUser:1515,
   celphoneUser:1515, city_id:3 )

user16 = User.create( email:"juliher@outlook.com", password:"161616", password_confirmation:"161616",
   idUser:16, nameUser:"Juliana", surnameUser:"Hernandez", genderUser:"mujer", phonenumUser:1616,
   celphoneUser:1616, city_id:4 )

user17 = User.create( email:"migarb@outlook.com", password:"171717", password_confirmation:"171717",
   idUser:17, nameUser:"Miguel", surnameUser:"Arbelaez", genderUser:"hombre", phonenumUser:1717,
   celphoneUser:1717, city_id:4 )

user18 = User.create( email:"rocvel@outlook.com", password:"181818", password_confirmation:"181818",
   idUser:18, nameUser:"Rocio", surnameUser:"Velandia", genderUser:"mujer", phonenumUser:1818,
   celphoneUser:1818, city_id:4 )

user19 = User.create( email:"andes@outlook.com", password:"191919", password_confirmation:"191919",
   idUser:19, nameUser:"Andres", surnameUser:"Escobar", genderUser:"hombre", phonenumUser:1919,
   celphoneUser:1919, city_id:4 )

user20 = User.create( email:"sanroj@outlook.com", password:"202020", password_confirmation:"202020",
   idUser:20, nameUser:"Sandra", surnameUser:"Rojas", genderUser:"mujer", phonenumUser:2020,
   celphoneUser:2020, city_id:4 )

user21 = User.create( email:"josbec@gmail.com", password:"212121", password_confirmation:"212121",
   idUser:21, nameUser:"Jose", surnameUser:"Becerra", genderUser:"hombre", phonenumUser:2121,
   celphoneUser:2121, city_id:5 )

user22 = User.create( email:"sofivar@gmail.com", password:"222222", password_confirmation:"222222",
   idUser:22, nameUser:"Sofia", surnameUser:"Vargas", genderUser:"mujer", phonenumUser:2222,
   celphoneUser:2222, city_id:5 )

user23 = User.create( email:"manupal@gmail.com", password:"232323", password_confirmation:"232323",
   idUser:23, nameUser:"Manuel", surnameUser:"Palacios", genderUser:"hombre", phonenumUser:2323,
   celphoneUser:2323, city_id:5 )

user24 = User.create( email:"crishe@gmail.com", password:"242424", password_confirmation:"242424",
   idUser:24, nameUser:"Cristina", surnameUser:"Henao", genderUser:"mujer", phonenumUser:2424,
   celphoneUser:2424, city_id:5 )

user25 = User.create( email:"camoch@gmail.com", password:"252525", password_confirmation:"252525",
   idUser:25, nameUser:"Camilo", surnameUser:"Ochoa", genderUser:"hombre", phonenumUser:2525,
   celphoneUser:2525, city_id:5 )

#10 stores
store1 = Store.create(id_store:1, name_store:"bikeshop", address_store:"cra100",
    score_store:4, phonenum_store:8152436, celphone_store:3054785112,city_id:1,
    email:"bikeshop@gmail.com",password:"111111" )

store2 = Store.create(id_store:2, name_store:"running", address_store:"cll80",
    score_store:3, phonenum_store:6325447, celphone_store:3112253652,city_id:2,
    email:"runbikes@gmail.com",password:"222222" )

store3 = Store.create(id_store:3, name_store:"ruteros", address_store:"cll13",
    score_store:4, phonenum_store:2336598, celphone_store:3162543652,city_id:3,
    email:"ruteros@hotmail.com",password:"333333" )

store4 = Store.create(id_store:4, name_store:"ciclasymas", address_store:"autonorte cll100",
    score_store:5, phonenum_store:9562136, celphone_store:3057896223,city_id:4,
    email:"ciclasmas@hotmail.com",password:"444444" )

store5 = Store.create(id_store:5, name_store:"fastandfurious", address_store:"NQScll30",
    score_store:3, phonenum_store:6521423, celphone_store:3115243658,city_id:5,
    email:"ffbikes@yahoo.com",password:"555555" )

store6 = Store.create(id_store:6, name_store:"bikeros", address_store:"av68",
    score_store:4, phonenum_store:3526598, celphone_store:3054125869,city_id:1,
    email:"bikeros@hotmail.com",password:"666666" )

store7 = Store.create(id_store:7, name_store:"turbociclas", address_store:"cra68",
    score_store:4, phonenum_store:6521452, celphone_store:3185234562,city_id:2,
    email:"turbociclas@hotmail.com",password:"777777" )

store8 = Store.create(id_store:8, name_store:"speedbike", address_store:"cll13",
    score_store:2, phonenum_store:2336598, celphone_store:3162543652,city_id:3,
    email:"speedbike@yahoo.com",password:"888888" )

store9 = Store.create(id_store:9, name_store:"ciclotienda", address_store:"transv82",
    score_store:1, phonenum_store:5421256, celphone_store:3142563226,city_id:4,
    email:"citien@gmail.com",password:"999999" )

store10 = Store.create(id_store:10, name_store:"inbikes", address_store:"av68",
    score_store:5, phonenum_store:6521425, celphone_store:3071452869,city_id:5,
    email:"inbik@hotmail.com",password:"101010" )

store11 = Store.create(id_store:11, name_store:"inbikes", address_store:"av68",
    score_store:5, phonenum_store:6521425, celphone_store:3071452869,city_id:5,
    email:"inbik2@hotmail.com",password:"101010" )

store12 = Store.create(id_store:12, name_store:"inbikes", address_store:"av68",
    score_store:5, phonenum_store:6521425, celphone_store:3071452869,city_id:5,
    email:"inbik3@hotmail.com",password:"101010" )

# 5 registros ciudades
city1 = City.create(idcity: 1, name_city: "Bogota")
city2 = City.create(idcity: 2, name_city: "Medellin")
city3 = City.create(idcity: 3, name_city: "Cali")
city4 = City.create(idcity: 4, name_city: "Barranquilla")
city5 = City.create(idcity: 5, name_city: "Cucuta")

# 25 registros forum
forum1 = Forum.create(topic:"marcos",user_id:1)
forum2 = Forum.create(topic:"rines",user_id:2)
forum3 = Forum.create(topic:"manubrios",user_id:3)
forum4 = Forum.create(topic:"grupos",user_id:4)
forum5 = Forum.create(topic:"marcos",user_id:5)
forum6 = Forum.create(topic:"rines",user_id:6)
forum7 = Forum.create(topic:"marcos",user_id:7)
forum8 = Forum.create(topic:"rines",user_id:8)
forum9 = Forum.create(topic:"manubrios",user_id:9)
forum10 = Forum.create(topic:"grupos",user_id:10)
forum11 = Forum.create(topic:"marcos",user_id:11)
forum12 = Forum.create(topic:"rines",user_id:12)
forum13 = Forum.create(topic:"manubrios",user_id:13)
forum14 = Forum.create(topic:"grupos",user_id:14)
forum15 = Forum.create(topic:"marcos",user_id:15)
forum16 = Forum.create(topic:"rines",user_id:16)
forum17 = Forum.create(topic:"manubrios",user_id:17)
forum18 = Forum.create(topic:"grupos",user_id:18)
forum19 = Forum.create(topic:"marcos",user_id:19)
forum20 = Forum.create(topic:"rines",user_id:20)
forum21 = Forum.create(topic:"manubrios",user_id:21)
forum22 = Forum.create(topic:"grupos",user_id:22)
forum23 = Forum.create(topic:"marcos",user_id:23)
forum24 = Forum.create(topic:"rines",user_id:24)
forum25 = Forum.create(topic:"manubrios",user_id:25)

#20 registros component
com1 = Component.create(type_component:"manubrio",price_component:50000,
  description_component:"alta calidad",brand_component:"GW",
  sizes_component:27,material_component:"aluminio", store_id:1)

com2 = Component.create(type_component:"marco",price_component:350000,
  description_component:"alta calidad",brand_component:"GW",
  sizes_component:27,material_component:"aluminio", store_id:1)

com3 = Component.create(type_component:"rines",price_component:80000,
  description_component:"economicas",brand_component:"GW",
  sizes_component:27.5,material_component:"acero", store_id:2)

com4 = Component.create(type_component:"grupo",price_component:150000,
  description_component:"economicas",brand_component:"shimano",
  sizes_component:30,material_component:"acero", store_id:2)

com5 = Component.create(type_component:"manubrio",price_component:250000,
  description_component:"calidad media",brand_component:"Trek",
  sizes_component:40,material_component:"aluminio", store_id:3)

com6 = Component.create(type_component:"grupo",price_component:1200000,
  description_component:"alto rendimiento",brand_component:"sram",
  sizes_component:35,material_component:"aluminio", store_id:3)

com7 = Component.create(type_component:"marco",price_component:650000,
  description_component:"ruta media",brand_component:"Specialized",
  sizes_component:27.5,material_component:"aluminio", store_id:4)

com8 = Component.create(type_component:"manubrio",price_component:120000,
  description_component:"economicas",brand_component:"GW",
  sizes_component:45,material_component:"aluminio", store_id:4)

com9 = Component.create(type_component:"marco",price_component:750000,
  description_component:"montana media",brand_component:"Trek",
  sizes_component:31,material_component:"aluminio", store_id:5)

com10 = Component.create(type_component:"rines",price_component:1500000,
  description_component:"ultra liviana",brand_component:"DeRosa",
  sizes_component:30,material_component:"fibraCarbono", store_id:5)

com11 = Component.create(type_component:"marco",price_component:80000,
  description_component:"economicas",brand_component:"Benelli",
  sizes_component:27.5,material_component:"acero", store_id:6)

com12 = Component.create(type_component:"manubrio",price_component:40000,
  description_component:"economicas",brand_component:"Benelli",
  sizes_component:27.5,material_component:"acero", store_id:6)

com13 = Component.create(type_component:"grupo",price_component:500000,
  description_component:"tourney",brand_component:"shimano",
  sizes_component:27.5,material_component:"aluminio", store_id:7)

com14 = Component.create(type_component:"manubrio",price_component:200000,
  description_component:"ruta media",brand_component:"Specialized",
  sizes_component:27.5,material_component:"aluminio", store_id:7)

com15 = Component.create(type_component:"marco",price_component:800000,
  description_component:"ruta liviana",brand_component:"Specialized",
  sizes_component:27.5,material_component:"aluminio", store_id:8)

com16 = Component.create(type_component:"manubrio",price_component:180000,
  description_component:"ruta liviana",brand_component:"Specialized",
  sizes_component:27.5,material_component:"aluminio", store_id:8)

com17 = Component.create(type_component:"grupo",price_component:350000,
  description_component:"sram entrada",brand_component:"sram",
  sizes_component:27.5,material_component:"acero", store_id:9)

com18 = Component.create(type_component:"rines",price_component:200000,
  description_component:"montana media",brand_component:"Trek",
  sizes_component:27.5,material_component:"aluminio", store_id:9)

com19 = Component.create(type_component:"marco",price_component:450000,
  description_component:"scorpion",brand_component:"GW",
  sizes_component:27.5,material_component:"aluminio", store_id:10)

com20 = Component.create(type_component:"manubrio",price_component:180000,
  description_component:"scorpion",brand_component:"GW",
  sizes_component:27.5,material_component:"aluminio", store_id:10)


#20 registros bicycle
bici1 = Bicycle.create( id_bicy: 1, brand_bicy: "GW",
   material_bicy: "aluminio", components_bicy: "todo gw", price_bicy: 680000,
   usetype_bicy: "montana", description_bicy: "montana", store_id: 1)

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

bici19 = Bicycle.create( id_bicy: 19, brand_bicy: "GW",
   material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 580000,
   usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)

bici20 = Bicycle.create( id_bicy: 20, brand_bicy: "Specialized",
   material_bicy: "aluminio", components_bicy: "shimano alto", price_bicy: 850000,
   usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)

#25 regitros comment
comt1 = Comment.create(description:"comment 1",forum_id:1,user_id:1)
comt2 = Comment.create(description:"comment 2",forum_id:2,user_id:2)
comt3= Comment.create(description:"comment 3",forum_id:3,user_id:3) 
comt4= Comment.create(description:"comment 4",forum_id:4,user_id:4) 
comt5= Comment.create(description:"comment 5",forum_id:5,user_id:5) 
comt6= Comment.create(description:"marcos",forum_id:6,user_id:6) 
comt7= Comment.create(description:"marcos",forum_id:7,user_id:7) 
comt8= Comment.create(description:"comment 8",forum_id:8,user_id:8) 
comt9= Comment.create(description:"comment 9",forum_id:9,user_id:9) 
comt10= Comment.create(description:"comment 10",forum_id:10,user_id:10) 
comt11= Comment.create(description:"comment 11",forum_id:11,user_id:11) 
comt12= Comment.create(description:"comment 12",forum_id:12,user_id:12) 
comt13= Comment.create(description:"comment 13",forum_id:13,user_id:13) 
comt14= Comment.create(description:"comment 14",forum_id:14,user_id:14) 
comt15= Comment.create(description:"comment 15",forum_id:15,user_id:15) 
comt16= Comment.create(description:"comment 16",forum_id:16,user_id:16) 
comt17= Comment.create(description:"comment 17",forum_id:17,user_id:17) 
comt18= Comment.create(description:"comment 18",forum_id:18,user_id:18) 
comt19= Comment.create(description:"comment 19",forum_id:19,user_id:19) 
comt20= Comment.create(description:"comment 20",forum_id:20,user_id:20) 
comt21= Comment.create(description:"comment 21",forum_id:21,user_id:21) 
comt22= Comment.create(description:"comment 22",forum_id:22,user_id:22) 
comt23= Comment.create(description:"comment 23",forum_id:23,user_id:23) 
comt24= Comment.create(description:"comment 24",forum_id:24,user_id:24) 
comt25= Comment.create(description:"comment 25",forum_id:25,user_id:25)


puts 'started loading  data'
count = 0
20.times do |row|
    count = count +1
    randomId = 1+rand(count)
    City.create(idcity:Faker::Number.number(3),name_city: Faker::Address.city)
   
    Store.create(id_store: Faker::Number.number(6),
	    name_store: Faker::Name.name ,
	    address_store: Faker::Address.street_address,
	    score_store: 1+rand(10),
	    phonenum_store: Faker::Number.number(7),
	    celphone_store:  Faker::Number.number(10),
	    email: Faker::Internet.unique.email,
	    password: Faker::Internet.password(8),
	    city_id: randomId)
    
    User.create( idUser: Faker::Number.number(6),
        nameUser:Faker::Name.first_name  ,
        surnameUser:Faker::Name.last_name ,
        genderUser: "male",
        email:Faker::Internet.unique.email ,
        password:Faker::Internet.password(8) ,
        phonenumUser:Faker::PhoneNumber.phone_number ,
        celphoneUser:Faker::PhoneNumber.cell_phone ,
        city_id: randomId )

    Technician.create( id_technical:Faker::Number.number(6) ,
        NameTec:Faker::Name.first_name  ,
        SurnameTec:Faker::Name.last_name ,
        typeworktec:Faker::Job.field ,
        email:Faker::Internet.email ,
        costhourtec: Faker::Number.decimal(2),
        password:Faker::Name.first_name ,
        phonenumtec:Faker::PhoneNumber.phone_number ,
        city_id: randomId )

    Bicycle.create( id_bicy: Faker::Number.number(6),
        brand_bicy: Faker::Vehicle.manufacture,
        material_bicy: Faker::Beer.hop,
        components_bicy: Faker::Cat.name,
        price_bicy: Faker::Number.decimal(2),
        usetype_bicy: Faker::Friends.character,
        description_bicy: Faker::Friends.quote,
        store_id: randomId)

    Forum.create( topic:Faker::Vehicle.manufacture,
        user_id: randomId )

    
    5.times do |row|
        Comment.create( description: Faker::Book.genre,
            forum_id: randomId,
            user_id: randomId )
    end

    Component.create( type_component:Faker::Name.name ,
        price_component:Faker::Number.decimal(2) ,
        description_component:Faker::Commerce.material ,
        brand_component:Faker::Vehicle.manufacture ,
        sizes_component:Faker::Number.decimal(2) ,
        material_component:Faker::Name.name,
        store_id: randomId)

    Transaction.create( date_transaction:Faker::Date.between(2.days.ago, Date.today),
        type_transaction:Faker::Job.field ,
        total_transaction:Faker::Number.decimal(2) ,
        user_id: randomId,
        store_id: randomId )

tran3 = Transaction.create(date_transaction:"09/02/2017",type_transaction:"reparacion",
        total_transaction:25000,technician_id:3, user_id:3)

end
puts 'finished loading  data' 
