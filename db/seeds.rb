# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'italian', phone_number: "555 867 595" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'french', phone_number: "555 867 595" }
ottolenghi =  {name: "Ottolenghi", address: " 2 Upper St, London", category: 'french', phone_number: "555 867 595" }
house_of_momo = {name: "House of Momo", address: " Dalston", category: 'japanese',  phone_number: "555 867 595"}
towpath = {name: "Towpath", address: "canal", category: 'belgian', phone_number: "555 867 595" }

[dishoom, pizza_east, ottolenghi, house_of_momo, towpath].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
