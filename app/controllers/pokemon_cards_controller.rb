class PokemonCardsController < ApplicationController
  before_action :set_pokemon_card, only: [:show]

  def index
    @pokemon_cards = PokemonCard.where(pokemon_set_id: params[:pokemon_set_id])
  end

  def show
  end

  def new
    @pokemon_card = PokemonCard.new
  end

  private

  def pokemon_card_params
    params.require(:pokemon_card).permit(:name, :pokemon_set_id, :artist, :image_url)
  end

  def set_pokemon_card
    @pokemon_card = PokemonCard.find(params[:id])
  end
end
