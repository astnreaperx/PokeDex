class Type < ApplicationRecord
  # has_and_belongs_to_many :pokemons
  has_many :pokemons
  has_many :pokemons, through: :pokemons_types
end
