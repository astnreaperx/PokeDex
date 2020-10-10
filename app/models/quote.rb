class Quote < ApplicationRecord
  # Only going to have a Quote for each Type i.e Like a Fire Quote and Grass Quote
  has_many :pokemons
end
