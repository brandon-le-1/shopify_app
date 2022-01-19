# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.destroy_all
Item.create(name: "Apple", quantity: 2, description: 'Red', price: 1.19)
Item.create(name: "Banana", quantity: 4, description: 'Yellow', price: 0.79)
Item.create(name: "Shampoo", quantity: 21, description: 'Clean hair', price: 10.99)
Item.create(name: "Pencil", quantity: 114, description: 'Yellow writing stick', price: 0.32)


