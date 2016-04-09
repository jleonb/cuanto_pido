class AddCttNameToService < ActiveRecord::Migration
  def change
    add_column :services, :ctt_name, :string
  end
end
