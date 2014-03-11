class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.belongs_to :user

      t.string :url
      t.string :name
    end
  end
end
