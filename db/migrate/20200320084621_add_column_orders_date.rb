class AddColumnOrdersDate < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :creation_date, :date
  end
end
