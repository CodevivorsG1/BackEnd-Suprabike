# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'started loading  data'
100.times do |row|
    

    city=City.new
    city.idcity= Faker::Number.number(3)
    city.name_city= Faker::Address.city
    city.save

    store=Store.new
    store.id_store= Faker::Number.number(6)
    store.name_store=Faker::Name.name
    store.address_store=Faker::Address.street_address
    store.email_store=Faker::Internet.email
    store.dateregis_store=Faker::Date.between(2.days.ago, Date.today) 
    store.score_store= Faker::Number.number(1)
    store.password_store=Faker::Name.name 
    store.phonenum_store=Faker::PhoneNumber.phone_number 
    store.celphone_store= Faker::PhoneNumber.cell_phone
    store.city=city
    store.save

    user=User.new
    user.idUser= Faker::Number.number(6)
    user.nameUser= Faker::Name.first_name  
    user.surnameUser= Faker::Name.last_name 
    user.genderUser=  "male"
    user.emailUser= Faker::Internet.email 
    user.passwordUser= Faker::Name.first_name 
    user.phonenumUser= Faker::PhoneNumber.phone_number 
    user.celphoneUser= Faker::PhoneNumber.cell_phone
    user.city=city
    user.save
    
    bicycle=Bicycle.new
    bicycle.id_bicy = Faker::Number.number(6)
    bicycle.brand_bicy= Faker::Vehicle.manufacture
    bicycle.material_bicy= Faker::Beer.hop
    bicycle.components_bicy= Faker::Cat.name
    bicycle.price_bicy= Faker::Number.decimal(2)
    bicycle.usetype_bicy= Faker::Friends.character
    bicycle.description_bicy= Faker::Friends.quote
    bicycle.store= store
    bicycle.save

    component =Component.new
    component.type_component=Faker::Name.name 
    component.price_component=Faker::Number.decimal(2) 
    component.description_component=Faker::Commerce.material 
    component.brand_component=Faker::Vehicle.manufacture 
    component.sizes_component=Faker::Number.decimal(2) 
    component.material_component=Faker::Name.name
    component.store=store
    component.save

    forum =Forum.new
    forum.topic= Faker::Job.field 
    forum.user= user
    forum.save

    comment =Comment.new
    comment.description= Faker::Book.genre
    comment.forum=forum
    comment.user= user
    comment.save

    
    technician = Technician.new
    technician.id_technical= Faker::Number.number(6) 
    technician.NameTec= Faker::Name.first_name  
    technician.SurnameTec= Faker::Name.last_name 
    technician.typeworktec= Faker::Job.field 
    technician.emailtec= Faker::Internet.email 
    technician.costhourtec= Faker::Number.decimal(2)
    technician.passwordtec= Faker::Name.first_name 
    technician.phonenumtec= Faker::PhoneNumber.phone_number 
    technician.save

    transaction= Transaction.new
    transaction.date_transaction= Faker::Date.between(2.days.ago, Date.today)
    transaction.type_transaction= Faker::Job.field 
    transaction.total_transaction= Faker::Number.decimal(2) 
    transaction.user=user
    transaction.store=store
    transaction.save


end
puts 'finished loading  data'

