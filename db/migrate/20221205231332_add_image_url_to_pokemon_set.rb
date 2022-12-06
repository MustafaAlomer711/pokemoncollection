class AddImageUrlToPokemonSet < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_sets, :image_url, :string
  end
end
