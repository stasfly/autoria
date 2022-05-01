# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Stas", email: "stas@stas.com",
              password: "qwerty", password_confirmation: "qwerty", admin: true)

#Generate a bunch of additional users
10.times do |n|
  name = Faker::Name.name
  email = "user_#{n + 1}@example.com"
  password = "qwerty"
  User.create(name: name, email: email, password: password, 
              password_confirmation: password)
end

20.times do |n|
  brand        = Faker::Vehicle.make
  model        = Faker::Vehicle.model(make_of_model: brand)
  age          = Faker::Vehicle.year
  engine       = Faker::Vehicle.fuel_type
  color        = Faker::Vehicle.color
  vehicle_type = Faker::Vehicle.car_type
  price        = rand(5..500)*100
  description  = "Vehicle worth of #{price}$"
  price > 30000 ? condition = "New vehicle" : condition = "Beein in use"
  Car.create(brand: brand, model: model, age: age, engine: engine, color: color, 
             vehicle_type: vehicle_type, price: price, description: description, 
             condition: condition)
end

15.times do |n|
  user_id = rand(1..10)
  car_id  = n + 2
  Car.find(car_id).price > 2000 ? purpose = "sale" : purpose = "rent"
  rand(2) == 1 ? location = "Lviv" : location = "Ivano-Frankivsk"
  rand(2) == 1 ? hot_sale = true   : hot_sale = false
  Announcement.create(user_id: user_id, car_id: car_id, purpose: purpose, 
                      location: location, rating: 0, ban: 0, hot_sale: hot_sale)
end
