class CreateProductType < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.belongs_to :product

      t.string :description
    end
  end
end
