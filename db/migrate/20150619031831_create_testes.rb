class CreateTestes < ActiveRecord::Migration
  def change
    create_table :testes do |t|
      t.integer :codigo
      t.string :nome

      t.timestamps null: false
    end
  end
end
