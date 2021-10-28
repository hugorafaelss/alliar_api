class Laboratorio < ApplicationRecord
    enum status: { ativo: "ativo", inativo: "inativo"}
    has_and_belongs_to_many :exames
end
