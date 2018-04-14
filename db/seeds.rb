# This file should contain all the record creation needed to seed the database with its default values.
 #The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

 #Examples:

 #  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #  Character.create(name: 'Luke', movie: movies.first)

city1 = City.create(idcity: 1, name_city: "Bogota")
city2 = City.create(idcity: 2, name_city: "Medellin")
city3 = City.create(idcity: 3, name_city: "Cali")
city4 = City.create(idcity: 4, name_city: "Barranquilla")
city5 = City.create(idcity: 5, name_city: "Cucuta")

store1 = Store.create(id_store: 2, name_store: "bikesmore", address_store: "cll10 #80", 
         score_store: 4,phonenum_store: 2222, celphone_store: 2222, email: "bk@yahoo.com",city_id: 1)


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

bici6 = Bicycle.create( id_bicy: 6, brand_bicy: "specialized",
        material_bicy: "fibraCarbono", components_bicy: "todo sram", price_bicy: 1500000,
        usetype_bicy: "ruta", description_bicy: "ruta alto lvl", store_id: 4)
