class Exame < ApplicationRecord
    enum tipo: {analiseClinica: 'analise clinica', imagem: 'imagem'}
    enum status: {ativo: 'ativo', inativo: 'inativo'}
    has_and_belongs_to_many :laboratorios
end
