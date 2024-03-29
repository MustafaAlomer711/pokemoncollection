class CreatePokemonCards < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_cards do |t|
      t.string :name
      t.string :artist
      t.references :pokemon_set, null: false, foreign_key: true

      t.timestamps
    end
  end
end
