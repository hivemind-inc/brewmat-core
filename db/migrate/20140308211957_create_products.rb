class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :vendor

      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :shipping_cost, :precision => 8, :scale => 2
      t.float :weight
      t.string :name
      t.text :description
      t.text :tasting_notes
    end
  end
end
