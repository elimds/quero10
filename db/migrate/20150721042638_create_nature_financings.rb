class CreateNatureFinancings < ActiveRecord::Migration
  def change
    create_table :nature_financings do |t|
      t.string :title
      t.text :description
      t.references :institute, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
