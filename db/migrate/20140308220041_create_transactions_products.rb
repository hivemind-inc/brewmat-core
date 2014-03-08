class CreateTransactionsProducts < ActiveRecord::Migration
  def change
    create_table :transactions_products do |t|
      t.belongs_to :transaction
      t.belongs_to :product
      t.integer :quantity
    end
  end
end
