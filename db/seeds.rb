# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

PokemonType.delete_all
Pokemon.delete_all
Quote.delete_all
Type.delete_all

file = File.join(Rails.root, "db", "pokedex.json")
data = File.read(file)
pokedex = JSON.parse(data)

pokedex.each do |pokemon|
  puts pokemon["name"]["english"]
  puts "*** #{pokemon['type'].first}"

  authors = ["guild_navigator", "emperor", "paul", "thufir", "jessica", "irulan", "mohiam", "gurney", "leto", "stilgar", "liet_kynes", "pardot_kynes", "baron_harkonnen", "piter", "alia", "mapes", "duncan", "yueh"]
  author = authors.sample
  puts author
  quote = Quote.find_or_create_by(quote: Faker::Books::Dune.quote(character: author), author: author)

  poke = quote.pokemons.create(
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

  types = pokemon["type"]
  types.each do |t|
    type = Type.find_or_create_by(name: t)
    PokemonType.create(pokemon: poke, type: type)
    puts type
  end
end
puts Pokemon.count
puts Type.count
puts PokemonType.count

# pokedex.each do |pokemon|
#   puts pokemon["name"]["english"]
#   puts "***#{pokemon['type'].first}"
#
#   type = Type.find_or_create_by(
#     name: pokemon["type"].first
#   )
#   puts "Type Created"
#   if type.valid?
#     puts "Type is Valid"
#     pokemon = type.pokemons.create(
#       name:      pokemon["name"]["english"],
#       pokedexid: pokemon["id"],
#       hp:        pokemon["base"]["HP"],
#       attack:    pokemon["base"]["Attack"],
#       defense:   pokemon["base"]["Defense"],
#       spattack:  pokemon["base"]["Sp. Attack"],
#       spdefense: pokemon["base"]["Sp. Defense"],
#       speed:     pokemon["base"]["Speed"],
#       quote:     quote
#     )
#     puts pokemon.errors.messages
#   else
#     puts "Could not create #{pokemon['name']['english']}"
#   end
# end
# puts Pokemon.count
# puts Type.count
