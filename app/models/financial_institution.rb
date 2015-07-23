class FinancialInstitution < ActiveRecord::Base
  belongs_to :state
  belongs_to :person
  belongs_to :institute
end
