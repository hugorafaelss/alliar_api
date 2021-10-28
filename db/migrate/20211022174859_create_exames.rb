class CreateExames < ActiveRecord::Migration[6.1]
  def change
    create_table :exames do |t|
      t.string :nome
      t.string :tipo
      t.string :status
      t.timestamps
    end
  end
end
