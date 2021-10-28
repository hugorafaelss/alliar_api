class AddDefaultStatus < ActiveRecord::Migration[6.1]
  def up
    change_column_default :laboratorios, :status, :ativo
    change_column_default :exames, :status, :ativo
  end
  def down
    change_column_default :laboratorios, :status, nil
    change_column_default :exames, :status, nil
  end
end
