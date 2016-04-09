class AddDispatchToService < ActiveRecord::Migration
  def change
    add_column :services, :dispatch, :integer
  end
end
