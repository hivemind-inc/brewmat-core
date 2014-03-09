class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :url
    end
  end
end
