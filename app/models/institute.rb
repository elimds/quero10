class Institute < ActiveRecord::Base
  has_many :people
  belongs_to :state
  belongs_to :person
end
