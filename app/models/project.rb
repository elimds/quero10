class Project < ActiveRecord::Base
    belongs_to :department
    belongs_to :category
    belongs_to :great_area
    belongs_to :area
    belongs_to :sub_area
    belongs_to :speciality
    belongs_to :research_group
    belongs_to :financial_institution
    belongs_to :nature_financing
    
    has_many :participants, class_name: :ProjectParticipant
end
