# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create( first_name: 'Mael', last_name: 'Micout', email: 'micoutmael3@gmail.com', password: 'Lewagon906', owner: true)
 User.create( first_name: 'Denis', last_name: 'deav', email: 'denis@gmail.com', password: 'Lewagon906', owner: false)

 Van.create( user_id: 1, descritpion:'', available: true, price_per_day: 100)
