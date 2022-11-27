# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding database..."
  restaurants  = Restaurant.create(  [
      { name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201" },
      { name: "PizzArte", address: "69 W 55th St, New York, NY 10019" },
  ]
)

  pizza  = Pizza.create(  [
      { name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese"},
      { name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"},
  ]
)

restaurant_pizzas  = RestaurantPizza.create(  [
  { price: 5, pizza_id: 1, restaurant_id: 3},
  { price: 6, pizza_id: 2, restaurant_id: 4},
  { price: 7, pizza_id: 3, restaurant_id: 5}
]
)
puts "Done Seeding"
