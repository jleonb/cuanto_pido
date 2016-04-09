class AddCttPhoneToService < ActiveRecord::Migration
  def change
    add_column :services, :ctt_phone, :string
  end
end
