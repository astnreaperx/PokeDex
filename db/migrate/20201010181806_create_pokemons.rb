class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :pokedexid
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :spattack
      t.integer :spdefense
      t.integer :speed
      t.references :quote, null: false, foreign_key: true

      t.timestamps
    end
  end
end
