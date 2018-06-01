#20 registros bicycle
bici1 = Bicycle.create( id_bicy: 1, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "todo gw", price_bicy: 680000,
  usetype_bicy: "montana", description_bicy: "montana", store_id: 1)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici1.id)

bici2 = Bicycle.create( id_bicy: 2, brand_bicy: "raleigh",
  material_bicy: "aluminio", components_bicy: "marco,rines", price_bicy: 700000,
  usetype_bicy: "montana", description_bicy: "montana", store_id: 2)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici2.id)

bici3 = Bicycle.create( id_bicy: 3, brand_bicy: "derosa",
  material_bicy: "fibracarbono", components_bicy: "todo italia", price_bicy: 4700000,
  usetype_bicy: "ruta", description_bicy: "ruta italia", store_id: 3)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici3.id)

bici4 = Bicycle.create( id_bicy: 4, brand_bicy: "raleigh",
  material_bicy: "acero", components_bicy: "marco,rines", price_bicy: 450000,
  usetype_bicy: "montana", description_bicy: "montana", store_id: 3)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici4.id)

bici5 = Bicycle.create( id_bicy: 5, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "grupo shimano", price_bicy: 700000,
  usetype_bicy: "ruta", description_bicy: "GW scorpion", store_id: 4)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici5.id)
  

bici6 = Bicycle.create( id_bicy: 6, brand_bicy: "specialized",
  material_bicy: "fibracarbono", components_bicy: "todo sram", price_bicy: 1500000,
  usetype_bicy: "ruta", description_bicy: "ruta alto lvl", store_id: 4)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici6.id)

bici7 = Bicycle.create( id_bicy: 7, brand_bicy: "trek",
  material_bicy: "fibracarbono", components_bicy: "sram auto", price_bicy: 2100000,
  usetype_bicy: "ruta", description_bicy: "ruta alto lvl", store_id: 5)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici7.id)

bici8 = Bicycle.create( id_bicy: 8, brand_bicy: "specialized",
  material_bicy: "aluminio", components_bicy: "shimano", price_bicy: 750000,
  usetype_bicy: "montana", description_bicy: "mountain", store_id: 5)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici8.id)

bici9 = Bicycle.create( id_bicy: 9, brand_bicy: "gw",
  material_bicy: "acero", components_bicy: "shimano base", price_bicy: 450000,
  usetype_bicy: "montana", description_bicy: "mountain", store_id: 6)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici9.id)

bici10 = Bicycle.create( id_bicy: 10, brand_bicy: "bianchi",
  material_bicy: "acero", components_bicy: "shimano base", price_bicy: 350000,
  usetype_bicy: "montana", description_bicy: "mountain", store_id: 6)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici10.id)

bici11 = Bicycle.create( id_bicy: 11, brand_bicy: "giant",
  material_bicy: "acero", components_bicy: "shimano medio", price_bicy: 650000,
  usetype_bicy: "montana", description_bicy: "mountain", store_id: 7)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici11.id)

bici12 = Bicycle.create( id_bicy: 12, brand_bicy: "gw",
  material_bicy: "acero", components_bicy: "shimano base", price_bicy: 450000,
  usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 7)
  path  = File.join(Rails.root,'public' ,'images','21.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici12.id)

bici13 = Bicycle.create( id_bicy: 13, brand_bicy: "bianchi",
  material_bicy: "acero", components_bicy: "shimano base", price_bicy: 350000,
  usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 8)
  path  = File.join(Rails.root,'public' ,'images','21.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici13.id)

bici14 = Bicycle.create( id_bicy: 14, brand_bicy: "benelli",
  material_bicy: "acero", components_bicy: "shimano base", price_bicy: 390000,
  usetype_bicy: "urbana", description_bicy: "ciudad", store_id: 8)
  path  = File.join(Rails.root,'public' ,'images','21.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici14.id)        

bici15 = Bicycle.create( id_bicy: 15, brand_bicy: "derosa", #nuevos
  material_bicy: "fibracarbono", components_bicy: "sram ultra", price_bicy: 20000000,
  usetype_bicy: "ruta", description_bicy: "ruta competencia", store_id: 9)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici15.id)

bici16 = Bicycle.create( id_bicy: 16, brand_bicy: "specialized",
  material_bicy: "fibracarbono", components_bicy: "shimano ultra", price_bicy: 9000000,
  usetype_bicy: "ruta", description_bicy: "ruta competencia", store_id: 9)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici16.id)

bici17 = Bicycle.create( id_bicy: 17, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 650000,
  usetype_bicy: "montana", description_bicy: "ciudad y urbana", store_id: 10)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici17.id)

bici18 = Bicycle.create( id_bicy: 18, brand_bicy: "trek",
  material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 780000,
  usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici18.id)

bici19 = Bicycle.create( id_bicy: 19, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "shimano medio", price_bicy: 580000,
  usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici19.id)

bici20 = Bicycle.create( id_bicy: 20, brand_bicy: "specialized",
  material_bicy: "aluminio", components_bicy: "shimano alto", price_bicy: 850000,
  usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 10)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici20.id)

bici21 = Bicycle.create( id_bicy: 21, brand_bicy: "gw",
  material_bicy: "acero", components_bicy: "shimano", price_bicy: 100000,
  usetype_bicy: "ruta", description_bicy: "ciudad montana", store_id: 1)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici21.id)

bici22 = Bicycle.create( id_bicy: 22, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "shimano", price_bicy: 100000,
  usetype_bicy: "ruta", description_bicy: "ciudad montana", store_id: 2)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici22.id)

bici23 = Bicycle.create( id_bicy: 23, brand_bicy: "gw",
  material_bicy: "fibracarbono", components_bicy: "shimano", price_bicy: 100000,
  usetype_bicy: "ruta", description_bicy: "ciudad montana", store_id: 3)
  path  = File.join(Rails.root,'public' ,'images','20.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici23.id)

bici24 = Bicycle.create( id_bicy: 24, brand_bicy: "gw",
  material_bicy: "acero", components_bicy: "shimano", price_bicy: 100000,
  usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 4)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici24.id)

bici25 = Bicycle.create( id_bicy: 25, brand_bicy: "gw",
  material_bicy: "aluminio", components_bicy: "shimano", price_bicy: 100000,
  usetype_bicy: "montana", description_bicy: "ciudad montana", store_id: 5)
  path  = File.join(Rails.root,'public' ,'images','22.jpg')
  img = Image.create(name:"bicicleta", this_image: File.new(path, "r") , bicycle_id: bici25.id)

com1 = Component.create(type_component:"V brakes",price_component:50000, 
description_component:"alta calidad",brand_component:"GW",
sizes_component:27,material_component:"aluminio", store_id:1, 
part_of_bike:"frenos",suspension:"de aceite" )
path  = File.join(Rails.root,'public' ,'images','13.jpg')
img = Image.create(name:"frenos", this_image: File.new(path, "r") , component_id: com1.id)


#get seats to urban
com2 = Component.create(type_component:"sillin",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" )
  path  = File.join(Rails.root,'public' ,'images','6.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com2.id)

com3 = Component.create(type_component:"sillin",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" )
  path  = File.join(Rails.root,'public' ,'images','7.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com3.id)

com4 = Component.create(type_component:"sillin",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" )
  path  = File.join(Rails.root,'public' ,'images','8.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com4.id)

#get seats to bmx
com5 = Component.create(type_component:"sillin",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','6.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com5.id)

com6 = Component.create(type_component:"sillin",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','7.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com6.id)

com7 = Component.create(type_component:"antiprostatico",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','8.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com7.id)

#get seats
com8 = Component.create(type_component:"antiprostatico",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','6.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com8.id)

com9 = Component.create(type_component:"antiprostatico",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','7.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com9.id)

com10 = Component.create(type_component:"antiprostatico",price_component:50000, 
  description_component:"alta calidad",brand_component:"specialized",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"sillin",suspension:"" , height: "alta")
  path  = File.join(Rails.root,'public' ,'images','8.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com10.id)

#get handlebar to urban
com11 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40)
  path  = File.join(Rails.root,'public' ,'images','9.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com11.id)

com12 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40)
  path  = File.join(Rails.root,'public' ,'images','24.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com12.id)

com13 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40)
  path  = File.join(Rails.root,'public' ,'images','25.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com13.id)

#get handlebar to mountain
com14 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','9.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com14.id)

com15 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','24.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com15.id)

com16 = Component.create(type_component:"manillar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','25.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com16.id)

#handlebar to road

com17 = Component.create(type_component:"de carretera",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','9.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com17.id)

com18 = Component.create(type_component:"de carretera",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','24.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com18.id)

com19 = Component.create(type_component:"de carretera",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','25.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com19.id)

#handlebar to bmx
com20 = Component.create(type_component:"riser bar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','9.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com20.id)

com21 = Component.create(type_component:"riser bar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','24.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com21.id)

com22 = Component.create(type_component:"riser bar",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"manillar",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','25.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com22.id)

  #fork to mountain
com23 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','26.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com23.id)

com24 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','10.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com24.id)


com25 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','27.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com25.id)

#fork to road

com26 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','26.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com26.id)

com27 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','10.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com27.id)


com28 = Component.create(type_component:"mtb",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"horquilla",suspension:"" , height: "alta",width: 40,strength: "alta")
  path  = File.join(Rails.root,'public' ,'images','27.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com28.id)

#tire to mountain
com29 = Component.create(type_component:"pisteras",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"llantas",suspension:"" , height: "alta",width: 40,strength: "alta",amount_of_relief:"muchos")
  path  = File.join(Rails.root,'public' ,'images','28.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com29.id)

com30 = Component.create(type_component:"pisteras",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"llantas",suspension:"" , height: "alta",width: 40,strength: "alta",amount_of_relief:"muchos")
  path  = File.join(Rails.root,'public' ,'images','11.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com30.id)

com31 = Component.create(type_component:"pisteras",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"llantas",suspension:"" , height: "alta",width: 40,strength: "alta",amount_of_relief:"muchos")
  path  = File.join(Rails.root,'public' ,'images','29.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com31.id)

#wheel to mountain
com32 = Component.create(type_component:"doble pared",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"ruedas",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','12.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com32.id)


com33 = Component.create(type_component:"doble pared",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"ruedas",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','30.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com33.id)


com34 = Component.create(type_component:"doble pared",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"ruedas",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','31.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com34.id)

#brakes mountain
com35 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"frenos",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','13.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com35.id)

com36 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"frenos",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','32.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com36.id)

com37 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"frenos",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26)
  path  = File.join(Rails.root,'public' ,'images','33.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com37.id)

#frame size to mountain m
com38 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"marco",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"")
  path  = File.join(Rails.root,'public' ,'images','14.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com38.id)

  
com39 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"marco",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"")
  path  = File.join(Rails.root,'public' ,'images','34.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com39.id)


com40 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"marco",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"")
  path  = File.join(Rails.root,'public' ,'images','14.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com40.id)

#group mountain

com41 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"grupo mecanico",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"",number_of_changes: 9)
  path  = File.join(Rails.root,'public' ,'images','35.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com41.id)


com42 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"grupo mecanico",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"",number_of_changes: 9)
  path  = File.join(Rails.root,'public' ,'images','36.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com42.id)


com43 = Component.create(type_component:"de disco",price_component:350000, 
  description_component:"alta calidad",brand_component:"trek",
  sizes_component:27,material_component:"aluminio", store_id:1, 
  part_of_bike:"grupo mecanico",suspension:"" , height: "alta",width: 40,strength: "alta",
  amount_of_relief:"muchos",rin: 26,rear_suspension:"",number_of_changes: 9)
  path  = File.join(Rails.root,'public' ,'images','37.jpg')
  img = Image.create(name:"sillin", this_image: File.new(path, "r") , component_id: com43.id)

  