class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user

      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :address_extra
      t.integer :zipcode, limit: 5
      t.string :city
      t.string :state
      t.string :country
    end
  end
end
