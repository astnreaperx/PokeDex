class Type < ApplicationRecord
  # has_and_belongs_to_many :pokemons
  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types
end
