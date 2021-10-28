class UniqueAssociation < ActiveRecord::Migration[6.1]
  def change
    add_index :exames_laboratorios, [:exame_id, :laboratorio_id], unique: true
  end
end
