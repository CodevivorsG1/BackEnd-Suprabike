from random import randint
# == Schema Information
#
# Table name: components
#
#  id                    :integer          not null, primary key
#  type_component        :string parte
#  price_component       :float
#  description_component :string parte
#  brand_component       :string
#  sizes_component       :float
#  material_component    :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  store_id              :integer
#  part_of_bike          :string
#  strength              :string
#  length                :float
#  height                :string
#  suspension            :string
#  width                 :float
#  amount_of_relief      :string
#  rin                   :integer
#  profile               :string
#  frame_size            :float
#  rear_suspension       :string
#  number_of_changes     :integer
#  num_plates            :integer
#  num_dish_teeth        :integer
#
parte = ["sillin", "manillar", "horquilla", "llantas", "ruedas", "marco","frenos"]

marcas = ["gw", "derosa", "specialized", "trek", "giant", "benelli", "bianchi","raleigh"]

material = ["acero", "aluminio", "fibracarbono"]

##############urbana
#sillines
for i in range(21, 100):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"sillin"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"sillin"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"sillin"+'"'+",suspension:"+ '"'+"si"+'"'
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','6.jpg')"
    img = "img = Image.create(name:"+'"'+"sillin"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#manillar
for i in range(100, 200):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"manillar"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"manillar"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"manillar"+'"'+",height:"+'"'+"alta"+'"'+",width:"+str(40)
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','9.jpg')"
    img = "img = Image.create(name:"+'"'+"manillar"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)
    
#horquilla  
for i in range(200, 300):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"sencillo"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"horquilla"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"horquilla"+'"'+",suspension:"+ '"'+"si"+'"'
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','10.jpg')"
    img = "img = Image.create(name:"+'"'+"horquilla"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#llantas 
for i in range(300, 400):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"pistera"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"llantas"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+"caucho"+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"llantas"+'"'+", amount_of_relief:"+'"'+"pocos"+'"'
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','11.jpg')"
    img = "img = Image.create(name:"+'"'+"llantas"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#ruedas
for i in range(400, 500):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"ruedas"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"ruedas"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"ruedas"+'"'+",rin:"+ str(randint(26,28))
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','12.jpg')"
    img = "img = Image.create(name:"+'"'+"ruedas"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#frenos
for i in range(500, 600):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"vbrakes"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"frenos"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"frenos"+'"'
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','13.jpg')"
    img = "img = Image.create(name:"+'"'+"frenos"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#marco
for i in range(600, 700):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"marco"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"marco"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"marco"+'"'+",frame_size: 20"
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','14.jpg')"
    img = "img = Image.create(name:"+'"'+"marco"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)

#grupo
for i in range(700, 800):
    marcasrand = randint(0,len(marcas)-1)
    materialrand = randint(0,len(material)-1)
    randstore = randint(1,10)

    cadena1 = "com"+str(i)+" = Component.create(type_component:"+ '"'+"sillin"+'"'+",price_component:"
    cadena2 = str(randint(20,800000))
    cadena3 = ", description_component:"+'"'+"grupo"+'"'+" ,brand_component:"
    cadena4 = '"'+str(marcas[marcasrand])+'"'
    cadena5 = ", sizes_component:27"
    cadena6 = ",material_component:"+'"'+str(material[materialrand])+'"'
    cadena7 = ", store_id:"+str(randstore)
    cadena8 = ", part_of_bike:"+'"'+"grupo"+'"'+",number_of_changes: 7, num_plates: 2, num_dish_teeth: 42"
    salida = cadena1+cadena2+cadena3+cadena4+cadena5+cadena6+cadena7+cadena8+")"
    path = "path  = File.join(Rails.root,'public' ,'images','6.jpg')"
    img = "img = Image.create(name:"+'"'+"sillin"+'"'+", this_image: File.new(path, '"'r'"') , component_id: com1.id)"

    print(salida)
    print(path)
    print(img)