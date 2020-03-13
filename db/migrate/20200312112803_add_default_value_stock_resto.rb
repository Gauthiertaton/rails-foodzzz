class AddDefaultValueStockResto < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :stock, :integer, default: 0
  end
end
