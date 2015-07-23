class Person < ActiveRecord::Base
    belongs_to :institute
    has_one :user
    enum category: { "Docente" =>  0, "Discente" => 1, "Técnico-Administrativo" => 2, "Externo" => 3 }
end
