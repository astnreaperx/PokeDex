class AddPokemonIdToTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :types, :pokemon_id, :string
  end
end
