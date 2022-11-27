# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding database..."
  restaurants  = Restaurant.create(  [
      { name: "Restaurant1", address: "Embakasi" },
      { name: "Restaurant2", address: "Langata" },
      { name: "Restaurant3", address: "Langata" }
  ]
)

  pizza  = Pizza.create(  [
      { name: "Hawaiian", ingredients: "Mushrooms"},
      { name: "BBQ", ingredients: "Cheese"},
      { name: "Tikka", ingredients: "Chicken"}
  ]
)
puts "Done Seeding"
