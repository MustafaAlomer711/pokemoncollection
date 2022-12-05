class PokemonSet < ApplicationRecord
  has_many :pokemon_cards, dependent: :destroy
end
