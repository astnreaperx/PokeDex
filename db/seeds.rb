# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.delete_all
Quote.delete_all
Type.delete_all

quote = Quote.create(quote: "Test", author: "asd")

file = File.join(Rails.root, "db", "pokedex.json")
data = File.read(file)

pokedex = JSON.parse(data)

pokedex.each do |pokemon|
  puts pokemon["name"]["english"]
  puts "***#{pokemon['type'].first}"

  type = Type.find_or_create_by(
    name: pokemon["type"].first
  )
  if type.valid?
    pokemon = type.pokemons.create(
      name:      pokemon["name"]["english"],
      pokedexid: pokemon["id"],
      hp:        pokemon["base"]["HP"],
      attack:    pokemon["base"]["Attack"],
      defense:   pokemon["base"]["Defense"],
      spattack:  pokemon["base"]["Sp. Attack"],
      spdefense: pokemon["base"]["Sp. Defense"],
      speed:     pokemon["base"]["Speed"],
      quote:     quote
    )
    puts pokemon.errors.messages
  else
    puts "Could not create #{pokemon['name']['english']}"
  end
end
puts Pokemon.count
puts Type.count
