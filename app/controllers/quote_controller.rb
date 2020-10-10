class QuoteController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show; end
end
