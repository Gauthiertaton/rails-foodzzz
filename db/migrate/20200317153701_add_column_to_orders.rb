class AddColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :distance_between_restos, :integer
    add_column :orders, :duration, :integer
  end
end
