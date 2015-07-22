class Activity < ActiveRecord::Base
  belongs_to :project
  belongs_to :responsible, class_name: "Person"
  enum situation: { pendente: 0, andamento: 1, concluida: 2 }
end
