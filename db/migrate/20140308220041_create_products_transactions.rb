class CreateProductsTransactions < ActiveRecord::Migration
  def change
    create_table :products_transactions do |t|
      t.belongs_to :transaction
      t.belongs_to :product

      t.integer :quantity
    end
  end
end
