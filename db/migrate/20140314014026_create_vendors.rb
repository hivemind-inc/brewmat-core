class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.belongs_to :user
      t.string :city
      t.string :state
      t.string :name
      t.string :url
      t.timestamp
    end
  end
end
