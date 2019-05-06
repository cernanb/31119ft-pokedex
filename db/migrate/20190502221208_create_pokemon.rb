class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :power
      t.boolean :evolved
    end
  end
end
