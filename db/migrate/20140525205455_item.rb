class Item < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :materials
      t.string :style
      t.integer :views
      t.integer :quantity

      t.timestamps
    end
  end
end
