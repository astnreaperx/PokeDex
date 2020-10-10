# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.delete_all
Quote.delete_all

quote = Quote.create(quote: "Test", author: "asd")
Pokemon.create(name: "Bulbasaur", pokedexid: 1, hp: 100, attack: 5, defense: 5, spattack: 5, spdefense: 5, speed: 5, quote: quote)

puts Pokemon.count
puts Quote.count
