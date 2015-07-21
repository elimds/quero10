class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.integer :codigo
      t.string :titulo
      t.string :descricao
      t.references :sub_area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end