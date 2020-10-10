class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show; end
end
