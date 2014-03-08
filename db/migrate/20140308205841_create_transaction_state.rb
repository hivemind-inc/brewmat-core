class CreateTransactionState < ActiveRecord::Migration
  def change
    create_table :transaction_states do |t|
      t.belongs_to :transaction
      t.string :description
    end
  end
end
