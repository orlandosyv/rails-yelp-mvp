# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone: '111-222-333', category: 'belgian' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone: '444-222-333', category: 'french'  }
tanta =  { name: "tanta", address: "miraflores", phone: '9899-222-333', category: 'japanese'  }
mama_mia =  { name: "Mama mia", address: "italia", phone: '555-222-333', category: 'italian'  }
ni_hao =  { name: "Ni Hao", address: "china", phone: '888-222-333', category: 'chinese'  }

[ dishoom, pizza_east, tanta, mama_mia, ni_hao ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"