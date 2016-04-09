class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :img
      t.string :name
      t.text :description
      t.integer :price
      t.string :brand
      t.string :model
      t.float :sn1
      t.float :sn2
      t.float :bc1
      t.float :bc2

      t.timestamps null: false
    end
  end
end
