class AddCttEmailToService < ActiveRecord::Migration
  def change
    add_column :services, :ctt_email, :string
  end
end
