class CreateNaturefinancings < ActiveRecord::Migration
  def change
    create_table :naturefinancings do |t|
      t.integer :codigo
      t.string :descricao

      t.timestamps null: false
    end
  end
end
