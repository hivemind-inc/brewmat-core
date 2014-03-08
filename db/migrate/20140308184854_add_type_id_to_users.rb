class AddTypeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type_id, :integer, default: 0, null: false
  end
end
