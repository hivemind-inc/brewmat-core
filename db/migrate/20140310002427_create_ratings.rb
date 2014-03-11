class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :product
      t.belongs_to :user

      t.integer :rating_number
      t.string  :title
      t.text    :comment
    end
  end
end
