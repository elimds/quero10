class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :title
      t.text :description
      t.references :sub_area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
