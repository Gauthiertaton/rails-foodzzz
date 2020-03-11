class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :restaurants, :nom, :name
      rename_column :restaurants, :categorie, :category
      rename_column :restaurants, :adresse, :address
      rename_column :menus, :nom, :name
  end
end
