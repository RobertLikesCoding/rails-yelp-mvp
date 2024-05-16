# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting all current restaurants..."
Restaurant.destroy_all

puts "Repopulating with new entries..."

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 5, category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 5564684, category: "italian"}
indiana_bones =  {name: "Indiana Bones", address: "5A Hügelweg, Haushausen", phone_number: 11246677, category: "belgian"}
leckerei_brei =  {name: "Leckerei Brei", address: "Markstraße 23,Zossen", phone_number: 5668898, category: "french"}
soba_noodles =  {name: "Soba Noodles", address: "Kantstraße 432, Belrin", phone_number: 11111115, category: "japanese"}

[dishoom, pizza_east, indiana_bones, leckerei_brei, soba_noodles].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
