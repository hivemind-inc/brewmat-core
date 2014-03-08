class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :shapping_cost, :precision => 8, :scale => 2
      t.float :weight
      t.integer :manufacturer_id
      t.integer :type
      t.string :description
      t.string :name
      t.string :tasting_notes
    end
  end
end
