class PagesController < ApplicationController
  def about; end

  def home
    @pokemons = Pokemon.all
    @types = Type.all
    @quotes = Quote.all
  end
end
