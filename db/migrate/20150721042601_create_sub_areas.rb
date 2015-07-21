class CreateSubAreas < ActiveRecord::Migration
  def change
    create_table :sub_areas do |t|
      t.string :title
      t.text :description
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
