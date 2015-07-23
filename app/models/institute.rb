class Institute < ActiveRecord::Base
  has_many :people
  belongs_to :state
  belongs_to :person
  has_many :financial_institutions
  has_many :projects
  has_many :categories
  has_many :nature_financings
  has_many :departments
end
