class Institute < ActiveRecord::Base
  belongs_to :state
  belongs_to :person
end
