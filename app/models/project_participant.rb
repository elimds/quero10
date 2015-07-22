class ProjectParticipant < ActiveRecord::Base
    belongs_to :project
    belongs_to :person
    enum role: { Coordenador: 0, Adjunto: 1, Colaborador: 2 }
    
end
