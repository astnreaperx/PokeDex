class PokemonController < ApplicationController
  def index
    @pokemons = if params[:search]
                  Pokemon.search(params[:search]).order("created_at ASC").page params[:page]
                else
                  Pokemon.order("pokedexid ASC").page params[:page]
                end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
