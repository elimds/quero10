class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :title
      t.text :description
      t.references :great_area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
