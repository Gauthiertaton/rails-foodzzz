class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :nom
      t.text :description
      t.boolean :vegetarien
      t.boolean :vegan
      t.boolean :sans_gluten
      t.boolean :halal
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
