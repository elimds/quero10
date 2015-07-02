class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :codigo
      t.string :descricao

      t.timestamps null: false
    end
  end
end
