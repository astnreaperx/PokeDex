class RemoveTypeIdFromPokemon < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :type_id, :integer
  end
end
