class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :string, default: 'plebeian', null: false
  end
end
