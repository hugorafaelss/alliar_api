class CreateLaboratorios < ActiveRecord::Migration[6.1]
  def change
    create_table :laboratorios do |t|
      t.string :nome
      t.string :endereco
      t.string :status

      t.timestamps
    end
  end
end
