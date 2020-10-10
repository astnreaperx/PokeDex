class AddTypeIdToPokemon < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :type_id, :string
  end
end
