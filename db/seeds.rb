# This file should contain all the record creation needed to seed the database with its default values.
 #The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

 #Examples:

 #  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #  Character.create(name: 'Luke', movie: movies.first)

#bicycles
bici1 = Bicycle.create( id_bicy: 1, brand_bicy: "GW",
 material_bicy: "aluminio", components_bicy: "todo gw", price_bicy: 680000,
  usetype_bicy: "montana", description_bicy: "montana", store_id: 1)

bici2 = Bicycle.create( id_bicy: 2, brand_bicy: "Raleigh",
 material_bicy: "aluminio", components_bicy: "marco,rines", price_bicy: 700000,
  usetype_bicy: "montana", description_bicy: "montana", store_id: 1)

bici3 = Bicycle.create( id_bicy: 3, brand_bicy: "DeRosa",
  material_bicy: "fibraCarbono", components_bicy: "todo italia", price_bicy: 4700000,
   usetype_bicy: "ruta", description_bicy: "ruta italia", store_id: 2)

bici4 = Bicycle.create( id_bicy: 4, brand_bicy: "Raleigh",
   material_bicy: "acero", components_bicy: "marco,rines", price_bicy: 450000,
    usetype_bicy: "montana", description_bicy: "montana", store_id: 2)

bici5 = Bicycle.create( id_bicy: 5, brand_bicy: "GW",
    material_bicy: "aluminio", components_bicy: "grupo shimano", price_bicy: 700000,
     usetype_bicy: "ruta", description_bicy: "GW scorpion", store_id: 3)