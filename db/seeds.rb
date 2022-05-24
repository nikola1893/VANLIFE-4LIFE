# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Van.destroy_all
User.destroy_all

 mael = User.create!( first_name: 'Mael', last_name: 'Micout', email: 'mael124@gmail.com', password: 'Lewagon906', owner: true)
 User.create!( first_name: 'Denis', last_name: 'deav', email: 'denis124@gmail.com', password: 'Lewagon906', owner: false)

 Van.create!( user_id: mael.id, title:'Vans 1', description:'', available: true, price_per_day: 100)
 Van.create!( user_id: mael.id, title:'Van 2', description:'', available: true, price_per_day: 200)
 Van.create!( user_id: mael.id, title:'Van 3', description:'', available: true, price_per_day: 150)
 Van.create!( user_id: mael.id, title:'Van 4', description:'', available: true, price_per_day: 110)
 Van.create!( user_id: mael.id, title:'Van 5', description:'', available: true, price_per_day: 120)
 Van.create!( user_id: mael.id, title:'Van 6', description:'', available: true, price_per_day: 130)
 Van.create!( user_id: mael.id, title:'Van 7', description:'', available: true, price_per_day: 140)
 Van.create!( user_id: mael.id, title:'Van 8', description:'', available: true, price_per_day: 135)
 Van.create!( user_id: mael.id, title:'Van 9', description:'', available: true, price_per_day: 125)
 Van.create!( user_id: mael.id, title:'Van 10', description:'', available: true, price_per_day: 115)
