class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :user

      t.integer :user_id, null: false
      t.integer :state_id, null: false
    end
  end
end
