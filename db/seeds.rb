# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Van.destroy_all
User.destroy_all
require "open-uri"


mael = User.create!( first_name: 'Mael', last_name: 'Micout', email: 'mael124@gmail.com', password: 'Lewagon906', owner: true)
User.create!( first_name: 'Denis', last_name: 'deav', email: 'denis124@gmail.com', password: 'Lewagon906', owner: false)

file1 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg')
van1 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/07/sportsmobile-four-by-four-09-759x500.jpg", title:'Mercedes Sprinter', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 100)
van1.photos.attach(io: file1, filename: 'nes1.png', content_type: 'image/png')

file2 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/07/Screen-Shot-2018-07-04-at-20.13.12.png')
van2 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/07/Screen-Shot-2018-07-04-at-20.13.12.png", title:'VW Bus', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 200)
van2.photos.attach(io: file2, filename: 'nes2.png', content_type: 'image/png')

file3 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/11/Screen-Shot-2018-11-04-at-14.10.57.png')
van3 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/11/Screen-Shot-2018-11-04-at-14.10.57.png", title:'Vauxhall Movano', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 150)
van3.photos.attach(io: file3, filename: 'nes3.png', content_type: 'image/png')

file4 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/02/vw-crafter-atacama-4wd-an-all-off-road-campervan-2.jpg')
van4 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/02/vw-crafter-atacama-4wd-an-all-off-road-campervan-2.jpg", title:'VW Crafter', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 110)
van4.photos.attach(io: file4, filename: 'nes4.png', content_type: 'image/png')

file5 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/05/nintchdbpict0003334534451-759x500.jpg')
van5 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/05/nintchdbpict0003334534451-759x500.jpg", title:'Ford Transit', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 120)
van5.photos.attach(io: file5, filename: 'nes5.png', content_type: 'image/png')

file6 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/09/Screen-Shot-2018-09-29-at-16.10.12-1024x682.png')
van6 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/09/Screen-Shot-2018-09-29-at-16.10.12-1024x682.png", title:'School Bus', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 130)
van6.photos.attach(io: file6, filename: 'nes6.png', content_type: 'image/png')

file7 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/09/Screen-Shot-2018-09-08-at-11.48.20-1024x682.png')
van7 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/09/Screen-Shot-2018-09-08-at-11.48.20-1024x682.png", title:'Renault Trafic', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 140)
van7.photos.attach(io: file7, filename: 'nes7.png', content_type: 'image/png')

file8 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2017/10/Knaus-Saint-sinner-VW-1.jpg')
van8 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2017/10/Knaus-Saint-sinner-VW-1.jpg", title:'Knaus Boxdrive CUV', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 135)
van8.photos.attach(io: file8, filename: 'nes8.png', content_type: 'image/png')

file9 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/08/citroen-type-h-wildcamp-camper-759x500.jpg')
van9 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/08/citroen-type-h-wildcamp-camper-759x500.jpg", title:'Citroen WildCamp', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 125)
van9.photos.attach(io: file9, filename: 'nes9.png', content_type: 'image/png')

file10 = URI.open('https://cdn.vanclan.co/wp-content/uploads/2018/10/FourWheelsCamperThumb2-759x500.jpg')
van10 = Van.create!( user_id: mael.id, address:"Dam, Amsterdam", image_link: "https://cdn.vanclan.co/wp-content/uploads/2018/10/FourWheelsCamperThumb2-759x500.jpg", title:'Four Wheel Campers', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nascetur ridiculus mus mauris vitae. Pellentesque diam volutpat commodo sed egestas. Sed elementum tempus egestas sed sed. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla.', available: true, price_per_day: 115)
van10.photos.attach(io: file10, filename: 'nes10.png', content_type: 'image/png')
