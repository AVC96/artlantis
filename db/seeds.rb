Art.destroy_all
User.destroy_all

user = User.create!(email: "mahu@gmail.com", password: "123456")
Art.create!(cost: 10, location: "London", description: "molly's artwork", user: user)
Art.create!(cost: 10, location: "Paris", description: "Johnny's artwork", user: user)
Art.create!(cost: 10, location: "New York", description: "Bella's artwork", user: user)
Art.create!(cost: 10, location: "Rome", description: "Rajith's artwork", user: user)
Art.create!(cost: 10, location: "Barcelona", description: "audrey's artwork", user: user)
Art.create!(cost: 10, location: "Hong Kong", description: "Bob's artwork", user: user)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# molly made a change
