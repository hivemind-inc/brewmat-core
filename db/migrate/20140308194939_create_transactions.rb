class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :transaction_state
      t.belongs_to :user

      t.decimal :price, :precision => 8, :scale => 2
    end
  end
end
