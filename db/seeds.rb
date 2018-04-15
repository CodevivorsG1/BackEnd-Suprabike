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


end
puts 'finished loading  data'