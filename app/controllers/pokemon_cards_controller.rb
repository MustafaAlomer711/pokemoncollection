class PokemonCardsController < ApplicationController

  def index
    @pokemon_cards = PokemonCard.where(pokemon_set_id: params[:pokemon_set_id])
  end

  def show
    @pokemon_card = PokemonCard.find(params[:id])
  end
end
