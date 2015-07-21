class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.references :department
      t.date :date_start
      t.date :date_end
      t.string :keywords
      t.string :email
      t.references :category
      t.references :great_area
      t.references :area
      t.references :sub_area
      t.references :speciality
      t.references :research_group
      t.string :short_description
      t.string :introduction
      t.string :gols
      t.string :methodology
      t.string :references
      t.references :financial_institution
      t.references :nature_financing
      t.date :date_start_financing
      t.date :date_end_financing
      t.string :description_estimate
      t.string :value_estimate

      t.timestamps null: false
    end
  end
end
