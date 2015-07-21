class ResearchGroup < ActiveRecord::Base
    belongs_to :area
    belongs_to :sub_area
    enum status: { pendente: 0, aprovado: 1, concluido: 2 }
end
