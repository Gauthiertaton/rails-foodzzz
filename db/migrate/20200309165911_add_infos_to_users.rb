class AddInfosToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :menu_released, :boolean
    add_reference :users, :restaurant, foreign_key: true
  end
end
