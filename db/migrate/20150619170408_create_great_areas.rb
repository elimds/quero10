class CreateGreatAreas < ActiveRecord::Migration
  def change
    create_table :great_areas do |t|
      t.integer :codigo
      t.string :titulo
      t.string :descricao

      t.timestamps null: false
    end
  end
end
