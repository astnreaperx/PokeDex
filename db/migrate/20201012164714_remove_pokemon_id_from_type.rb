class RemovePokemonIdFromType < ActiveRecord::Migration[6.0]
  def change
    remove_column :types, :pokemon_id, :integer
  end
end
