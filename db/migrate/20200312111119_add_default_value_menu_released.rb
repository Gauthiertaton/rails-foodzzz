class AddDefaultValueMenuReleased < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :menu_released, :boolean, default: false
  end
end
