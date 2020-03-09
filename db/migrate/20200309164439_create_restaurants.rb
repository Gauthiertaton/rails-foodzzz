class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :nom
      t.string :adresse
      t.string :categorie
      t.integer :stock

      t.timestamps
    end
  end
end
