class Department < ActiveRecord::Base
  belongs_to :institute
  belongs_to :person
end
