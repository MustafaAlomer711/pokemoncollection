class AddSetNameToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_cards, :set_name, :string
  end
end
