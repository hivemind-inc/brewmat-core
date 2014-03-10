class CreateProductRatings < ActiveRecord::Migration
  def change
    create_table :product_ratings do |t|
      t.belongs_to :product
      t.belongs_to :user

      t.integer :rating_number
      t.string  :title
      t.text    :comment
    end
  end
end
