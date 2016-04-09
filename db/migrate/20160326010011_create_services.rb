class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :sup1
      t.string :sup2
      t.string :sup3
      t.string :sup4
      t.string :sup5
      t.string :sup6
      t.string :sup7
      t.string :sup8
      t.string :sup9
      t.string :sup10
      t.integer :pri1
      t.integer :pri2
      t.integer :pri3
      t.integer :pri4
      t.integer :pri5
      t.integer :pri6
      t.integer :pri7
      t.integer :pri8
      t.integer :pri9
      t.integer :pri10
      t.integer :total_sup
      t.string :name
      t.integer :hours
      t.integer :hours_price
      t.decimal :margin
      t.string :img
      t.string :final_price

      t.timestamps null: false
    end
  end
end
