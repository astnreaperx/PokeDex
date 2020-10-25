class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    @pokemons = if params[:search]
                  Pokemon.search(params[:search]).order("created_at ASC")
                else
                  Pokemon.all.order("pokedexid ASC")
                end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
