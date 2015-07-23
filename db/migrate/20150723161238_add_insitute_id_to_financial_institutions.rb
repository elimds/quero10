class AddInsituteIdToFinancialInstitutions < ActiveRecord::Migration
  def change
    add_reference :financial_institutions, :institute, index: true, foreign_key: true
  end
end
