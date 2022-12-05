class CreatePokemonSets < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_sets do |t|
      t.string :name
      t.string :series

      t.timestamps
    end
  end
end
