class CreateCategoriesUsersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :exames, :laboratorios
  end
end
