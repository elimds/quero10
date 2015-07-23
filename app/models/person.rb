class Person < ActiveRecord::Base
    belongs_to :institute
    has_one :user
end
