class AddImageUrlToPokemonCard < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_cards, :image_url, :string
  end
end
