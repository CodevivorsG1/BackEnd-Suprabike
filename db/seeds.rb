# This file should contain all the record creation needed to seed the database with its default values.
 #The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

 #Examples:

 #  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #  Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'started loading  data'
20.times do |row|

    city = City.create(idcity:Faker::Number.number(3),name_city: Faker::Address.city)
   
    store = Store.create(
        id_store: Faker::Number.number(6),
        name_store:Faker::Name.name,
        address_store:Faker::Address.street_address,
        email:Faker::Internet.unique.email,
        score_store: Faker::Number.number(1),
        password:Faker::Internet.password(8)  ,
        phonenum_store:Faker::PhoneNumber.phone_number ,
        celphone_store: Faker::PhoneNumber.cell_phone,
        city_id = city.id
    )

    user = User.create(
        idUser: Faker::Number.number(6),
        nameUser:Faker::Name.first_name  ,
        surnameUser:Faker::Name.last_name ,
        genderUser: "male",
        emailUser:Faker::Internet.unique.email ,
        passwordUser:Faker::Internet.password(8) ,
        phonenumUser:Faker::PhoneNumber.phone_number ,
        celphoneUser:Faker::PhoneNumber.cell_phone 
    )

    techni = Technician.create(
        id_technical:Faker::Number.number(6) ,
        NameTec:Faker::Name.first_name  ,
        SurnameTec:Faker::Name.last_name ,
        typeworktec:Faker::Job.field ,
        email:Faker::Internet.email ,
        costhourtec: Faker::Number.decimal(2),
        password:Faker::Name.first_name ,
        phonenumtec:Faker::PhoneNumber.phone_number 
    )

    bici = Bicycle.create(
        id_bicy: Faker::Number.number(6),
        brand_bicy: Faker::Vehicle.manufacture,
        material_bicy: Faker::Beer.hop,
        components_bicy: Faker::Cat.name,
        price_bicy: Faker::Number.decimal(2),
        usetype_bicy: Faker::Friends.character,
        description_bicy: Faker::Friends.quote
        store_id = store.id
    )

    forum = Forum.create(
        topic:Faker::Vehicle.manufacture,
        user_id = user.id
    )

    comment = Comment.create(
        description: Faker::Book.genre,
        forum_id = forum.id
        user_id = user.id
    )

    component = Component.create(
        type_component:Faker::Name.name ,
        price_component:Faker::Number.decimal(2) ,
        description_component:Faker::Commerce.material ,
        brand_component:Faker::Vehicle.manufacture ,
        sizes_component:Faker::Number.decimal(2) ,
        material_component:Faker::Name.name
        
    )

    transaction = Transaction.create(
        date_transaction:Faker::Date.between(2.days.ago, Date.today),
        type_transaction:Faker::Job.field ,
        total_transaction:Faker::Number.decimal(2) 
    )

end
puts 'finished loading  data'

#Registros a mano

city1 = City.create(idcity: 1, name_city: "Bogota")
city2 = City.create(idcity: 2, name_city: "Medellin")
city3 = City.create(idcity: 3, name_city: "Cali")
city4 = City.create(idcity: 4, name_city: "Barranquilla")
city5 = City.create(idcity: 5, name_city: "Cucuta")
   

store1 = Store.create(id_store:1, name_store:"bikeshop", address_store:"cra100",
         score_store:4, phonenum_store:1, celphone_store:1,city_id:1, email:"bs@u.com",
         password:"111" )



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