class PokemonSetsController < ApplicationController

  def index
    @sets = PokemonSet.all
  end

  def show
    @set = PokemonSet.find(params[:id])
    redirect_to pokemon_set_pokemon_cards_path(@set)
  end
end
