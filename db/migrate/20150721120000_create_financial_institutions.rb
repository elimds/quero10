class CreateFinancialInstitutions < ActiveRecord::Migration
  def change
    create_table :financial_institutions do |t|
      t.string :name
      t.string :address
      t.string :number
      t.string :district
      t.string :city
      t.references :state, index: true, foreign_key: true
      t.string :zip_code
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
