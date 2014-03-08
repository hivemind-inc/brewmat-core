class CreateTransactionState < ActiveRecord::Migration
  def change
    create_table :transaction_states do |t|
      t.string :description
    end
  end
end
