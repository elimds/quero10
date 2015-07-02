class CreateSubAreas < ActiveRecord::Migration
  def change
    create_table :sub_areas do |t|
      t.integer :codigo
      t.string :descricao
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
