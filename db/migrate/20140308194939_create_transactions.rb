class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :user, null: false

      t.decimal :price, :precision => 8, :scale => 2
      t.integer :state_id, null: false
    end
  end
end
